#include <stdio.h>
#include <stdlib.h>
int Pinakas[16];
char c;

void PRINT_ARRAY();
void INSERT_MERGE();
void MERGE(int C[], int arxi, int telos);
void MERGESORT(int A[], int a, int t);

int main(void)
{
	int arxi, telos, a, t;
	a=0;
	t=15;
	c='*';
	while(c!='q')
	{
		printf("\n Insert (i), Merge (m), Mergesort (s), Print (p), Quit (q):");
	    scanf("%c",&c);
	    if(c=='i')
	    	INSERT_MERGE();
		if(c=='m')
	        MERGE(Pinakas, a, t);
	    if(c=='s')
	        MERGESORT(Pinakas, a, t);
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
	for(j=0; j<16; j++)
	printf("\n A[%d]=%d \n", j, Pinakas[j]);
}

void INSERT_MERGE()
{
	int i, k;
	printf("\n Vale 16 nea stoixeia ston pinaka \n");
	for(i=0;i<=15;i++)
	{
		scanf("%d", &k);
		Pinakas[i]=k;
		printf("\n To neo stoixeio pou evales einai to: %d \n", Pinakas[i]);
	}
}

void MERGE(int C[], int arxi, int telos)
{
	int p, q, z, i, m, j, k;
	int B[16];
	
	if(arxi!=telos)
	{
	
	   z=arxi;
	   p=arxi;
       m=(arxi+((telos-arxi+1)/(2)));
	   q=m;
	   /*printf("\n %d \n",arxi);
	   printf("\n %d \n",telos);
       printf("\n %d \n",z);
	   printf("\n %d \n",p);
	   printf("\n %d \n",m);
	   printf("\n %d \n",q);*/
	
	
	
		while((p<m)&&(q<telos+1))
		{
			if(Pinakas[p]<=Pinakas[q])
			{
				B[z]=Pinakas[p];
				//printf("\n 1if B[%d]=%d \n", z, B[z]);
				p=p+1;
				z=z+1;
			}
			if(Pinakas[p]>Pinakas[q])
			{
				B[z]=Pinakas[q];
				//printf("\n 2if B[%d]=%d \n", z, B[z]);
				q=q+1;
				z=z+1;
			}	
		}
	    if(p==m)
	    {
	    	for(i=q;i<=telos;i++)
	    	{
			B[i]=Pinakas[i];
			//printf("\n 3if B[%d]=%d \n", i, B[i]);
	        }
		}
		if(q==(telos+1))
	    {
	    	for((j=q-m+p);j<=telos;j++)
	    	{
			B[j]=Pinakas[j-q+m];
			//printf("\n 4if B[%d]=%d \n", j, B[j]);
		    }
		}
		for(k=arxi;k<=telos;k++)
		Pinakas[k]=B[k];
		
	
	    //PRINT_ARRAY();
	}    
}

void MERGESORT(int A[], int a, int t)
{
	int mesi;
	if(a!=t)
	{	mesi=(a+((t-a+1)/(2)));
	    MERGESORT(Pinakas, a, mesi-1);
	    MERGESORT(Pinakas, mesi, t);
    }
    
	  MERGE(A, a, t); 
	  

}

