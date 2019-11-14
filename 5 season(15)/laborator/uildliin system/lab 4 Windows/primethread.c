#include<stdio.h>
#include<pthread.h>
unsigned int shared_data = 1;
pthread_mutex_t mutex;
unsigned int rc;
pthread_t* tid[100];
void* isPrime(void*);
int check_prime(int a);
int main(){
    int i, threads=100;
    for (i = 0; i < threads; i++) {
        //printf("\t%d thread\n",i);
		pthread_create(&tid[i], NULL, &isPrime,0);
	}
	for (i = 0; i < threads; i++) {
		pthread_join(tid[i], NULL);
	}
    return 0;
}
void* isPrime(void *ptr){
    int i;
    int count=0,lol=1;
    for(shared_data=1;shared_data<=100;shared_data++){
        count=check_prime(shared_data);
        if(count==1){
            printf("%d: PrimeIs:%d \n",lol,shared_data);
            lol++;
        }
    }
}
int check_prime(int a)
{
    int c;
    if ( a == 2 || a == 3 || a == 5 || a ==7) //check if the number is 2
    {
        return 1;
    }
    else if (a % 2 == 0 || a % 3 == 0 || a % 5 == 0 || a % 7 == 0) //check if the number is even
    {
        return 0;
    }
    else //for odd numbers, check if they are prime
    {
        for (c = 11; c <= a - 1; c+=2)
        {
            if (a%c == 0)
            return 0;
        }
        if ( c == a)
            return 1;
    }
}
