#ifndef TSTOIXEIOYRBT1_H
#define TSTOIXEIOYRBT1_H

typedef struct stoixeio1 TyposStoixeioyrbt1; //TyposStoixeioyrbt1


int TyposStoixeioyrbt1_cmp_if_targ_lesser_than_sour (void *target, void *source);
int TyposStoixeioyrbt1_cmp_if_targ_diff_than_sour (void *target, void *source);
void TyposStoixeioyrbt1_insert (void *target);
void TyposStoixeioyrbt1_assign(void *target, void *source);
void TyposStoixeioyrbt1_print (void *target);
void *TyposStoixeioyrbt1_constructor(); /* real creation not initialisation*/
#endif