#include<stdio.h>
//15
int main()
{
      int frames[10], temp[10];
      int m, n, position, k, l;
      int a = 0, b = 0, page_fault = 0;
      int niit_pages = 20;
      int pages[20] = {7,0,1,2,0,3,0,4,2,3,0,3,2,1,2,0,1,7,0,1};


      for(m = 0; m < 3; m++)
      {
            frames[m] = -1;
      }

      for(n = 0; n < niit_pages; n++)
      {
            a = 0, b = 0;
            for(m = 0; m < 3; m++)
            {
                  if(frames[m] == pages[n])
                  {
                        a = 1;
                        b = 1;
                        break;
                  }
            }
            if(a == 0)
            {
                  for(m = 0; m < 3; m++)
                  {
                        if(frames[m] == -1)
                        {
                              frames[m] = pages[n];
                              b = 1;
                              break;
                        }
                  }
            }
            if(b == 0)
            {
                  for(m = 0; m < 3; m++)
                  {
                        temp[m] = 0;
                  }
                  for(k = n - 1, l = 1; l <= 3 - 1; l++, k--)
                  {
                        for(m = 0; m < 3; m++)
                        {
                              if(frames[m] == pages[k])
                              {
                                    temp[m] = 1;
                              }
                        }
                  }
                  for(m = 0; m < 3; m++)
                  {
                        if(temp[m] == 0)
                        position = m;
                  }
                  frames[position] = pages[n];
                  page_fault++;
            }
            printf("\n");
            for(m = 0; m < 3; m++)
            {
                  printf("%d\t", frames[m]);
            }
      }
      printf("\nniit fault: %d\n", page_fault);
      return 0;
}
