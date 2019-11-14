#include<stdio.h>
//13
int main()
{
      int orolt[20]= {7,0,1,2,0,3,0,4,2,3,0,3,2,1,2,0,1,7,0,1};
      int frames[25];
	  int interval[25];
      int pages = 20;
      int total_frames;
	  int page_faults = 0;
      int m, n, temp, flag, found;
      int position, maximum_interval, previous_frame = -1;

      for(m = 0; m < 3; m++)
      {
            frames[m] = -1;
      }
      for(m = 0; m < pages; m++)
      {
            flag = 0;
            for(n = 0; n < 3; n++)
            {
                  if(frames[n] == orolt[m])
                  {
                        flag = 1;
                        printf("\t");
                        break;
                  }
            }
            if(flag == 0)
            {
                  if (previous_frame == 3 - 1)
                  {
                        for(n = 0; n < 3; n++)
                        {
                              for(temp = m + 1; temp < pages; temp++)
                              {
                                    interval[n] = 0;
                                    if (frames[n] == orolt[temp])
                                    {
                                          interval[n] = temp - m;
                                          break;
                                    }
                              }
                        }
                        found = 0;
                        for(n = 0; n < 3; n++)
                        {
                              if(interval[n] == 0)
                              {
                                    position = n;
                                    found = 1;
                                    break;
                              }
                        }
                  }
                  else
                  {
                        position = ++previous_frame;
                        found = 1;
                  }
                  if(found == 0)
                  {
                        maximum_interval = interval[0];
                        position = 0;
                        for(n = 1; n < total_frames; n++)
                        {
                              if(maximum_interval < interval[n])
                              {
                                    maximum_interval = interval[n];
                                    position = n;
                              }
                        }
                   }
                   frames[position] = orolt[m];
                   printf("\t");
                   page_faults++;
            }
            for(n = 0; n < 3; n++)
            {
                  if(frames[n] != -1)
                  {
                        printf("%d\t", frames[n]);
                  }
            }
            printf("\n");
      }
      printf("\nniit fault: %d\n", page_faults);
      return 0;
}
