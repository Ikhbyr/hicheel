#include<iostream>
using namespace std;

int leastret(int a[], int n){
    int i, min=0;
    int baga=a[min];
    for(i=1; i<n; i++){
        if(baga>a[i]){
            baga=a[i];
            min=i;
        }
    }
    return min;
}
main(){
    int page[20]={7,0,1,2,0,3,0,4,2,3,0,3,2,1,2,0,1,7,0,1}, b[3]={0},i,fault=0,l=0,j;
    for(i = 0; i < 3; i++){
        b[i] = -1;
    }
    //First in first out algorithm
    for(i=0; i<20; i++){
        for(j=0;j<3;j++){
            if(page[i]!=b[j]){
                if(j==2){
                    b[l]=page[i];
                    l++;
                    fault++;
                }
            }else{
                break;
            }
        }
        if(l==3){
            l=0;
        }
        for(j=0;j<3;j++)
        cout<<b[j]<<"\t";
        cout<<endl;
    }
    cout<<"FIFO Aldaa ni: "<<fault<<endl;
    // Least recently used(LRU) Algorithm
    int least,m,noots[3],k;fault = 0;l=0;
    for(i = 0; i < 3; i++){
        b[i] = -1;
    }
    for(i = 0; i < 20; i++){
        for(j=0; j<3; j++){
            if(page[i]!=b[j]){
                if(j==2 && i>2){
                    least=i-1;
                    for(m=0;m<3;m++){
                        for(k=least;k>=0;k--){
                            if(page[k]==b[m]){
                                noots[m]=k;
                                break;
                            }
                        }
                    }
                    l=leastret(noots, 3);
                    b[l]=page[i];
                    l++;
                    fault++;
                }else if(j==2 && i<=2){
                    b[l]=page[i];
                    l++;
                    fault++;
                }
            }else{
                l++;
                break;
            }
        }
        if(l==3){
            l=0;
        }
        for(j=0;j<3;j++)
        cout<<b[j]<<"\t";
        cout<<endl;
    }
    cout<<"LRU Aldaa ni: "<<fault<<endl;
}
