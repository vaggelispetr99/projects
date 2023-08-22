#include<stdio.h>
#include<stdlib.h>

typedef struct tf *tp;
	struct tf
	{ int am;
	  double gr;
	  tp next;
	};
	tp sp, bp, temp, aux;
	void push(tp *sp,tp bp);
	void print1(tp sp);
	void print2(tp sp);
	void pop(tp *sp,tp bp);
	
	int main (void)
	 {
	 	char fry, fry2;
	 	
	 	fry='a';
	 	sp=NULL;
	 	bp=NULL;
	 	
	 	while(fry!='q')
	 	{
	 		printf("\n Previous choice %c \n", fry);
	 		if (fry!='q')
	 		{
	 			printf("\n Give new choice : i for push to the stuck, a for print the stuck, d for pop from the stuck, p for print the stuck, q for quit \n");
	 			
	 			fflush(stdin);
	 			fry=getchar();
	 			getchar();
	 			if (fry=='q') 
				 printf("\n QUIT \n");
	 			if (fry=='i')
	 			{
	 				printf("\n PUSH \n");
	 				push(&sp,bp);
				 }
				 if (fry=='d')
				{printf("\n POP \n");
				   pop(&sp,bp); 
				}
				 if (fry=='a')
				 {	printf("\n PRINT_1 \n");
				  	print1(sp);
				 }
			     if (fry=='p')
				 {	printf("\n PRINT_2 \n");
				  	print2(sp);
				 }
			 }
			 
		 }
	return 0;
	 }
	 
	 void push(tp *sp, tp bp)
	 {
	 	tp temp,aux;
	 	int da;
	 	temp=(tp)malloc(sizeof(struct tf));
	 	printf("\n Give me the  interger index of the register \n");
	 	scanf("%d",&da);
	 	getchar();
	 	temp->am=da;
	 	temp->next=NULL;
	 	printf("\n The index integer of the register is %d \n", temp->am);
	 	if (*sp!=NULL)
	 	{ temp->next=*sp;
	 	   *sp=temp;
			printf("\n temp %d becomes head at list \n", temp->am) ;
		 }
		if ((*sp)==NULL)
		{ printf("\n The head at list is NULL \n");
		 *sp=temp;
		  bp=temp;
		  printf("\n First head at list is  %d \n", temp->am);
		}
	 }
	 
	 void print2(tp sp)
	 {
	 	tp aux;
	 	aux=sp;	
		if(aux==NULL) 
		{
		printf("\n End of list  \n");
		} 
	 	if(aux!=NULL)
	 	{ 
		 printf("\n Current is %d ", aux->am);
	    
		print2(aux->next);
	    }
	 }
	 void print1(tp sp)
    {
    tp aux;
    aux=sp;
    while (aux!=NULL)
     {
        printf("\n Current is %d ", aux->am);
        aux=aux->next;
     }
    }
    void pop(tp *sp,tp bp)
    {	
	tp temp,aux;
	 	aux=*sp;
	       if ((*sp)==NULL)
		   { printf("\n The head at list is NULL \n");
		   }
		   if(*sp!=NULL)
		   {printf("\n The integer %d at list is deleted \n", aux->am);
		   *sp=(*sp)->next;
		   free(aux);
		   printf("\n The head at list is deleted \n");
		   }					       
	}
