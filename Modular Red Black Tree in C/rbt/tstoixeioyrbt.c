#include "tstoixeioyrbt.h"
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <malloc.h>
#define NDEBUG

struct stoixeio 
{   
    //int integer;
	char string[CPLITHOS]; //string
};  

// Definitions of Functions

int TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour (void *target, void *source)
{  
   /*
   * Before: Creation of the two not NULL pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target->string<source->string  else 0
   */
   assert(target != NULL);
   assert(source != NULL);
   int ret;
   TyposStoixeioyrbt *t, *s;
   t=(TyposStoixeioyrbt *)target;
   s=(TyposStoixeioyrbt *)source;
   ret = strncmp(t->string, s->string, CPLITHOS);

   if(ret < 0) {
      return 1;/* return value*/
   } else if(ret > 0) {
      return 0;/* return value*/
   } else {
      return 0;/* return value*/
   }
}

int TyposStoixeioyrbt_cmp_if_targ_diff_than_sour (void *target, void *source)
{ 
   /*
   * Before: Creation of the two not NULL pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target->string is different from the source->string else 0
   */ 
   assert(target != NULL);
   assert(source != NULL);    
   int ret; 
   TyposStoixeioyrbt *t, *s;
   t=(TyposStoixeioyrbt *)target;
   s=(TyposStoixeioyrbt *)source;
   ret = strncmp(t->string, s->string, CPLITHOS);

   if(ret < 0) {
      return 1;/* return value*/
   } else if(ret > 0) {
      return 1;/* return value*/
   } else {
      return 0;/* return value*/
   }
     
}

void TyposStoixeioyrbt_insert (void *target)
{  
   /*
   * Before: Creation of a not NULL pointer target of TyposStoixeioyrbt data type
   * After: Insert a string with maximum 14 characters at the field string of the pointer target of TyposStoixeioyrbt data type 
   */
    assert(target != NULL);     
    int i;
    char line[CPLITHOS];
    char c;
    i = 0;
    while (i < sizeof(line) - 1 && (c = getchar()) != EOF && c != '\n') 
    {
        line[i++] = c;
    }
    line[i] = '\0';
    TyposStoixeioyrbt *t, *s;
    t=(TyposStoixeioyrbt *)target;
    strncpy(t->string, line, CPLITHOS); /* insertion to the field string of the pointer target of TyposStoixeioyrbt data type*/
    target=(void*)t; 
}
void TyposStoixeioyrbt_print (void *target)
{   
   /*
   * Before: Creation of a not NULL pointer target of TyposStoixeioyrbt data type and insertion of the pointer's field string 
   * After: Prints the string with maximum 14 characters of the field string of the pointer target of TyposStoixeioyrbt data type 
   */
   assert(target != NULL);    
   TyposStoixeioyrbt *t;
   t=(TyposStoixeioyrbt *)target;
   printf("%s", t->string); /* prints the field string of the pointer of TyposStoixeioyrbt data type*/
}

void TyposStoixeioyrbt_assign(void *target, void *source)
{
   /*
   * Before: Creation of the two not NULL pointer  target and source of TyposStoixeioyrbt data type and insertion of the field string to those variables
   * After: Copies the field string from the pointer source to the field string of the pointer target
   */ 
   assert(target != NULL);
   assert(source != NULL);    
   TyposStoixeioyrbt *t, *s;
   t=(TyposStoixeioyrbt *)target;
   s=(TyposStoixeioyrbt *)source;
   strncpy(t->string, s->string, CPLITHOS); /* assigns the field string of the pointer source of TyposStoixeioyrbt data type to the field string of the pointer target of TyposStoixeioyrbt data type*/
   target=(void*)t;
   source=(void*)s;
}
void *TyposStoixeioyrbt_constructor()
{
   /*
   * Before: Nothing
   * After: Returns a not NULL pointer of TyposStoixeioyrbt data type which means that an element of typosstoixeioyrbt is created
   */     
	TyposStoixeioyrbt * Stoixeiorbt= malloc(sizeof(struct stoixeio));
   return Stoixeiorbt; /* return a pointer of TyposStoixeioyrbt data type*/
}
