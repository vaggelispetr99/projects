#include<stdio.h>
#include<stdlib.h>

typedef struct tf *tn;
	struct tf
	{ int key;
	  tn r;
	  tn l;
	};
	tn rt, root, temp, te, aux1, aux2, aux3, aux4, aux5, tmp;
	void tree_insert(tn *rt);
	void tree_find(tn *rt);
	void tree_find2(tn *rt);
	void tree_find3(tn *aux3);
	void tree_find4(tn *aux3);
	void print1(tn rt);
	void tree_delete1(tn *rt);
	
	int main (void)
	 {
	 	char fry, fry2;
	 	int k, da, de;
	 	fry='a';
	 	rt=NULL;
	 	
	 	
	 	while(fry!='q')
	 	{
	 		printf("\n Previous choice %c \n", fry);
	 		if (fry!='q')
	 		{
	 			printf("\n Give new choice : i for insert, d for delete, p for print \n");
	 			
	 			fflush(stdin);
	 			fry=getchar();
	 			getchar();
	 			if (fry=='q') 
				 { 
				    printf("\n QUIT \n");
				 }
	 			if (fry=='i')
	 			{
	 				if ((rt)==NULL)
		            { printf("\n The root is NULL \n");
		              rt=(tn)malloc(sizeof(struct tf));
		              printf("\n Give me the key of root \n");
		              scanf("%d",&k);
		              getchar();
		              rt->key=k;
		              rt->r=NULL;
	 	              rt->l=NULL;
	 	              
		              printf("\n The key of root is %d \n", rt->key);
		              root=rt;
                    }
                    else
                    {
					 temp=(tn)malloc(sizeof(struct tf));
	 	             printf("\n Give me the key of temp \n");
	 	             scanf("%d",&da);
	 	             getchar();
	 	             temp->key=da;
	 	             temp->r=NULL;
	 	             temp->l=NULL;
	 	             
	 	             printf("\n The key is %d \n", temp->key);
	 				 printf("\n TREE_INSERT \n");
	 				
	 				tree_insert(&rt);
	 			    }
				 }
				 if (fry=='d')
				{
					if ((rt)!=NULL)
					{
						 te=(tn)malloc(sizeof(struct tf));
	 	                 printf("\n Give me the key of te to delete \n");
	 	                 scanf("%d",&de);
	 	                 getchar();
	 	                 te->key=de;
	 	                 printf("\n The key is to delete is %d \n", te->key);
				         printf("\n TREE_DELETE \n");
				         aux1=rt;
				         tree_delete1(&rt);
					}
					else 
					{
					    printf("\n The root is NULL \n");
					}
				}
			     if (fry=='p')
				 {	printf("\n PRINT_1 \n");
				  	print1(rt);
				 }
			 }
			 
		 }
	return 0;
	 }
	 
	 void tree_insert(tn *rt)
	 {
	 
	 
	 	
	    	if(temp->key<(*rt)->key)
	    	{
	    		if((*rt)->l!=NULL)
	    		{
	    			tree_insert(&(*rt)->l);		
				}
	    		else
	    		{
	    			(*rt)->l=temp;
				}
			}
			if(temp->key>(*rt)->key)
	    	{
	    		if((*rt)->r!=NULL)
	    		{
	    			tree_insert(&(*rt)->r);		
				}
	    		else
	    		{
	    			(*rt)->r=temp;
				}
				
			}
	   	
	 }
	 void tree_find(tn *rt)
	 {   
	 	 if(te->key<(*rt)->key)
	    	{
	    		if((*rt)->l!=NULL)
	    		{
	    			aux1=*rt;
	    			tree_find(&(*rt)->l);		
				}	    	
			}
		if(te->key>(*rt)->key)
	    	{
	    		if((*rt)->r!=NULL)
	    		{
	    			aux1=*rt;
	    			tree_find(&(*rt)->r);		
				}
			}
    }
	 void tree_find2(tn *rt)
	 {
        if(te->key<(*rt)->key)
	    	{
	    		if((*rt)->l!=NULL)
	    		{
	    			tree_find2(&(*rt)->l);		
				}
	    		else
	    		{
	    			aux2=*rt;
				}
			}
		if(te->key>(*rt)->key)
	    	{
	    		if((*rt)->r!=NULL)
	    		{
	    			tree_find2(&(*rt)->r);		
				}
	    		else
	    		{
	    				aux2=*rt;
				}
				
			}
		if(te->key==(*rt)->key)	
		{
			aux2=*rt;
		}
	 }
	 	 void tree_find3(tn *aux3)
	 {   
	 	 if((*aux3)->r!=NULL)
	    	{
	    		if((*aux3)->key<(*aux3)->r->key)
	    		{
	    			aux4=(*aux3)->r;
	    			tree_find3(&(*aux3)->r);		
				}	    	
			}
		/*if((*aux3)->r!=NULL)
	    	{
	    		if((*aux3)->key>(*aux3)->r->key)
	    		{
	    			aux4=(*aux3);
	    			tree_find3(&(*aux3)->r);		
				}	    	
			}*/		
			
    }
     void tree_find4(tn *aux3)
	 {   
	 	 if((*aux3)->r!=NULL)
	    	{
	    		if((*aux3)->key<(*aux3)->r->key)
	    		{
	    			aux5=(*aux3);
	    			tree_find4(&(*aux3)->r);		
				}	    	
			}
			/*if((*aux3)->r!=NULL)
	    	{
	    		if((*aux3)->key>(*aux3)->r->key)
	    		{
	    			
	    			tree_find4(&(*aux3)->r);		
				}	    	
			}*/		
    }
	 void print1(tn rt)
	 {
	 	tn aux;
	 	aux=rt;	
		  
	 	if(aux!=NULL)
	 	{
	 		if(aux->l!=NULL)
	 		{
	 			print1(aux->l);
			}
	printf("\n Current is %d ", aux->key);
			if(aux->r!=NULL)
	 		{
	 			print1(aux->r);
			}
		} 
	 	else
	 {
		printf("\n  root is null \n");
	 } 
	 }
	
    void tree_delete1(tn *rt)
    { tree_find(&(*rt));
	  tree_find2(&(*rt));
	  if(te->key==aux2->key)
      {
	       
		 
		   if((aux2->l==NULL)&&(aux2->r==NULL)) //leaf
		   {
		   	 if(aux1->l==aux2)
		   	 {
		   	 	aux1->l=NULL;
		   	 	free(aux2);
		   	 	
			 }
		   	 if(aux1->r==aux2)
		   	 {
		   	 	aux1->r=NULL;
		   	 	free(aux2);
			 }
			 if(aux1==aux2)
		   	 {
		   	    *rt=NULL;
		   	    
		   	    
		   	    
			 }
		   }
		    if((aux2->l==NULL)&&(aux2->r!=NULL)) // 1 child
		   	{
		   	  if(aux1->l==aux2)
		   	  {
		   	 	aux1->l=aux2->r;
		   	 	free(aux2);
			  }
		   	  if(aux1->r==aux2)
		   	  {
		   	 	aux1->r=aux2->r;
		   	 	free(aux2);
			  }
			   if(aux1==aux2)
		   	  {
			   
		   	 	*rt=aux2->r;
		   	 
			  }
			}
	      if((aux2->l!=NULL)&&(aux2->r==NULL))
		   	{
		   	  if(aux1->l==aux2)
		   	  {
		   	 	aux1->l=aux2->l;
		   	 	free(aux2);
		   	 	
			  }
		   	  if(aux1->r==aux2)
		   	  {
		   	 	aux1->r=aux2->l;
		   	 	free(aux2);
			  }
			  if(aux1==aux2)
		   	  {
		   	  
		   	 	*rt=aux2->l;
		   	 	
			  }
			}
		 if((aux2->l!=NULL)&&(aux2->r!=NULL))
		   	{
		   	  	aux3=aux2->l;
				aux4=aux3;
				tree_find3(&aux3);
				aux5=aux2;
				tree_find4(&aux3);
			    if(aux1->l==aux2)
				{
					if(aux5->r==aux4)
					{
						aux5->r=aux4->l;
						aux1->l=aux4;
						aux4->r=aux2->r;
						aux4->l=aux2->l;
						free(aux2);
					}
					if(aux5->l==aux4)
					{
						aux5->l=aux4->l;
						aux1->l=aux4;
						aux4->r=aux2->r;
						aux4->l=aux2->l;
						free(aux2);
					}
				}
				 if(aux1->r==aux2)
				{
					if(aux5->r==aux4)
					{
						aux5->r=aux4->l;
						aux1->r=aux4;
						aux4->r=aux2->r;
						aux4->l=aux2->l;
						free(aux2);
					}
					if(aux5->l==aux4)
					{
						aux5->l=aux4->l;
						aux1->r=aux4;
						aux4->r=aux2->r;
						aux4->l=aux2->l;
						free(aux2);
					}
				}
				 if(aux1==aux2)
				{
					if(aux5->r==aux4)
					{
						aux5->r=aux4->l;
						aux4->r=aux2->r;
						aux4->l=aux2->l;
					
						*rt=aux4;
						free(aux2);
					}
					if(aux5->l==aux4)
					{
						aux5->l=aux4->l;
						aux4->r=aux2->r;
						aux4->l=aux2->l;
						
						*rt=aux4;
						free(aux2);
					}
				}         
			  
			}
	  }
	else
	 {
		printf("\n wrong key to delete give me another key to delete \n");
	 }
    }
