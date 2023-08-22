#include<stdio.h>
#include<stdlib.h>

typedef struct tf *tp;
	struct tf
	{ int am;
	  double gr;
	  tp next;
	};
	tp h, t, temp, aux;
	void insert(tp *h,tp t);
	void print1(tp h);
	void print2(tp h);
	void delete1(tp *h,tp t);
	
	int main (void)
	 {
	 	char fry, fry2;
	 	
	 	fry='a';
	 	h=NULL;
	 	t=NULL;
	 	
	 	while(fry!='q')
	 	{
	 		printf("\n Previous choice %c \n", fry);
	 		if (fry!='q')
	 		{
	 			printf("\n Give new choice : i for insert new student, a for print a student, d for delete a student, p for print a student \n");
	 			
	 			fflush(stdin);
	 			fry=getchar();
	 			getchar();
	 			if (fry=='q') 
				 printf("\n QUIT \n");
	 			if (fry=='i')
	 			{
	 				printf("\n INSERT \n");
	 				insert(&h,t);
				 }
				 if (fry=='d')
				{printf("\n DELETE \n");
				   delete1(&h,t); 
				}
				 if (fry=='p')
				 {	printf("\n PRINT_1 \n");
				  	print1(h);
				 }
			     if (fry=='a')
				 {	printf("\n PRINT_2 \n");
				  	print2(h);
				 }
			 }
			 
		 }
	return 0;
	 }
	 
	 void insert(tp *h, tp t)
	 {
	 	tp temp,aux;
	 	int da,i;
	 	i=2;
	 	temp=(tp)malloc(sizeof(struct tf));
	 	printf("\n Give me the AM interger of the student \n");
	 	scanf("%d",&da);
	 	getchar();
	 	temp->am=da;
	 	temp->next=NULL;
	 	printf("\n The AM of temp student is %d \n", temp->am);
	 	if ((*h!=NULL) && (temp->am<(*h)->am))
	 	{ temp->next=*h;
	 	   *h=temp;
			printf("\n ginetai head stin lista \n") ;
		 }
	 	if ((*h!=NULL) && ((*h)->next!=NULL) && (temp->am>(*h)->am))
	    { aux=*h;
		  	  
		  	  while((aux->next!=NULL) && (aux->next->am < temp->am))
		  	  		{ aux=aux->next;
		  	  		 i=i+1;
		            }
		            printf("\n ginetai %d stin lista \n", i) ;
		  	  		if ((*h!=NULL) && ((*h)->next!=NULL) && (temp->am<(*h)->next->am))
					{printf("\n ginetai deytero stin lista \n") ;
					}
					temp->next=aux->next;
		  	  		aux->next=temp;
		  	  		printf("\n epomenos \n") ; 
		}  
				
		if((*h!=NULL) && ((*h)->next==NULL) && (temp->am > (*h)->am))
	    {	printf("\n ginetai deytero stin lista \n") ;
			(*h)->next=temp;
			t=temp;
		}
		if ((*h)==NULL)
		{ printf("\n The head stin lista is NULL \n");
		 *h=temp;
		  t=temp;
		  printf("\n First stin lista %d \n", temp->am);
		}
	 }
	 
	 void print2(tp h)
	 {
	 	tp aux;
	 	aux=h;	
		  
	 	if(aux!=NULL)
	 	{ 
		 printf("\n Current is %d ", aux->am);
	    
		print2(aux->next);
	    }
		 }
	 void print1(tp h)
    {
    tp aux;
    aux=h;
    while (aux!=NULL)
     {
        printf("\n Current is %d ", aux->am);
        aux=aux->next;
     }
    }
    void delete1(tp *h,tp t)
    {	
	tp temp,aux;
	 	int da,i;
	 	i=2;
	 	printf("\n Give me the AM interger to delete \n");
	 	scanf("%d",&da);
	 	getchar();
	 	aux=*h;
	       if ((*h)==NULL)
		   { printf("\n The head stin lista is NULL \n");
		   }
		   if((*h!=NULL) && (da==(*h)->am))
		   {
		   *h=(*h)->next;
		   free(aux);
		   printf("\n The head stin lista is deleted \n");
		   }					    
             if((*h!=NULL) && ((*h)->next!=NULL) && (da!=(*h)->am) && (da>(*h)->am)) 
		     {
		      
		         while((aux->next!=NULL) && (aux->next->am!=da))
		         {
		          aux=aux->next;
		          i=i+1;
		         }
		         printf("\n diegrapsa ton %d apo tin lista \n", i) ;
		      if(aux->next->am==da)
		      {
		       temp=aux->next;
		       aux->next=aux->next->next;
		       free(temp);
			  }
			} 
	    
	}
