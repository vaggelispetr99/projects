#ifndef TSTOIXEIOYRBT_H
#define TSTOIXEIOYRBT_H
#define CPLITHOS 15 /* Maximum+1 length of a string*/

typedef struct stoixeio TyposStoixeioyrbt; //TyposStoixeioyrbt


int TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour (void *target, void *source);
int TyposStoixeioyrbt_cmp_if_targ_diff_than_sour (void *target, void *source);
void TyposStoixeioyrbt_insert (void *target);
void TyposStoixeioyrbt_assign(void *target, void *source);
void TyposStoixeioyrbt_print (void *target);
void *TyposStoixeioyrbt_constructor(); /* real creation not initialisation*/
#endif