#include <stdio.h>
#include <stdlib.h>
int Pinakas[10];
int Hsize;
char c;

void PRINT_ARRAY();
void INSERT_HEAP();
void HEAPIFY(int i);
void BUILT_HEAP();
void HEAPSORT();

int main(void)
{
	c='*';
	while(c!='q')
	{
		printf("\n Insert (i), Built heap (b), Heapsort (s), Print (p), Quit (q):");
	    scanf("%c",&c);
	    if(c=='i')
	    	INSERT_HEAP();
		if(c=='b')
	    	BUILT_HEAP();
	    if(c=='s')
	    	HEAPSORT();
		if(c=='p')
	    	PRINT_ARRAY();
			
			printf("\n Press any key to continue...");
			getchar();
		    getchar();			
	}
}
void PRINT_ARRAY()
{
	int j;
	printf("\n O pinakas apoteleitai apo: \n");
	for(j=0; j<10; j++)
	printf("\n A[%d]=%d \n", j, Pinakas[j]);
}

void INSERT_HEAP()
{
	int i, k;
	printf("\n Vale 10 nea stoixeia ston pinaka \n");
	for(i=0;i<=9;i++)
	{
		scanf("%d", &k);
		Pinakas[i]=k;
		printf("\n To neo stoixeio pou evales einai to: %d \n", Pinakas[i]);
	}
	Hsize=9;
}

void HEAPIFY(int i)
{
	int l, k, r, largest;
	l=((2*i)+1);
	r=l+1;
	if((l<=Hsize)&&(Pinakas[l]>Pinakas[i]))
	largest=l;
	else
	largest=i;
	if((r<=Hsize)&&(Pinakas[r]>Pinakas[largest]))
	largest=r;
	if(largest!=i)
	{
		k=Pinakas[i];
		Pinakas[i]=Pinakas[largest];
		Pinakas[largest]=k;
		HEAPIFY(largest);
	}
}

void BUILT_HEAP()
{
	int m;
	
	for(m=4; m>=0; m--)
	HEAPIFY(m);
	
	printf("\n o pinakas egine heap");
	PRINT_ARRAY();
}

void HEAPSORT ()
{
	int q, p;
	BUILT_HEAP();
	for(q=9;q>=1;q--)
	{
		p=Pinakas[0];
		Pinakas[0]=Pinakas[q];
		Pinakas[q]=p;
		Hsize=Hsize-1;
		HEAPIFY(0);
	}
	Hsize=9;
	printf("\n o pinakas taksinomi8ike");
	PRINT_ARRAY();
}
