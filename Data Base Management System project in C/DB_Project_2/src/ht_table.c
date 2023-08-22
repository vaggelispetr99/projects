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
/*
    CALL_BF(BF_UnpinBlock(info_block));
    BF_Block_Destroy(&info_block);
*/
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
