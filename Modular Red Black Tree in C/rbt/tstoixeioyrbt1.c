#include "tstoixeioyrbt1.h"
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <malloc.h>
#define NDEBUG

struct stoixeio1 
{   
    int integer;
	//char string[CPLITHOS]; //string
};  

// Definitions of Functions

int TyposStoixeioyrbt1_cmp_if_targ_lesser_than_sour (void *target, void *source)
{  
   /*
   * Before: Creation of the two not NULL pointers target and source of TyposStoixeioyrbt1 data type
   * After: Returns 1 if target->integer<source->integer  else 0
   */
   assert(target != NULL);
   assert(source != NULL);
   TyposStoixeioyrbt1 *t, *s;
   t=(TyposStoixeioyrbt1 *)target;
   s=(TyposStoixeioyrbt1 *)source;

   if(t->integer < s->integer) {
      return 1;/* return value*/
   } else if(t->integer > s->integer) {
      return 0;/* return value*/
   } else {
      return 0;/* return value*/
   }
}

int TyposStoixeioyrbt1_cmp_if_targ_diff_than_sour (void *target, void *source)
{ 
   /*
   * Before: Creation of the two not NULL pointers target and source of TyposStoixeioyrbt1 data type
   * After: Returns 1 if target->integer is different from the source->integer else 0
   */ 
   assert(target != NULL);
   assert(source != NULL);    
   TyposStoixeioyrbt1 *t, *s;
   t=(TyposStoixeioyrbt1 *)target;
   s=(TyposStoixeioyrbt1 *)source;

   if(t->integer < s->integer) {
      return 1;/* return value*/
   } else if(t->integer > s->integer) {
      return 1;/* return value*/
   } else {
      return 0;/* return value*/
   }
     
}

void TyposStoixeioyrbt1_insert (void *target)
{  
   /*
   * Before: Creation of a not NULL pointer target of TyposStoixeioyrbt1 data type
   * After: Insert an integer at the field integer of the pointer target of TyposStoixeioyrbt1 data type 
   */
    assert(target != NULL);     
    int i;
    TyposStoixeioyrbt1 *t, *s;
    t=(TyposStoixeioyrbt1 *)target;
    scanf("%d", &i);
    t->integer=i;
    target=(void*)t; 
}
void TyposStoixeioyrbt1_print (void *target)
{   
   /*
   * Before: Creation of a not NULL pointer target of TyposStoixeioyrbt1 data type and insertion of the pointer's field string 
   * After: Prints the integer of the field integer of the pointer target of TyposStoixeioyrbt1 data type 
   */
   assert(target != NULL);    
   TyposStoixeioyrbt1 *t;
   t=(TyposStoixeioyrbt1 *)target;
   printf("%d", t->integer); /* prints the field integer of the pointer of TyposStoixeioyrbt1 data type*/
}

void TyposStoixeioyrbt1_assign(void *target, void *source)
{
   /*
   * Before: Creation of the two not NULL pointer  target and source of TyposStoixeioyrbt1 data type and insertion of the field integer to those variables
   * After: Copies the field integer from the pointer source to the field integer of the pointer target
   */ 
   assert(target != NULL);
   assert(source != NULL);    
   TyposStoixeioyrbt1 *t, *s;
   t=(TyposStoixeioyrbt1 *)target;
   s=(TyposStoixeioyrbt1 *)source;
   t->integer=s->integer;
   target=(void*)t;
   source=(void*)s;
}
void *TyposStoixeioyrbt1_constructor()
{
   /*
   * Before: Nothing
   * After: Returns a not NULL pointer of TyposStoixeioyrbt1 data type which means that an element of typosstoixeioyrbt1 is created
   */     
	TyposStoixeioyrbt1 * Stoixeiorbt1= malloc(sizeof(struct stoixeio1));
   return Stoixeiorbt1; /* return a pointer of TyposStoixeioyrbt1 data type*/
}