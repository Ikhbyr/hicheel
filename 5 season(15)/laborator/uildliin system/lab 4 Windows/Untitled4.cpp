#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

int i=2;

void * primenum(void * args){
  int j, count;
    count = 0;
    if(i<100){

    for (j = 2; j<=i/2; j++)
    {
  		if(i%j == 0)
  		{
     		count++;
  	  		break;
		}
    }
    if(count == 0 && i!= 1  )
    {
		printf("%d-prime number\n", i);
	}
	else printf("%d-not prime num\n", i);
	i++;
}}

int main(){

  pthread_t thread[100];

  for(int i=0; i<100; i++){
  pthread_create(&thread[i], NULL, primenum, NULL);
  pthread_join(thread[i], NULL);
}
  return 0;
}
