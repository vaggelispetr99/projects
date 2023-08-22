#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "bf.h"
#include "ht_table.h"
#include "record.h"

#define CALL_BF(call)       \
{                           \
  BF_ErrorCode code = call; \
  if (code != BF_OK) {      \
    BF_PrintError(code);    \
    return HT_ERROR;        \
  }                         \
}

int HT_CreateFile(char *fileName, int buckets) {

    int file_descriptor, HT_ERROR = -1;
    BF_Block *info_block;
    void *data;

    CALL_BF(BF_CreateFile(fileName));
    CALL_BF(BF_OpenFile(fileName, &file_descriptor));

    BF_Block_Init(&info_block);
    CALL_BF(BF_AllocateBlock(file_descriptor, info_block));

    data = BF_Block_GetData(info_block);
    ((HT_info *)data)[0].file_descriptor = file_descriptor;
    ((HT_info *)data)[0].last_block_id = 0;
    ((HT_info *)data)[0].info_block = info_block;
    ((HT_info *)data)[0].buckets_num = buckets;
    ((HT_info *)data)[0].hash_table = malloc(buckets*sizeof(int));
    
    BF_Block_SetDirty(info_block);
    CALL_BF(BF_UnpinBlock(info_block));
    BF_Block_Destroy(&info_block);

    return 0;
}

HT_info* HT_OpenFile(char *fileName) {

    int file_descriptor;
    BF_Block *info_block;
    HT_info *HT_ERROR = NULL;
    void *data;

    CALL_BF(BF_OpenFile(fileName, &file_descriptor));
    BF_Block_Init(&info_block);

    CALL_BF(BF_GetBlock(file_descriptor, 0, info_block));
    data = BF_Block_GetData(info_block);

    return ((HT_info *)data);
}

int HT_CloseFile(HT_info* ht_info) {

    int HT_ERROR = -1;
    int fd = ht_info->file_descriptor;
    BF_Block *info_block = ht_info->info_block;

    CALL_BF(BF_UnpinBlock(info_block));
    BF_Block_Destroy(&info_block);
    CALL_BF(BF_CloseFile(fd));

    return 0;
}

int HT_InsertEntry(HT_info* ht_info, Record record) {

    void *data, *info_data;
    BF_Block *new_block, *block_of_interest, *info_block;
    int file_descriptor = ht_info->file_descriptor, HT_ERROR=-1;
    int block_of_interest_id, hash;

    info_block = ht_info->info_block;
    info_data = BF_Block_GetData(info_block);

    hash = record.id % (((HT_info *)info_data)[0].buckets_num);
    block_of_interest_id = ((HT_info *)info_data)[0].hash_table[hash];

    if (block_of_interest_id == 0) {

        BF_Block_Init(&new_block);
        CALL_BF(BF_AllocateBlock(file_descriptor, new_block));

        ((HT_info *)info_data)[0].last_block_id++;
        ((HT_info *)info_data)[0].hash_table[hash] = ((HT_info *)info_data)[0].last_block_id;
        BF_Block_SetDirty(info_block);

        data = BF_Block_GetData(new_block);
        ((Record *)data)[0] = record;
        ((HT_block_info *)data)[METADATA_POSITION].records_in_block = 1;
        ((HT_block_info *)data)[METADATA_POSITION].block_id = ((HT_info *)info_data)[0].last_block_id;

        block_of_interest_id = ((HT_block_info *)data)[METADATA_POSITION].block_id;

        BF_Block_SetDirty(new_block);
        CALL_BF(BF_UnpinBlock(new_block));
        BF_Block_Destroy(&new_block);
    }
    else {

        BF_Block_Init(&block_of_interest);
        CALL_BF(BF_GetBlock(file_descriptor, block_of_interest_id, block_of_interest));
        data = BF_Block_GetData(block_of_interest);

        if (((HT_block_info *)data)[METADATA_POSITION].records_in_block == MAX_RECORDS_IN_BLOCK) {

            BF_Block_Init(&new_block);
            CALL_BF(BF_AllocateBlock(file_descriptor, new_block));

            ((HT_info *)info_data)[0].last_block_id++;
            ((HT_info *)info_data)[0].hash_table[hash] = ((HT_info *)info_data)[0].last_block_id;
            BF_Block_SetDirty(info_block);

            data = BF_Block_GetData(new_block);
            ((Record *)data)[0] = record;
            ((HT_block_info *)data)[METADATA_POSITION].records_in_block = 1;
            ((HT_block_info *)data)[METADATA_POSITION].next_block_id = block_of_interest_id;
            ((HT_block_info *)data)[METADATA_POSITION].block_id = ((HT_info *)info_data)[0].last_block_id;

            block_of_interest_id = ((HT_block_info *)data)[METADATA_POSITION].block_id;

            BF_Block_SetDirty(new_block);
            CALL_BF(BF_UnpinBlock(new_block));
            BF_Block_Destroy(&new_block);
        }
        else {

            ((Record *)data)[((HT_block_info *)data)[METADATA_POSITION].records_in_block] = record;
            ((HT_block_info *)data)[METADATA_POSITION].records_in_block++;

            BF_Block_SetDirty(block_of_interest);
        }
            CALL_BF(BF_UnpinBlock(block_of_interest));
            BF_Block_Destroy(&block_of_interest);
    }


    return block_of_interest_id;
}

int HT_GetAllEntries(HT_info* ht_info, int value) {

    BF_Block *data_block;
    int file_descriptor = ht_info->file_descriptor, HT_ERROR=-1;
    void *block_data;
    int block_id, hash, block_count=0;

    hash = value % (ht_info->buckets_num);
    block_id = ht_info->hash_table[hash];

    BF_Block_Init(&data_block);

    if (block_id != 0) {

        while (block_id != 0) {

            block_count++;

            CALL_BF(BF_GetBlock(file_descriptor, block_id, data_block));
            block_data = BF_Block_GetData(data_block);

            for (
                int record_index=0;
                record_index < ((HT_block_info *)block_data)[METADATA_POSITION].records_in_block;
                record_index++
            ){
                if (((Record *)(block_data))[record_index].id == value) {

                    printRecord(((Record *)(block_data))[record_index]);
                    return block_count;
                }
            }

            block_id = ((HT_block_info *)block_data)[METADATA_POSITION].next_block_id;
        
            CALL_BF(BF_UnpinBlock(data_block));
        }
        BF_Block_Destroy(&data_block);        
    }
    return block_count;
}


int HashStatistics(char *fileName) {

    int file_descriptor, HT_ERROR = -1;
    BF_Block *info_block, *bucket_block;
    void *data, *data2;
    int total_blocks = 0, max_records = 0, min_records = 0, num_buckets_with_overflow=0, total_records = 0;
    double avg_blocks_per_bucket=0, avg_records_per_bucket=0;
    int *records_per_bucket, *overflow_blocks_per_bucket;

    printf("\nStatistics of Primary Hash Table\n\n");

    BF_Block_Init(&info_block);
    CALL_BF(BF_OpenFile(fileName, &file_descriptor));
    CALL_BF(BF_GetBlock(file_descriptor, 0, info_block));
    data = BF_Block_GetData(info_block);

    total_blocks = ((HT_info *)data)[0].last_block_id + 1;
    printf("Total blocks: %d \n", total_blocks);

    avg_blocks_per_bucket = (total_blocks -1) / ((HT_info *)data)[0].buckets_num;
    printf("Average blocks per bucket: %.2f \n", avg_blocks_per_bucket);

    records_per_bucket = malloc((((HT_info *)data)[0].buckets_num)*sizeof(int));
    overflow_blocks_per_bucket = malloc((((HT_info *)data)[0].buckets_num)*sizeof(int));

    BF_Block_Init(&bucket_block);

    for (int i = 0; i < ((HT_info *)data)[0].buckets_num; i++) {

        int aux = ((HT_info *)data)[0].hash_table[i];
        int a=0;
        overflow_blocks_per_bucket[i] = -1;
        records_per_bucket[i] = 0;

        while (aux != 0) {

            overflow_blocks_per_bucket[i]++;
            CALL_BF(BF_GetBlock(file_descriptor, aux, bucket_block));
            data2 = BF_Block_GetData(bucket_block);

            a++;
            records_per_bucket[i] +=((HT_block_info *)data2)[METADATA_POSITION].records_in_block;
            aux = ((HT_block_info *)data2)[METADATA_POSITION].next_block_id;

            CALL_BF(BF_UnpinBlock(bucket_block));
        }
    }

    BF_Block_Destroy(&bucket_block);

    max_records = records_per_bucket[0];
    min_records = records_per_bucket[0];
    total_records = records_per_bucket[0];

    if(overflow_blocks_per_bucket[0] > 0) {

        num_buckets_with_overflow++;
    }

    for(int j = 1 ; j < ((HT_info *)data)[0].buckets_num; j++) {

        if(max_records < records_per_bucket[j]) {

            max_records = records_per_bucket[j];
        }
        if(min_records > records_per_bucket[j]) {

            min_records = records_per_bucket[j];
        }
        if(overflow_blocks_per_bucket[j] > 0) {

            num_buckets_with_overflow++;
        }
        total_records += records_per_bucket[j];
    }

    avg_records_per_bucket = total_records / ((HT_info *)data)[0].buckets_num;

    printf("Average records per bucket: %.2f\n", avg_records_per_bucket);
    printf("Minimum records per bucket: %d\n", min_records);
    printf("Maximum records per bucket: %d\n", max_records);
    printf("\nNumber of buckets with overflow blocks: %d\n", num_buckets_with_overflow);
    
    for(int k = 0 ; k < ((HT_info *)data)[0].buckets_num; k++) {

        if(overflow_blocks_per_bucket[k] > 0) {

            printf("Bucket %d has: %d Overflow blocks\n", k, overflow_blocks_per_bucket[k]);

        }
    } 
    printf("Max records in a block: %d\n", MAX_RECORDS_IN_BLOCK);  
}