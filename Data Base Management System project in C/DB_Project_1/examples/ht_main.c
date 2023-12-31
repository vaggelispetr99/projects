#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "bf.h"
#include "ht_table.h"

#define RECORDS_NUM 20000 // you can change it if you want
#define FILE_NAME "data.db"

#define CALL_OR_DIE(call)     \
  {                           \
    BF_ErrorCode code = call; \
    if (code != BF_OK) {      \
      BF_PrintError(code);    \
      exit(code);             \
    }                         \
  }

int main() {

  BF_Init(LRU);

  HT_CreateFile(FILE_NAME,10);
  HT_info* info = HT_OpenFile(FILE_NAME);

  Record record;
  //srand(12569874);
  srand(time(NULL));
  int r;

  printf("Inserting Entries...\n");

  for (int id = 0; id < RECORDS_NUM; ++id) {
    
    record = randomRecord();
    HT_InsertEntry(info, record);
  }

  printf("Insertion complete!\n");

  for (int i=0; i < 10; i++) {

    int id = rand() % RECORDS_NUM;
    printf("\nRUN PrintAllEntries matching %d\n", id);
    printf("Number of blocks traversed: %d\n", HT_GetAllEntries(info, id));
  }

  HashStatistics(FILE_NAME);
  
  HT_CloseFile(info);
  BF_Close();

}
