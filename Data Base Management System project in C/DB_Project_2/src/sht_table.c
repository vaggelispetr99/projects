#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bf.h"
#include "sht_table.h"
#include "ht_table.h"
#include "record.h"

#define CALL_BF(call)       \
{                           \
  BF_ErrorCode code = call; \
  if (code != BF_OK) {      \
    BF_PrintError(code);    \
    printf("Error in line %d\n", __LINE__); \
    return SHT_ERROR;        \
  }                         \
}

int SHT_CreateSecondaryIndex(char *sfileName, int buckets, char* fileName) {

    int file_descriptor, SHT_ERROR = -1;
    BF_Block *info_block;
    void *data;

    CALL_BF(BF_CreateFile(sfileName));
    CALL_BF(BF_OpenFile(sfileName, &file_descriptor));

    BF_Block_Init(&info_block);
    CALL_BF(BF_AllocateBlock(file_descriptor, info_block));

    data = BF_Block_GetData(info_block);
    ((SHT_info *)data)[0].file_descriptor = file_descriptor;
    ((SHT_info *)data)[0].last_block_id = 0;
    ((SHT_info *)data)[0].info_block = info_block;
    ((SHT_info *)data)[0].buckets_num = buckets;
    ((SHT_info *)data)[0].hash_table = malloc(buckets*sizeof(int));

    BF_Block_SetDirty(info_block);
    CALL_BF(BF_UnpinBlock(info_block));
    BF_Block_Destroy(&info_block);

    return 0;
}

SHT_info* SHT_OpenSecondaryIndex(char *indexName) {

    int file_descriptor;
    BF_Block *info_block;
    SHT_info *SHT_ERROR = NULL;
    void *data;

    CALL_BF(BF_OpenFile(indexName, &file_descriptor));
    BF_Block_Init(&info_block);

    CALL_BF(BF_GetBlock(file_descriptor, 0, info_block));
    data = BF_Block_GetData(info_block);

    return ((SHT_info *)data);
}

int SHT_CloseSecondaryIndex(SHT_info* SHT_info) {

    int SHT_ERROR = -1;
    int fd = SHT_info->file_descriptor;
    BF_Block *info_block = SHT_info->info_block;

    CALL_BF(BF_UnpinBlock(info_block));
    BF_Block_Destroy(&info_block);
    CALL_BF(BF_CloseFile(fd));

    return 0;
}

int SHT_SecondaryInsertEntry(SHT_info* sht_info, Record record, int block_id) {

    void *data, *info_data;
    BF_Block *new_block, *block_of_interest, *info_block;
    int file_descriptor = sht_info->file_descriptor, SHT_ERROR=-1;
    int block_of_interest_id, hash;
    SHT_Record sht_entry;

    strcpy(sht_entry.name, record.name);
    sht_entry.block_id = block_id;
/*
    BF_Block_Init(&info_block);
    CALL_BF(BF_GetBlock(file_descriptor, 0, info_block));
*/
    info_block = sht_info->info_block;
    info_data = BF_Block_GetData(info_block);


    hash = string_hash_function(record.name, ((SHT_info *)info_data)[0].buckets_num);
    block_of_interest_id = ((SHT_info *)info_data)[0].hash_table[hash];
    

    if (block_of_interest_id == 0) {

        BF_Block_Init(&new_block);
        CALL_BF(BF_AllocateBlock(file_descriptor, new_block));

        ((SHT_info *)info_data)[0].last_block_id++;
        ((SHT_info *)info_data)[0].hash_table[hash] = ((SHT_info *)info_data)[0].last_block_id;
        BF_Block_SetDirty(info_block);

        data = BF_Block_GetData(new_block);
        ((SHT_Record *)data)[0] = sht_entry;
        ((SHT_block_info *)data)[SHT_METADATA_POSITION].records_in_block = 1;
        ((SHT_block_info *)data)[SHT_METADATA_POSITION].block_id = ((SHT_info *)info_data)[0].last_block_id;

        block_of_interest_id = ((SHT_block_info *)data)[SHT_METADATA_POSITION].block_id;

        BF_Block_SetDirty(new_block);
        CALL_BF(BF_UnpinBlock(new_block));
        BF_Block_Destroy(&new_block);
    }
    else {

        BF_Block_Init(&block_of_interest);
        CALL_BF(BF_GetBlock(file_descriptor, block_of_interest_id, block_of_interest));
        data = BF_Block_GetData(block_of_interest);

        if (((SHT_block_info *)data)[SHT_METADATA_POSITION].records_in_block == MAX_RECORDS_IN_BLOCK) {

            BF_Block_Init(&new_block);
            CALL_BF(BF_AllocateBlock(file_descriptor, new_block));

            ((SHT_info *)info_data)[0].last_block_id++;
            ((SHT_info *)info_data)[0].hash_table[hash] = ((SHT_info *)info_data)[0].last_block_id;
            BF_Block_SetDirty(info_block);

            data = BF_Block_GetData(new_block);
            ((SHT_Record *)data)[0] = sht_entry;
            ((SHT_block_info *)data)[SHT_METADATA_POSITION].records_in_block = 1;
            ((SHT_block_info *)data)[SHT_METADATA_POSITION].next_block_id = block_of_interest_id;
            ((SHT_block_info *)data)[SHT_METADATA_POSITION].block_id = ((SHT_info *)info_data)[0].last_block_id;

            block_of_interest_id = ((SHT_block_info *)data)[SHT_METADATA_POSITION].block_id;

            BF_Block_SetDirty(new_block);
            CALL_BF(BF_UnpinBlock(new_block));
            BF_Block_Destroy(&new_block);
        }
        else {

            ((SHT_Record *)data)[((SHT_block_info *)data)[SHT_METADATA_POSITION].records_in_block] = sht_entry;
            ((SHT_block_info *)data)[SHT_METADATA_POSITION].records_in_block++;

            BF_Block_SetDirty(block_of_interest);
        }
        CALL_BF(BF_UnpinBlock(block_of_interest));
        BF_Block_Destroy(&block_of_interest);
    }

    return 0;
}

int SHT_SecondaryGetAllEntries(HT_info* ht_info, SHT_info* sht_info, char* name) {

    BF_Block *data_block, *ht_data_block;
    int sht_file_descriptor = sht_info->file_descriptor, SHT_ERROR=-1;
    int ht_file_descriptor = ht_info->file_descriptor, block_id, hash, ht_block_id;
    void *block_data, *ht_block_data, *info_data;

/*
    BF_Block_Init(&info_block);
    CALL_BF(BF_GetBlock(sht_file_descriptor, 0, info_block));

    info_block = sht_info->info_block;
    info_data = BF_Block_GetData(info_block);
*/
    hash = string_hash_function(name, sht_info->buckets_num);
    block_id = sht_info->hash_table[hash];

    BF_Block_Init(&data_block);

    if (block_id != 0) {

        BF_Block_Init(&ht_data_block);

        while (block_id != 0) {

            CALL_BF(BF_GetBlock(sht_file_descriptor, block_id, data_block));
            block_data = BF_Block_GetData(data_block);

            for (
                int record_index=0;
                record_index < ((SHT_block_info *)block_data)[SHT_METADATA_POSITION].records_in_block;
                record_index++
            ){
                if (strcmp(((SHT_Record *)block_data)[record_index].name, name)==0) {

                    ht_block_id = ((SHT_Record *)(block_data))[record_index].block_id;
                    CALL_BF(BF_GetBlock(ht_file_descriptor, ht_block_id, ht_data_block));
                    ht_block_data = BF_Block_GetData(ht_data_block);

                    for (
                        int main_record_index=0;
                        main_record_index < ((HT_block_info *)ht_block_data)[METADATA_POSITION].records_in_block;
                        main_record_index++
                    ) {

                        if (strcmp(((Record *)(ht_block_data))[main_record_index].name, name)==0) {

                            printRecord(((Record *)(ht_block_data))[main_record_index]);
                            printf("Found it @ block %d of HT\n\n", ht_block_id);
                        }
                    }
                }
                CALL_BF(BF_UnpinBlock(ht_data_block));
            }

            block_id = ((SHT_block_info *)block_data)[SHT_METADATA_POSITION].next_block_id;
        
            CALL_BF(BF_UnpinBlock(data_block));
        }
        BF_Block_Destroy(&data_block);
        BF_Block_Destroy(&ht_data_block);        
    }
    return 0;
}

int string_hash_function(unsigned char *str, int buckets) {

    unsigned long hash = 5381;
    int c;

    while (c = *str++)
        hash = ((hash << 5) + hash) + c; /* hash * 33 + c */

    return hash % buckets;
}

int HashStatistics_sht(char *fileName){

    int file_descriptor, SHT_ERROR = -1;
    BF_Block *info_block, *bucket_block;
    void *data, *data2;
    int total_blocks = 0, max_records = 0, min_records = 0, num_buckets_with_overflow=0, total_records = 0;
    double avg_blocks_per_bucket=0, avg_records_per_bucket=0;
    int *records_per_bucket, *overflow_blocks_per_bucket;

    printf("\nStatistics of Secondary Hash Table\n\n");

    BF_Block_Init(&info_block);
    CALL_BF(BF_OpenFile(fileName, &file_descriptor));
    CALL_BF(BF_GetBlock(file_descriptor, 0, info_block));
    data = BF_Block_GetData(info_block);

    total_blocks = ((SHT_info *)data)[0].last_block_id + 1;
    printf("Total blocks: %d \n", total_blocks);
    
    avg_blocks_per_bucket = (((double)(total_blocks -1)) / (double)(((SHT_info *)data)[0].buckets_num));
    printf("Average blocks per bucket: %.2f\n", avg_blocks_per_bucket);
    
    records_per_bucket = malloc((((SHT_info *)data)[0].buckets_num)*sizeof(int));
    overflow_blocks_per_bucket = malloc((((SHT_info *)data)[0].buckets_num)*sizeof(int));
    
    BF_Block_Init(&bucket_block);

    for (int i = 0; i < ((SHT_info *)data)[0].buckets_num; i++) {

        int aux = ((SHT_info *)data)[0].hash_table[i];
        int a=0;
        overflow_blocks_per_bucket[i] = -1;
        records_per_bucket[i] = 0;

        while (aux != 0){

            overflow_blocks_per_bucket[i]++;
            CALL_BF(BF_GetBlock(file_descriptor, aux, bucket_block));
            data2 = BF_Block_GetData(bucket_block);
            a++;
            records_per_bucket[i] +=((SHT_block_info *)data2)[SHT_METADATA_POSITION].records_in_block;
            aux = ((SHT_block_info *)data2)[SHT_METADATA_POSITION].next_block_id;
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

    for(int j = 1 ; j < ((SHT_info *)data)[0].buckets_num; j++) {

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
    avg_records_per_bucket = total_records / ((SHT_info *)data)[0].buckets_num;

    printf("Average records per bucket: %.2f \n", avg_records_per_bucket);
    printf("Minimum records per bucket: %d\n", min_records);
    printf("Maximum records per bucket: %d\n", max_records);
    printf("\nNumber of buckets with overflow blocks: %d\n", num_buckets_with_overflow);

    for(int k = 0 ; k < ((SHT_info *)data)[0].buckets_num; k++) {

        if(overflow_blocks_per_bucket[k] > 0) {

            printf("Bucket %d has: %d Overflow blocks\n", k, overflow_blocks_per_bucket[k]);
        }
    }       
}

int HashStatistics_ht(char *fileName){

    int file_descriptor, SHT_ERROR = -1;
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
    printf("Total blocks: %d\n", total_blocks);

    avg_blocks_per_bucket = (total_blocks -1) / ((HT_info *)data)[0].buckets_num;
    printf("Average blocks per bucket: %.2f\n", avg_blocks_per_bucket);

    records_per_bucket = malloc((((HT_info *)data)[0].buckets_num)*sizeof(int));
    overflow_blocks_per_bucket = malloc((((HT_info *)data)[0].buckets_num)*sizeof(int));

    BF_Block_Init(&bucket_block);

    for (int i = 0; i < ((HT_info *)data)[0].buckets_num; i++) {

        int aux = ((HT_info *)data)[0].hash_table[i];
        int a=0;
        overflow_blocks_per_bucket[i] = -1;
        records_per_bucket[i] = 0;

        while (aux != 0){

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
}




