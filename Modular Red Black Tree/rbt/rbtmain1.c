#include <stdio.h>
#include <stdlib.h>
#include "rbt1.h"
#include "tstoixeioyrbt.h"
#include "tstoixeioyrbt1.h"

int main (void)
	 {
	 	char fry;
	 	fry='o';
		int error;
        tree rbttree1, rbttree2;
		TyposStoixeioyrbt *new_TyposStoixeioyrbt; // struct with string
		TyposStoixeioyrbt1 *new_TyposStoixeioyrbt1; //struct with integer
		rbttree2=rbt_constructor(); //tree for integers (tree 2)
		rbttree1=rbt_constructor(); //tree for strings  (tree)
		
	 	printf("\n RED BLACK TREE STRUCTURE \n");
	 	while(fry!='q')
	 	{
	 		printf("\n Previous choice '%c' \n", fry);
	 		if (fry!='q')
	 		{
	 			printf("\n Give new choice :\n 'i' for insert (a string with 14 charachters length. If you insert more than 14 charachters, the additional characters will be ignored) in red black tree,\n 'd' for delete (a string with 14 charachters length. If you insert more than 14 charachters, the additional characters will be ignored) from red black tree,\n 'p' for print the red black tree,\n 'a' for insert (an integer. If you don't insert an integer the charachter will transform to its integer) in red black tree 2,\n 'b' for delete (an integer. If you don't insert an integer the charachter will transform to its integer) from red black tree 2,\n 'c' for print the red black tree 2,\n 'q' for quit \n");
	 			
	 			fflush(stdin);
	 			fry=getchar();
	 			getchar();
	 			if (fry=='q') 
				 { 
				    printf("\n QUIT \n");
					break;
				 }
	 			if (fry=='i')
	 			{
					new_TyposStoixeioyrbt= TyposStoixeioyrbt_constructor();
					printf("\n Type the string key of the new node you want to insert : \n");
					TyposStoixeioyrbt_insert(new_TyposStoixeioyrbt);
					TyposStoixeioyrbt_print(new_TyposStoixeioyrbt);
	 				rbt_insert(rbttree1, TyposStoixeioyrbt_cmp_if_targ_diff_than_sour, TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour, TyposStoixeioyrbt_assign, &TyposStoixeioyrbt_constructor, new_TyposStoixeioyrbt, &error);
					if(error==1)
					{
						printf("\n Becomes root, Successful Insert in red black tree\n");
					}
					else if (error==2)
					{
						printf("\nSuccessful Insert in red black tree \n");
					}
					else
					{
						printf("\n There is another node with this string key in red black tree, please insert a different string key by pressing 'i' again\n ");
					}
			
				}	 
				 if (fry=='d')
				{
					new_TyposStoixeioyrbt= TyposStoixeioyrbt_constructor();
					printf("\n Type the key of the node you want to delete : \n");
					TyposStoixeioyrbt_insert(new_TyposStoixeioyrbt);
					TyposStoixeioyrbt_print(new_TyposStoixeioyrbt);			
					rbt_delete(rbttree1, TyposStoixeioyrbt_cmp_if_targ_diff_than_sour, TyposStoixeioyrbt_cmp_if_targ_lesser_than_sour, new_TyposStoixeioyrbt, &error);
					if(error==1)
					{
						printf("\n Successful Delete from red black tree \n");
					}
					else if (error==2)
					{
						printf("\n Empty RED BLACK TREE \n");
					}
					else
					{
						printf("\n There is not a node with the string key you gave, unsuccessful delete from red black tree \n");
					}
					
				}
			     if (fry=='p')
				 {
					 		printf("\n Printing the red black tree \n");	
							rbt_print(rbttree1, rbt_root(rbttree1), TyposStoixeioyrbt_print, &error);
							if(error==1)
							{
								printf("\n Empty RED BLACK TREE \n");
							}
				 }
				 if (fry=='a')
	 			{
					new_TyposStoixeioyrbt1= TyposStoixeioyrbt1_constructor();
					printf("\n Type the integer key of the new node you want to insert in red black tree 2: \n");
					TyposStoixeioyrbt1_insert(new_TyposStoixeioyrbt1);
					TyposStoixeioyrbt1_print(new_TyposStoixeioyrbt1);
	 				rbt_insert(rbttree2, TyposStoixeioyrbt1_cmp_if_targ_diff_than_sour, TyposStoixeioyrbt1_cmp_if_targ_lesser_than_sour, TyposStoixeioyrbt1_assign, &TyposStoixeioyrbt1_constructor, new_TyposStoixeioyrbt1, &error);
					if(error==1)
					{
						printf("\n Becomes root, Successful Insert in red black tree 2\n");
					}
					else if (error==2)
					{
						printf("\nSuccessful Insert in red black tree 2\n");
					}
					else
					{
						printf("\n There is another node with this key in red black tree 2, please insert a different integer key by pressing 'a' again\n ");
					}
			
				}	 
				 if (fry=='b')
				{
					new_TyposStoixeioyrbt1= TyposStoixeioyrbt1_constructor();
					printf("\n Type the integer key of the node you want to delete from red black tree 2: \n");
					TyposStoixeioyrbt1_insert(new_TyposStoixeioyrbt1);
					TyposStoixeioyrbt1_print(new_TyposStoixeioyrbt1);			
					rbt_delete(rbttree2, TyposStoixeioyrbt1_cmp_if_targ_diff_than_sour, TyposStoixeioyrbt1_cmp_if_targ_lesser_than_sour, new_TyposStoixeioyrbt1, &error);
					if(error==1)
					{
						printf("\n Successful Delete from red black tree 2\n");
					}
					else if (error==2)
					{
						printf("\n Empty RED BLACK TREE 2\n");
					}
					else
					{
						printf("\n There is not a node with the integer key you gave, unsuccessful delete from red black tree 2\n");
					}
					
				}
			     if (fry=='c')
				 {
					 		printf("\n Printing the red black tree 2\n");	
							rbt_print(rbttree2, rbt_root(rbttree2), TyposStoixeioyrbt1_print, &error);
							if(error==1)
							{
								printf("\n Empty RED BLACK TREE 2\n");
							}
				 }
			 }
			 
		 }
	return 0;
	 }