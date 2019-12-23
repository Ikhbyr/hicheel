#include <stdio.h>
#include <time.h>

void fun()
{
    printf("Press enter to stop \n");
    while(1)
    {
        if (getchar())
            break;
    }
}

int main()
{
    struct tm* current_time,*ti;
    time_t *time1;
    current_time = localtime(&time1);
    clock_t t;
    t = clock();
    fun();
    printf("Unuudur: %d onii %d sariin %d.\nOdoo: %02d tsag %02d minut %02d sekunt bolj bna.\n",
           current_time->tm_year+1900,
           current_time->tm_mon+1,
           current_time->tm_mday,
           current_time->tm_hour,
           current_time->tm_min,
           current_time->tm_sec);

    t = clock() - t;
    double time_taken = ((double)t)/CLOCKS_PER_SEC; // in seconds

    printf("%f seconds to execute \n", time_taken);
    return 0;
}


