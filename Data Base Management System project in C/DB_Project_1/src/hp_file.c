#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "bf.h"
#include "hp_file.h"
#include "record.h"

#define CALL_BF(call)       \
{                           \
  BF_ErrorCode code = call; \
  if (code != BF_OK) {      \
    BF_PrintError(code);    \
    return HP_ERROR;        \
  }                         \
}

int HP_CreateFile(char *fileName) {

    int file_descriptor, HP_ERROR = -1;
    BF_Block *info_block;
    void *data;

    CALL_BF(BF_CreateFile(fileName));
    CALL_BF(BF_OpenFile(fileName, &file_descriptor));

    /*
        BF_Block_Init, allocates space in CACHE memory
        for a new block and makes the pointer it takes
        as argument, point to that location.
        BF_AllocateBlock, allocates space for a new block,
        in the HARD DRIVE and loads the new block,
        unto the CACHE block, pointed to by the pointer,
        initialized by BF_Block_Init. If the pointer is not
        initialized by BF_Block_Init, BF_AllocateBlock,
        cannot load the block unto cache memory and the
        program crashes.
    */
    BF_Block_Init(&info_block);
    CALL_BF(BF_AllocateBlock(file_descriptor, info_block));

    /*
        data is a void pointer. It can point to ANY TYPE
        of data, in memory. We instruct the compiler,
        what to interpret the data as, by CASTING the void
        pointer. We then use array syntax, to provide the
        compiler with an OFFSET - i.e. tell it WHERE TO STOP.
        Since we write the data at the beginning of the block
        we use the INDEX 0. This way, we avoid memcpy() usage
        and follow the code examples given to us. 
    */
    data = BF_Block_GetData(info_block);
    ((HP_info *)data)[0].file_descriptor = file_descriptor;
    ((HP_info *)data)[0].last_block_id = 0;
    ((HP_info *)data)[0].info_block = info_block;
    
    BF_Block_SetDirty(info_block);
    CALL_BF(BF_UnpinBlock(info_block));
    BF_Block_Destroy(&info_block);

    return 0;
}

HP_info* HP_OpenFile(char *fileName) {

    int file_descriptor;
    BF_Block *info_block;
    HP_info *HP_ERROR = NULL;
    void *data;

    CALL_BF(BF_OpenFile(fileName, &file_descriptor));

    BF_Block_Init(&info_block);
    CALL_BF(BF_GetBlock(file_descriptor, 0, info_block));
    data = BF_Block_GetData(info_block);

    /*
        Any block we do not need, we must unpin
        from cache, because the file cannot close,
        if there are pinned blocks in cache.
        We must also deallocate the space, kept in
        cache for the block, when we are done processing
        it so that cache memory doesn't fill up.  
    */

    return ((HP_info *)data);
}

int HP_CloseFile(HP_info* hp_info) {

    int HP_ERROR = -1;

    BF_Block_Destroy(&hp_info->info_block);
    CALL_BF(BF_CloseFile(hp_info->file_descriptor));

    return 0;
}

int HP_InsertEntry(HP_info* hp_info, Record record) {

    void *data;
    BF_Block *new_block, *info_block, *last_block;
    int file_descriptor = hp_info->file_descriptor, HP_ERROR=-1;

    info_block = hp_info->info_block;

    /*
        First scenario: there are one or more blocks
        in the file, containing data entries. The first
        block in the file, containing the info struct,
        has an id of 0, so we consider anything above 0.
        Second scenario: There are no data blocks in the
        file - just the block containing the info struct.  
    */
    if (hp_info->last_block_id > 0) {

        BF_Block_Init(&last_block);
        CALL_BF(BF_GetBlock(file_descriptor, hp_info->last_block_id, last_block));
        
        data = BF_Block_GetData(last_block);

        /*
            First sub-scenario: last data block is full --> create
            a new block, connect last block with new block, and 
            make necessary modifications.
            Second sub-scenario: there is space in last block for
            another record --> add new record at the end of last
            record and make necessary modifications.
        */
        if (((HP_block_info *)data)[METADATA_POSITION].records_in_block == MAX_RECORDS_IN_BLOCK) {

            BF_Block_Init(&new_block);
            CALL_BF(BF_AllocateBlock(file_descriptor, new_block));

            ((HP_block_info *)data)[METADATA_POSITION].next_block = new_block;
            BF_Block_SetDirty(last_block);

            data = BF_Block_GetData(info_block);
            ((HP_info *)data)[0].last_block_id++;
            BF_Block_SetDirty(info_block);

            data = BF_Block_GetData(new_block);
            ((Record *)data)[0] = record;
            ((HP_block_info *)data)[METADATA_POSITION].records_in_block = 1;

            BF_Block_SetDirty(new_block);
            CALL_BF(BF_UnpinBlock(new_block));
            BF_Block_Destroy(&new_block);
        }
        else {

            /*
                See hp_file.h for definition of METADATA_POSITION
            */
            ((Record *)data)[((HP_block_info *)data)[METADATA_POSITION].records_in_block] = record;
            ((HP_block_info *)data)[METADATA_POSITION].records_in_block++;

            BF_Block_SetDirty(last_block);
        }
        CALL_BF(BF_UnpinBlock(last_block));
        BF_Block_Destroy(&last_block);
    }
    else {

        BF_Block_Init(&new_block);
        CALL_BF(BF_AllocateBlock(file_descriptor, new_block));

        data = BF_Block_GetData(info_block);
        ((HP_info *)data)[0].last_block_id++;

        data = BF_Block_GetData(new_block);
        ((Record *)data)[0] = record;
        ((HP_block_info *)data)[METADATA_POSITION].records_in_block = 1;

        BF_Block_SetDirty(new_block);
        CALL_BF(BF_UnpinBlock(new_block));
        BF_Block_Destroy(&new_block);
    }

    return 0;
}

int HP_GetAllEntries(HP_info* hp_info, int value) {

    BF_Block *info_block, *data_block;
    int file_descriptor = hp_info->file_descriptor, HP_ERROR=-1;
    void *info_data, *block_data;

    info_block = hp_info->info_block;
    info_data = BF_Block_GetData(info_block);

    /*
        Starting from the first DATA BLOCK(id=1),
        until we reach the last one in the file
        (saved inside the last_block_id variable
        of the info block of the file), scan all
        records in each block, for the id matching
        the value argument. 
    */
    for (
        int block_id = 1;
        block_id <= ((HP_info *)info_data)[0].last_block_id;
        block_id++
    ){
        BF_Block_Init(&data_block);
        CALL_BF(BF_GetBlock(file_descriptor, block_id, data_block));
        block_data = BF_Block_GetData(data_block);
        for (
            int record_index=0;
            record_index < ((HP_block_info *)block_data)[METADATA_POSITION].records_in_block;
            record_index++
        ){
            if (((Record *)(block_data))[record_index].id == value) {

                printRecord(((Record *)(block_data))[record_index]);
            }
        }
        CALL_BF(BF_UnpinBlock(data_block));
        BF_Block_Destroy(&data_block);        
    }

    return 0;
}

