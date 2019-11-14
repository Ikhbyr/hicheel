#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int threads;
int checkPrime(void* val)
{
    int a = *(int*)val;
    int c;
    if (a==2||a==3||a==5||a==7)
    {
        printf("PrimeIs:%d \n",a);
    }
    else if(a%2==0||a%3==0||a%5==0||a%7==0)
    {
        return 0;
    }
    else
    {
        for(c=11;c<=a-1;c+=2)
        {
            if (a%c == 0)
            return 0;
        }
        if(c==a)
            printf("PrimeIs:%d \n",a);
    }
}

int main()
{
	pthread_t* tid;
	int* arr;
    threads = 100;

	tid = (pthread_t*)malloc(sizeof(pthread_t) * threads);
	arr = (int*)malloc(sizeof(int) * threads);


	for (int i = 0; i < threads; i++) {
		arr[i] = i + 1;
		pthread_create(&tid[i], NULL, checkPrime, &arr[i]);
	}

    printf("\n");

       for (int i = 0; i < threads; i++) {
        pthread_join(tid[i], NULL);
    }

	return 0;
}
