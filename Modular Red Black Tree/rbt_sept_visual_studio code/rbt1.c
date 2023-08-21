#include <stdio.h>
#include <stdlib.h>
#include "rbt1.h"
#include <assert.h> 
#define NDEBUG


struct vertex 
{
	void *key; //TyposStoixeioyrbt
	node *l;
	node *r;
	node *p;
	enum color cl;
};

struct rbt_tree 
{
	node *rt; // root node
};

void rbt_insert_fixup(tree rbtree, node *z);
void rbt_left_rotate(tree rbtree, node *x);
void rbt_right_rotate(tree rbtree, node *y);
void rbt_transplant(tree rbtree, node *u, node *v);
void rbt_delete_fixup(tree rbtree, node *x);
node *rbt_minimum(tree rbtree, node *x);
node *rbt_search(tree rbtree, void *s, int (* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour)(void*, void*), int (* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour)(void*, void*));
// Definitions of Functions
tree rbt_constructor()
{
   /*
   * Before: Nothing
   * After: Returns a not NULL pointer of tree data type which means that an empty red black tree is created with the root node (a not NULL pointer of node data type). Root node is not initialized.
   */     
	tree  Thistree= malloc(sizeof(struct rbt_tree));
	Thistree->rt= malloc(sizeof(struct vertex));
	Thistree->rt->l=NULL;
	Thistree->rt->r=NULL;
	Thistree->rt->p=NULL;
	Thistree->rt->key=NULL;
	Thistree->rt->cl = black;
	
	return Thistree;
}

node * rbt_root(tree rbtree)
{
   /*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) 
   * After: Returns a pointer of node data type and more specific this points to the root node of the red black tree
   */ 
  	assert(rbtree != NULL);     
	return rbtree->rt;
}

void rbt_insert(tree rbtree, int (* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour)(void*, void*), int (* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour)(void*, void*), void (*TyposStoixeioyrbt_assign)(void*, void*), void* (*TyposStoixeioyrbt_constructor)(), void *new_TyposStoixeioyrbt, int *error) 
{
   /*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and creation of a not NULL pointer of Typosstoixeioyrbt data type 
   * After: Inserts a node (a not NULL pointer of node data type) with a key (a not NULL pointer of Typosstoixeioyrbt data type) given from the user to the red black tree
   */ 
  	/*
   * Definitions of Functions at parameter list
   * 1)TyposStoixeioyrbt_cmp_if_targ_diff_than_sour(void *target, void *source)
   * Before: Creation of the two pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target's key_TyposStoixeioyrbt<source's key_TyposStoixeioyrbt  else 0
   * 2)TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour(void *target, void *source)
   * Before: Creation of the two pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target's key_TyposStoixeioyrbt is different from the source's key_TyposStoixeioyrbt else 0
   * 3)TyposStoixeioyrbt_assign(void *target, void *source)
   * Before: Creation of the two pointer target and source of TyposStoixeioyrbt data type and insertion of the field key to those variables
   * After: Copies the field key_TyposStoixeioyrbt from the pointer source to the field key_TyposStoixeioyrbt of the pointer target
   * 4)TyposStoixeioyrbt_constructor(void *target) 
   * Before: Nothing
   * After: Returns a pointer of TyposStoixeioyrbt data type which means that an element of typosstoixeioyrbt is created
   */ 
  	assert(rbtree != NULL); 
	assert(new_TyposStoixeioyrbt != NULL);    
	static int i=0;
	node *z, *x, *y;
	if(rbtree->rt==NULL)
	{
		rbtree->rt= malloc(sizeof(struct vertex));
		rbtree->rt->l=NULL;
		rbtree->rt->r=NULL;
		rbtree->rt->p=NULL;
		rbtree->rt->key=NULL;
		rbtree->rt->cl = black;
	}
	x = rbtree->rt;
	y = NULL;
	if(x->key==NULL)
	{
		i=0;
	}
	if(i==0)
	{
		rbtree->rt->key= (*TyposStoixeioyrbt_constructor)();
		(*TyposStoixeioyrbt_assign)(rbtree->rt->key, new_TyposStoixeioyrbt);
		i=i+1;
		*error=1;
		return;
	}
	z = malloc(sizeof(struct vertex));
	z->key= (*TyposStoixeioyrbt_constructor)();
	(*TyposStoixeioyrbt_assign)(z->key, new_TyposStoixeioyrbt);
	z->l=NULL;
	z->r=NULL;
	z->p=NULL;
	while (x != NULL) 
	{
		y = x;
		if ((* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour) (z->key, x->key))
		{
			x = x->l;
		}	
		else
		{
			if((* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour) (z->key, x->key))
			{
			    x = x->r;
			}
			else
			{
				*error=0;
				return;
			}

		}	
	}
	z->p = y;
	
	if (y == NULL) 
	{
		rbtree->rt = z;
		rbtree->rt->cl = black;
		*error=1;
		return;
	}
	else if ((* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour) (z->key, y->key)) 
	{
		y->l = z;
	}	
	else
	{
		y->r = z; 	
	}	
	z->cl = red;
	rbt_insert_fixup(rbtree, z); 
	*error=2;

}

void rbt_insert_fixup(tree rbtree, node *z)
 {
   /*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and insertion of at least two nodes (root and z) (two not NULL pointers of node data type) in the red black tree
   * After: Maintains the features of the red black tree after the insertion of a new node z (mainly is used by rbt_insert function) and returns the integer (error) pointer. If *error=0 then there is another node with this key in red black tree. If *error=1 then node becomes root and successful insert in red black tree.If *error=2 then successful insert in red black tree.
   */ 
  	assert(rbtree != NULL);
	assert(rbtree->rt != NULL); 
	assert(z != NULL);
	assert(z->p != NULL);  
	node *y;
	while (z->p->cl == red) 
	{ 
		if (z->p == z->p->p->l) 
		{ 
			y = z->p->p->r; 						
			if ((y != NULL) && (y->cl == red)) 
			{ 			
				z->p->cl = black;
				y->cl = black;
				z->p->p->cl = red; 	
				z = z->p->p;		      	
			}
			else 
			{															
				if (z == z->p->r) 
				{ 	  	
					z = z->p;
					rbt_left_rotate(rbtree, z);
				}
				z->p->cl = black; 		  	
				z->p->p->cl = red;
				rbt_right_rotate(rbtree, z->p->p);
			}
		}
		else if (z->p == z->p->p->r) 
		{ 	
			y = z->p->p->l;
			if ((y != NULL) && (y->cl == red)) 
			{   
				z->p->cl = black;
				y->cl = black;
				z->p->p->cl = red;
				z = z->p->p;
			}
			else 
			{
				if (z == z->p->l) 
				{
					z = z->p;
					rbt_right_rotate(rbtree, z);
				}
				z->p->cl = black;
				z->p->p->cl = red;
				rbt_left_rotate(rbtree, z->p->p);
			}
		}
		if (z == rbtree->rt)
		{
			break;
		}	
	}
	rbtree->rt->cl = black; 
}

void rbt_left_rotate(tree rbtree, node *x) //Warning: right child of x not NULL
{		
   /*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and insertion of at least two nodes (x and x->r) (two not NULL pointers of node data type) in the red black tree
   * After: Maintains the features of the red black tree after the insertion or deletion of node by making left rotations at red black tree
   */ 
  	assert(rbtree != NULL);
	assert(rbtree->rt != NULL);  
	assert(x != NULL);
	assert(x->r != NULL);    
	node *y;
	y = x->r;						 
	x->r = y->l;			
	
	if (y->l != NULL)
		y->l->p = x;	
	y->p = x->p;	
	
	if (x->p == NULL)
		rbtree->rt = y;
	else if (x == x->p->l)
		x->p->l = y;
	else
		x->p->r = y;
		
	y->l = x;
	x->p = y;
}

void rbt_right_rotate(tree rbtree, node *y) //Warning: left child of y not NULL
{		
   /*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and insertion of at least two nodes (y and y->r) (two not NULL pointers of node data type) in the red black tree
   * After: Maintains the features of the red black tree after the insertion or deletion of node by making right rotations at red black tree
   */ 
  	assert(rbtree != NULL);
	assert(rbtree->rt != NULL);  
	assert(y != NULL);
	assert(y->l != NULL);
	node *x;
	x = y->l;
	y->l = x->r;
	
	if (x->r != NULL)
		x->r->p = y;
	x->p = y->p;
	
	if (y->p == NULL)
		rbtree->rt = x;
	else if (y == y->p->l)
		y->p->l = x;
	else
		y->p->r = x;
		
	x->r = y;
	y->p = x;
}

void rbt_transplant(tree rbtree, node *u,node *v) 	
{
   /*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and insertion of at least of the node u (so at least the root node) (a not NULL pointer of node data type) which is in the red black tree, v can be a NULL pointer of node data type
   * After: Maintains the features of the red black tree after the deletion of node u 
   */ 
  	assert(rbtree != NULL);
	assert(rbtree->rt != NULL);
	assert(u != NULL);  
	if (u->p == NULL) 
		rbtree->rt = v;
	else if (u == u->p->l)
		u->p->l = v;
	else
		u->p->r = v;
	
	if (v != NULL)
		v->p = u->p;
}

void rbt_delete(tree rbtree,int (* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour)(void*, void*), int (* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour)(void*, void*), void *delkey, int *error) 
{
	/*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and creation of a not NULL pointer of Typosstoixeioyrbt data type (delkey)
   * After: Deletes a node with key of Typosstoixeioyrbt data type given from the user from the red black tree if the key exists and returns the integer (error) pointer. If *error=0 then there is not a node with the integer key you gave, unsuccessful delete from red black tree. If *error=1 then successful delete from red black tree.If *error=2 then empty red black tree.
   */ 
   /*
   * Definitions of Functions at parameter list
   * 1)TyposStoixeioyrbt_cmp_if_targ_diff_than_sour(void *target, void *source)
   * Before: Creation of the two pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target's key_TyposStoixeioyrbt<source's key_TyposStoixeioyrbt  else 0
   * 2)TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour(void *target, void *source)
   * Before: Creation of the two pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target's key_TyposStoixeioyrbt is different from the source's key_TyposStoixeioyrbt else 0
   * 3)TyposStoixeioyrbt_insert(void *target)
   * Before: Creation of a pointer target of TyposStoixeioyrbt data type
   * After: Insert the key_TyposStoixeioyrbt field of the pointer target of TyposStoixeioyrbt data type
   */ 
  	assert(rbtree != NULL);
	assert(delkey != NULL);
	if(rbtree->rt != NULL && (rbtree->rt->key != NULL))
	{    
	node *z, *y, *x;
	enum color yfirstcolor;
	
	z = rbt_search(rbtree, delkey, (* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour), (* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour));
	if (z == NULL) 
	{
		*error=0;
		return;
	}
	else if ((z == rbtree->rt) && (z->r == NULL) && (z->l == NULL)) 
	{
			free(z);
			rbtree->rt = NULL;
			*error=1;
			return;
	}
	
	y = z;													
	yfirstcolor = y->cl;
	
	if (z->l == NULL) 
	{ 					
		x = z->r;
		rbt_transplant(rbtree, z, z->r);
	}
	else if (z->r == NULL) 
	{
		x = z->l;
		rbt_transplant(rbtree, z, z->l);
	}
	else 
	{														
		y = rbt_minimum(rbtree, z->r);			
		yfirstcolor = y->cl;
		x = y->r;										
		if ((y->p == z) && (x != NULL))
        {			
			x->p = y;
        }											
		else if (y->p != z) 
		{	
			rbt_transplant(rbtree, y, y->r);					
			y->r = z->r;
			y->r->p = y;
		}
		rbt_transplant(rbtree, z, y);						
		y->l = z->l;							
		y->l->p = y;
		y->cl = z->cl;						
	}
	free(z);
	z=NULL;
	*error=1;
	if ((yfirstcolor == black) && (x != NULL))		
		rbt_delete_fixup(rbtree, x);													
	}
	else
	*error=2;																						
}

void rbt_delete_fixup(tree rbtree, node *x) 
{
	/*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and insertion of at least of one node x (so at least the root node) (a not NULL pointer of tree data type)
   * After: Maintains the features of the red black tree after the deletion of node z who is an ancestor of node x which is replacing z (mainly is used by rbt_delete function)
   */ 
  	assert(rbtree != NULL);
	assert(rbtree->rt != NULL);  
	assert(x != NULL);  
	node *w;

	while ((x != rbtree->rt) && (x->cl == black)) 	
	{																						
		if (x == x->p->l) 
		{
			w = x->p->r;										
			if (w->cl == red) 
			{									
				w->cl = black;
				x->p->cl = red;
				rbt_left_rotate(rbtree, x->p);								
				w = x->p->r;									
			}																																																												
			if ((w->l->cl == black) && (w->r->cl == black)) 
			{	
				w->cl = red;									 
				x = x->p;
			}
			else 
			{
				if (w->r->cl == black) 
				{	
					w->l->cl = black;
					w->cl = red;
					rbt_right_rotate(rbtree, w);
					w = x->p->r;
				}
				w->cl = x->p->cl;	
				x->p->cl = black;
				w->r->cl = black;
				rbt_left_rotate(rbtree, x->p);
				x = rbtree->rt;
			}
		}
		else 
		{
			w = x->p->l;
			if (w->cl == red) 
			{			
				w->cl = black;
				x->p->cl = red;
				rbt_right_rotate(rbtree, x->p);	
				w = x->p->l;			
			}
			if ((w->l->cl == black) && (w->r->cl == black)) 
			{	
				w->cl = red;									 
				x = x->p;
			}
			else 
			{
				if (w->r->cl == black) 
				{			
					w->l->cl = black;
					w->cl = red;
					rbt_right_rotate(rbtree, w);
					w = x->p->r;
				}
				w->cl = x->p->cl;				
				x->p->cl = black;
				w->r->cl = black;
				rbt_right_rotate(rbtree, x->p);
				x = rbtree->rt;
			}
		}
	}
	x->cl = black;
}

node *rbt_minimum(tree rbtree, node *x) 
{
   /*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and insertion at least of one node (x) (a not NULL pointer of node data type) in the red black tree
   * After: Finds the node whith the minimum key (a pointer of TyposStoixeioyrbt data type) of the sub-tree that starts from node x of the red black tree 
   */   
  	assert(rbtree != NULL);
	assert(x != NULL);  
	while (x->l != NULL)
		x = x->l;
	return x;
}

node *rbt_search(tree rbtree, void *s, int (* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour)(void*, void*),int (* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour)(void*, void*)) 
{
	/*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type), insertion at least of root node (a not NULL pointer of node data type) in the red black tree, initialization of the field key (one not NULL pointer of TyposStoixeioyrbt data type) of the root node and creation (not NULL) of one not NULL pointer (s) of TyposStoixeioyrbt data type 
   * After: Finds the node in the red black tree with the same key (if exists) as in the pointer s which is a pointer of TyposStoixeioyrbt data type     
   */
  	/*
   * Definitions of Functions at parameter list
   * 1)TyposStoixeioyrbt_cmp_if_targ_diff_than_sour(void *target, void *source)
   * Before: Creation of the two pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target's key_TyposStoixeioyrbt<source's key_TyposStoixeioyrbt  else 0
   * 2)TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour(void *target, void *source)
   * Before: Creation of the two pointers target and source of TyposStoixeioyrbt data type
   * After: Returns 1 if target's key_TyposStoixeioyrbt is different from the source's key_TyposStoixeioyrbt else 0
   */  
  	assert(rbtree != NULL);
	assert(rbtree->rt != NULL);
	assert(rbtree->rt->key != NULL);  
	assert(s != NULL);    
	node *aux;
	aux = rbtree->rt;

	while ((aux != NULL) && ((* TyposStoixeioyrbt_cmp_if_targ_diff_than_sour) (s, aux->key))) 
	{
		if ((* TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour) (s, aux->key))
			{
				aux = aux->l;
			}
		else
			{
				aux = aux->r;
			}
	}
	return aux;
}

void rbt_print(tree rbtree, node *x, void (* TyposStoixeioyrbt_print) (void*), int *error) 
{
	/*
   * Before: Creation of the red black tree (a not NULL pointer of tree data type) and a node (x) (a pointer of node data type) in the red black tree 
   * After: Prints the sub-tree that starts from node x and returns the integer (error) pointer. If *error=0 then succesfull printing. If *error=1 then empty red black tree.
   */ 
  	/*
   * Definitions of Functions at parameter list
   * 1)TyposStoixeioyrbt_print(void *target)
   * Before: Creation of a pointer target of TyposStoixeioyrbt data type and insertion of the pointer's field key_TyposStoixeioyrbt 
   * After: Prints the field key_TyposStoixeioyrbt of the pointer target of TyposStoixeioyrbt data type 
   */
    *error=0;
  	assert(rbtree != NULL); 
	if ((rbtree->rt != NULL)&&(rbtree->rt->key != NULL) && (x != NULL)) 
	{
		if (x->l != NULL)
			rbt_print(rbtree, x->l, (* TyposStoixeioyrbt_print),error);
		
		if (x->cl == black){
			(* TyposStoixeioyrbt_print)(x->key);
			printf(" 'black', ");}
		else if (x->cl == red){
			(* TyposStoixeioyrbt_print)(x->key);
			printf(" 'red', ");}
	
		if (x->r != NULL)
			rbt_print(rbtree, x->r, (* TyposStoixeioyrbt_print), error);
	}
	else 
	{
		*error=1;
		
		return;
	}
}