#include<iostream>
using namespace std;
void build_heap(int a[], int n);
//hamgiin suuliin element Root deer tawih
void ReHeapDown(int a[],int n);
//Etsgeesee ih uyd bair solih
void ReHeapUp(int a[], int n);
//Root hewleh
void HeapOut(int a[], int n);
main(){
    int a[12]={23,1,2,12,34,12,3,11,10,17,0,4},n=12,i;
    for(i=0;i<n;i++){
        cout<<a[i]<<" ";
    }
    cout<<"\n";
    for(i=n-1;0<=i;i--){
        build_heap(a,i);
        HeapOut(a,i);
    }
}
void build_heap(int a[], int n){
    int i;
    for(i=0;i<=n;i++){
        ReHeapUp(a,i);
    }
}
void ReHeapUp(int a[], int i){
    int temp;
    if(a[i]<a[(i-1)/2]){
        temp=a[i];
        a[i]=a[(i-1)/2];
        a[(i-1)/2]=temp;
        ReHeapUp(a,(i-1)/2);
    }
}
void HeapOut(int a[], int n){
    cout<<" "<<a[0];
    ReHeapDown(a,n);
}
void ReHeapDown(int a[],int n){
    a[0]=a[n];
}
