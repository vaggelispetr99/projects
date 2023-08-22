#include<stdio.h>
#include<stdlib.h>

typedef struct tf *tp;
struct tf
{
	int o;
	int k;
	int st;
	tp next;
	tp previous;
	tp up;
	tp down;
	char c;
	int d;
	tp p;
	tp ffn;
	tp ffn1;
	tp ffn2;
	tp ppn2;
	tp ffn3;
	tp ppn3;
	tp pr;
};

tp t, temp, aux;
tp h[31];

void insert(int d, int u);
void print1(void);
void bfsprint(int r, int f);
void bfs(int o);
void delete1(void);
void cycle();

int main (void)
{
	char fry, fry2;
	int u, d, n, rt, fd;
	fry='a';
	t=NULL;

	while(fry!='q')
	{
		printf("\n Previous choice %c \n", fry);
		if (fry!='q')
		{
			printf("\n Give new choice : i for insert an edge of the graph at sparse array, b for bfs the graph, d for delete an edge of the graph at sparse array, p for print all edges of the graph, c to find cycles of the graph \n");
			fflush(stdin);
			fry=getchar();
			getchar();
			if (fry=='q')
				printf("\n QUIT \n");
			if (fry=='c')
			{
				printf("\n FIND CYCLE OF THE GRAPH \n");
				if(h[1]!=NULL)
				{
					cycle();
				}
			}
			if (fry=='i')
			{
				d=0;
				u=0;
				printf("\n INSERT AN EDGE OF THE GRAPH AT SPARSE ARRAY \n");
				for (int i = 1; i < 31; i++)
				{   
					if(h[i]==NULL)
					{
						h[i]=(tp)malloc(sizeof(struct tf));
						h[i]->o=i;
						h[i]->k=0;
						h[i]->next=NULL;
						h[i]->previous=NULL;
						h[i]->down=NULL;
						h[i]->up=NULL;
						h[i]->p=NULL;
						h[i]->ffn=NULL;
						h[i]->ffn1=NULL;
						h[i]->ffn2=NULL;
						h[i]->ffn3=NULL;
						h[i]->ppn2=NULL;
						h[i]->ppn3=NULL;
						h[i]->pr=NULL;
						h[i]->c='w';
						h[i]->d=1000000;
						h[i]->st=0;
					}
				}
				while((d<1) || (d>30))
				{
					printf("\n Give the number of the node from which the edge starts (an integer between 1-30) \n");
					scanf("%d",&d);
					getchar();
				}
				while((u<1) || (u>30))
				{
					printf("\n Give the number of the node from which the edge stops(an integer between 1-30) \n");
					scanf("%d",&u);
					getchar();
				}
				insert(d, u);
				insert(u, d);
			}
			if (fry=='d')
			{
				printf("\n DELETE AN EDGE OF THE GRAPH AT SPARSE ARRAY \n");
				delete1();
			}
			if (fry=='p')
			{ 
				printf("\n PRINT ALL EDGES OF THE GRAPH FROM SPARSE ARRAY\n");
				if(h[1]!=NULL)
					print1();
			}
			if (fry=='b')
			{ 
				printf("\n BFS THE GRAPH \n");
				n=0;
				if(h[1]!=NULL)
				{
					while((n<1) || (n>30))
					{
						printf("\n insert the root node of the bfs (an integer between 1-30)\n");
						scanf("%d",&n);
						getchar();
					}
					bfs(n);
				}

			}
			if (fry=='e')
			{ 
				printf("\n BFSPRINT \n");
				rt=0;
				fd=0;
				if(h[1]!=NULL)
				{
					while((rt<1) || (rt>30))
					{
						printf("\n insert the node to reach in the BFS of the graph (an integer between 1-30) \n");
						scanf("%d",&rt);
						getchar();
					}
					while((fd<1) || (fd>30))
					{
						printf("\n insert the node to start the search in the BFS of the graph (an integer between 1-30) \n");
						scanf("%d",&fd);
						getchar();
					}
					bfsprint(rt,fd);
				}
			}
		}

	}
	return 0;
}

void insert(int d, int u)
{
    tp temp,aux;
    int dd,uu,i;
    temp=(tp)malloc(sizeof(struct tf));
    dd=d;
    temp->o=dd;
    uu=u;
    temp->k=uu;
    temp->next=NULL;
    temp->previous=NULL;
    temp->down=NULL;
    temp->up=NULL;
    temp->p=NULL;
    temp->ffn=NULL;
    temp->ffn1=NULL;
    temp->ffn2=NULL;
    temp->ffn3=NULL;
    temp->ppn2=NULL;
    temp->ppn3=NULL;
    temp->pr=NULL;
    temp->st=1;
    if ((h[dd]!=NULL) && (h[dd]->next!=NULL) && (temp->k>h[dd]->k))
	{ 
		aux=h[dd];
		while((aux->next!=NULL) && (aux->next->k < temp->k))
		{ 
			aux=aux->next;
			i=i+1;
		}
		if ((aux->next!=NULL) && (aux->next->k != temp->k))
		{
			temp->next=aux->next;
			temp->previous=aux;
			aux->next->previous=temp;
			aux->next=temp;
		}
		if (aux->next==NULL)
		{
			temp->previous=aux;
			aux->next=temp;
			temp->next=NULL;
		}
	}

	if((h[dd]!=NULL) && (h[dd]->next==NULL) && (temp->k > h[dd]->k))
	{
		h[dd]->next=temp;
		temp->previous=h[dd];
	}
	if ((h[uu]!=NULL) && (h[uu]->down!=NULL) && (temp->o>h[uu]->k))
	{ 
		aux=h[uu];
		while((aux->down!=NULL) && (aux->down->o < temp->o))
		{ 
			aux=aux->down;
			i=i+1;
		}
		if ((aux->down!=NULL) && (aux->down->o != temp->o))
		{
			temp->down=aux->down;
			temp->up=aux;
			aux->down->up=temp;
			aux->down=temp;
		}
		if (aux->down==NULL)
		{
			temp->up=aux;
			aux->down=temp;
			temp->down=NULL;
		}
	}

	if((h[uu]!=NULL) && (h[uu]->down==NULL) && (temp->o > h[uu]->k))
	{
		h[uu]->down=temp;
		temp->up=h[uu];
	}
}


void print1(void)
{
	tp aux;
	printf("\n horizontal print of sparse array\n");
	for (int j = 1; j < 31; j++)
	{
		aux=h[j]->next;
		while (aux!=NULL)
		{
			printf("\n Edge: %d, %d", aux->o, aux->k);
			aux=aux->next;
		}
	}
	printf("\n\n vertical print of sparse array\n");
	for (int q = 1; q < 31; q++)
	{
		aux=h[q]->down;
		while (aux!=NULL)
		{
			printf("\n Edge: %d, %d ", aux->o, aux->k);
			aux=aux->down;
		}
	}
}

void delete1(void)
{
	tp temp,aux;
	int dd,uu,i;
	i=2;
	while((dd<1) || (dd>30))
	{
		printf("\n Give the number of the node from which the edge starts (an integer between 1-30) \n");
		scanf("%d",&dd);
		getchar();
	}
	while((uu<1) || (uu>30))
	{
		printf("\n Give the number of the node from which the edge stops(an integer between 1-30) \n");
		scanf("%d",&uu);
		getchar();
	}
	aux=h[dd];
	if((h[dd]!=NULL) && (h[dd]->next!=NULL) && (uu!=h[dd]->k) && (uu>h[dd]->k))
	{
		while((aux->next!=NULL) && (aux!=NULL) && (aux->k!=uu))
		{
			aux=aux->next;
		}
		if((aux->k==uu)&&(aux->o==dd)&&(aux->next!=NULL))
		{
			aux->previous->next=aux->next;
			aux->next->previous=aux->previous;
		}
		if((aux->k==uu)&&(aux->o==dd)&&(aux->next==NULL))
		{
			aux->previous->next=NULL;
		}
		if((aux->k==uu)&&(aux->o==dd))
		{
			if(aux->down==NULL)
			{
				aux->up->down=NULL;
				free(aux);
				aux=NULL;
			}
			else
			{
				aux->up->down=aux->down;
				aux->down->up=aux->up;
				free(aux);
				aux=NULL;
			}
		}
	}
	aux=h[uu];
	if((h[uu]!=NULL) && (h[uu]->next!=NULL) && (dd!=h[uu]->k) && (dd>h[uu]->k))
	{
		while((aux->next!=NULL) && (aux!=NULL) && (aux->k!=dd))
		{
			aux=aux->next;
		}
		if((aux->k==dd)&&(aux->o==uu)&&(aux->next!=NULL))
		{
			aux->previous->next=aux->next;
			aux->next->previous=aux->previous;
		}
		if((aux->k==dd)&&(aux->o==uu)&&(aux->next==NULL))
		{
			aux->previous->next=NULL;
		}
		if((aux->k==dd)&&(aux->o==uu))
		{
			if(aux->down==NULL)
			{
				aux->up->down=NULL;
				free(aux);
				aux=NULL;
			}
			else
			{
				aux->up->down=aux->down;
				aux->down->up=aux->up;
				free(aux);
				aux=NULL;
			}
		}
	}
}

void bfs(int o)
{
	tp temp,auxs,aux1,aux2,aux3,aux4,auxc;
	int s, t;
	for (int j = 1; j < 31; j++)
	{
		auxc=h[j]->next;
		while (auxc!=NULL)
		{
			auxc->st=1;
			auxc=auxc->next;
		}
	}
	for (int i = 1; i < 31; i++)
	{
		h[i]->p=NULL;
		h[i]->ffn=NULL;
		h[i]->c='w';
		h[i]->d=1000000;
	}
	h[o]->c='g';
	h[o]->d=0;
	aux1=h[o]; //holds information
	aux2=h[o]; //knows where at the fifo list we are
	aux3=h[o]; //builds the fifo list
	auxs=h[o]; //moves horizontal at a node
	while(aux2!=NULL)
	{
		while(auxs->next!=NULL)
		{
			s=auxs->next->k;
			t=auxs->next->o;
			if(h[s]->c=='w')
			{
				h[s]->c='g';
				h[s]->d=(aux1->d)+1;
				h[s]->p=aux1;
				aux3->ffn=h[s];
				aux3=h[s];
				auxs->next->st=0;
				aux4=h[s];
				while((aux4->next!=NULL)&&(aux4->k!=t))
				{
					aux4=aux4->next;
				}
				if(aux4->k==t)
				{
					aux4->st=0;
				}
			}
			auxs=auxs->next;
		}
		aux2->c='b';
		aux2=aux2->ffn;
		aux1=aux2;
		auxs=aux2;
	}
}

void bfsprint(int r, int f)
{
	if(h[f]->o==h[r]->o)
	{
		printf("\n There is a path from the starting node to the node the user wnat to reach\n");
		printf("\n h[%d] node is %d\n", r, h[r]->o);
	}
	else if(h[f]->p==NULL)
	{
		printf("\n No path from the starting node to the node the user wnat to reach \n");
	}
	else
	{
		bfsprint(r,h[f]->p->o);
		printf("\n h[%d] node is %d \n", f, h[f]->o);
	}
}

void cycle()
{
	tp aux,auxe,auxf,aux5,aux6,aux7,aux8,aux9,aux10,aux11,aux12,auxs;
	int x, y, f, p, a;
	aux5=NULL;
	aux6=NULL;
	for (int i = 1; i < 31; i++)
	{
		auxe=h[i]->next;
		while (auxe!=NULL)
		{
			auxe->ffn1=NULL;
			auxe->ffn2=NULL;
			auxe->ffn3=NULL;
			auxe->ppn2=NULL;
			auxe->ppn3=NULL;
			auxe->pr=NULL;
			auxe=auxe->next;
		}
	}
	for (int j = 1; j < 31; j++)
	{
		aux=h[j]->next;
		while (aux!=NULL)
		{
			if((aux->st==1)&&(aux5==NULL))
			{
				aux5=aux;
				aux6=aux5;
			}
			if((aux->st==1)&&(aux5!=NULL))
			{
				aux6->ffn1=aux;
				aux6=aux;
			}
			aux=aux->next;
		}

	}
	p=0;
	while((aux5!=NULL)&&(p!=1))
	{
		f=0;
		for (int k = 1; k < 31; k++)
		{
			auxf=h[k]->next;
			while (auxf!=NULL)
			{
				auxf->ffn2=NULL;
				auxf->ffn3=NULL;
				auxf->ppn2=NULL;
				auxf->ppn3=NULL;
				auxf->pr=NULL;
				auxf=auxf->next;
			}
		}
		for (int q = 1; q < 31; q++)
		{
			h[q]->ffn2=NULL;
			h[q]->ffn3=NULL;
			h[q]->ppn2=NULL;
			h[q]->ppn3=NULL;
			h[q]->pr=NULL;
		}
		x=aux5->o; // horizontal component
		y=aux5->k; // vertical comonent
		aux7=h[x]; // vertex1 starts the search at bfs
		aux9=aux7; // build list1 path
		aux8=h[y]; // vertex2 starts the search at bfs
		aux10=aux8; // build list2 path
		aux11=aux7; // holds list1 of the on part of the cycle
		aux12=aux8; // holds list2 of the on part of the cycle
		while(aux7->p!=NULL)
		{
			aux7->ffn2=aux7->p;
			aux7->ffn2->ppn2=aux7;
			aux7=aux7->p;
		}
		while(aux8->p!=NULL)
		{
			aux8->ffn3=aux8->p;
			aux8->ffn3->ppn3=aux8;
			aux8=aux8->p;
		}
		if(aux7==aux8)
		{
			printf("\n The cycle is:\n");
			p=1;
			while((aux9!=NULL)&&(f!=1))
			{
				while((aux10!=NULL)&&(f!=1))
				{
					if(aux9==aux10)
					{
						f=1;
						auxs=aux10;
					}
					else
					{
						aux10=aux10->ffn3;
					}
				}
				aux10=aux12;
				aux9=aux9->ffn2;
			}
			aux10=aux12;
			aux9=aux11;
			while(aux9!=auxs)
			{
				aux9->pr=aux9->ffn2;
				aux9=aux9->ffn2;
			}
			while(auxs!=aux10)
			{
				auxs->pr=auxs->ppn3;
				auxs=auxs->ppn3;
			}
			a=0;
			while(aux11!=NULL)
			{
				a=a+1;
				printf("\n %d node of the cycle is %d ", a, aux11->o);
				aux11=aux11->pr;
			}
		}
		aux5=aux5->ffn1;
	}

}