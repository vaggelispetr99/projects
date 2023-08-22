#include <stdio.h>
#include <math.h>
#include <complex.h>
#include <pthread.h>
#define NUM_CHARS 51

void *print1(void *arg)
{
int w, k;
double x;
double complex z1;
k=0;
printf("\033[1;36m Calculate and Print cos(i*w)=[exp(i*i*w)+exp(-i*i*w)]/2=[exp(-w)+exp(w)]/2 for w=(0,1,2,3...,50)\n\033[0m");
for (w = 0; w < NUM_CHARS; w++)
{
   x=w;
   z1=(exp(-x)+exp(x))/2;
   printf("\033[1;36m cos(i*%d)=[exp(i*i*%d)+exp(-i*i*%d)]/2=[exp(-%d)+exp(%d)]/2 = %lf + (%lf)i\n\033[0m", k, k, k, k, k, creal(z1),cimag(z1));
    k=k+1;
}
return NULL;
}
void *print2(void *arg)
{
int w, k;
double x;
double complex z1;
k=0;
printf("\033[1;32m Calculate and Print sin(i*w)=[exp(i*i*w)-exp(-i*i*w)]/(2*i)=[exp(-w)-exp(w)]/(2*i) for w=(0,1,2,3...,50)\n\033[0m");
for (w = 0; w < NUM_CHARS; w++)
{
   x=w;
   z1=I*(exp(x)-exp(-x))/2;
   printf("\033[1;32m sin(i*%d)=[exp(i*i*%d)-exp(-i*i*%d)]/(2*i)=[exp(-%d)-exp(%d)]/(2*i) = %lf + (%lf)i\n\033[0m", k, k, k, k, k, creal(z1),cimag(z1));
    k=k+1;
}
return NULL;
}
int main(void)
{
pthread_t t1, t2;
printf("\n Creating threads\n");
pthread_create(&t1, NULL, print1, NULL);
pthread_create(&t2, NULL, print2, NULL);
printf("\n Joining threads\n");
pthread_join(t1, NULL);
pthread_join(t2, NULL);
printf("\n Exiting\n");
return 0;
}