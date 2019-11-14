#include<iostream>
#include<math.h>
#include<stdlib.h>
using namespace std;
void print(int a[], int size){
    int i;
    cout<<endl;
    for(i=0;i<size;i++){
        cout<<a[i]<<", ";
    }
}
void allMerge(int a[], int c, int m, int r)
{
    int i, j, k;
    int ehlel1 = m - c + 1;//
    int ehlel2 =  r - m;
    int noots1[ehlel1], noots2[ehlel2];
    for (i = 0; i < ehlel1; i++){
        noots1[i] = a[c + i];
    }
    for (j = 0; j < ehlel2; j++){
        noots2[j] = a[m + 1+ j];
    }
    i = 0;
    j = 0;
    k = c;
    while (i < ehlel1 && j < ehlel2)
    {
        if (noots1[i] <= noots2[j])
        {
            a[k] = noots1[i];
            i++;
        }
        else
        {
            a[k] = noots2[j];
            j++;
        }
        k++;
    }
    while (i < ehlel1)
    {
        a[k] = noots1[i];
        i++;
        k++;
    }
    while (j < ehlel2)
    {
        a[k] = noots2[j];
        j++;
        k++;
    }
}
void erembleh(int a[], int c, int size){
    int size1;
    if(c<size){
        size1=(size-c)/2+c;
        erembleh(a,c,size1);
        erembleh(a,size1+1,size);
        allMerge(a, c, size1, size);
    }
}
main(){
    int n=11,i;
    int a[n];
    for(i=0;i<n;i++){
        a[i]=rand()%10;
    }
    print(a,n);
    erembleh(a,0,n-1);
    print(a,n);
}
