#include<stdio.h>
#include<pthread.h>

pthread_t tid[2];
unsigned int shared_data = 0;
pthread_mutex_t mutex;
unsigned int rc;
//prototypes for callback functions

void* PrintEvenNos(void*);
void* PrintOddNos(void*);

void main(void)
{
    pthread_create(&tid[0],0,&PrintEvenNos,0);
    pthread_create(&tid[1],0,&PrintOddNos,0);
    //sleep(3);

    pthread_join(tid[0],NULL);
    pthread_join(tid[1],NULL);
}

void* PrintEvenNos(void *ptr)
{
     rc = pthread_mutex_lock(&mutex);
     do
     {
         if(shared_data%2 == 0)
         {
             printf("Even:%d\n",shared_data);
             shared_data++;
         }
         else
         {
             rc=pthread_mutex_unlock(&mutex);//if number is odd, do not print, release mutex
         }
     } while (shared_data <= 100);
}

void* PrintOddNos(void* ptr1)
{
    rc = pthread_mutex_lock(&mutex);
    do
    {
        if(shared_data%2 != 0)
        {
            printf("odd:%d\n",shared_data);
            shared_data++;
        }
        else
        {
            rc = pthread_mutex_unlock(&mutex);//if number is even, do not print, release mutex
        }
    } while (shared_data <= 100);
}
