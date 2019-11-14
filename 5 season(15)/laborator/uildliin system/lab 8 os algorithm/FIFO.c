#include<stdio.h>
//17
int main()
{
    int orolt[20] = {7,0,1,2,0,3,0,4,2,3,0,3,2,1,2,0,1,7,0,1};
    int page_faults = 0, m, n, s;

    int pages = 20;

    int temp[3];

    for(m = 0; m < 3; m++)
    {
        temp[m] = -1;
    }

    for(m = 0; m < pages; m++)
    {
        s = 0;
        for(n = 0; n < 3; n++)
        {
            if(orolt[m] == temp[n])
            {
                s++;
                page_faults--;
            }
        }
        page_faults++;
        if((page_faults <= 3) && (s == 0))
        {
            temp[m] = orolt[m];

        }
        else if(s == 0)
        {
            temp[(page_faults - 1) % 3] = orolt[m];
        }
        printf("\n");
        for(n = 0; n < 3; n++)
        {
            printf("%d\t", temp[n]);
        }
    }
    printf("\nniit fault: %d\n", page_faults);
    return 0;
}
