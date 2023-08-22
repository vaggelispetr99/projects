#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "bf.h"
#include "hp_file.h"

#define RECORDS_NUM 1000 // you can change it if you want
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

  HP_CreateFile(FILE_NAME);
  HP_info* info = HP_OpenFile(FILE_NAME);

  Record record;
  srand(time(NULL));
  int r;
  printf("Inserting Entries...\n");
  
  for (int id = 0; id < RECORDS_NUM; ++id) {

    record = randomRecord();
    HP_InsertEntry(info, record);
  }

  printf("Insertion complete!\n");
  printf("\nRUN PrintAllEntries\n");

  for (int i = 0; i < 10; i++) {

    int id = rand() % RECORDS_NUM;
    printf("\nSearching for: %d\n",id);
    HP_GetAllEntries(info, id);
  }

  HP_CloseFile(info);
  BF_Close();
}
