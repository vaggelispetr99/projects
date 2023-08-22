#ifndef RBT1_H
#define RBT1_H
#include "tstoixeioyrbt.h"
#include "tstoixeioyrbt1.h"

enum color {red, black};

typedef struct vertex node; // node of red black tree

typedef struct rbt_tree *tree; // red black tree

void rbt_insert(tree rbtree, int (* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour)(void*, void*), int (* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour)(void*, void*), void (*TyposStoixeioyrbt_assign)(void*, void*), void *(*TyposStoixeioyrbt_constructor)(), void *new_TyposStoixeioyrbt, int *error);
void rbt_delete(tree rbtree, int (* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour)(void*, void*), int (* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour)(void*, void*), void *delkey, int *error);
void rbt_print(tree rbtree, node *x, void (* TyposStoixeioyrbt_print) (void*), int *error);
tree rbt_constructor();/* real creation not initialisation*/
node *rbt_root(tree rbtree);

#endif