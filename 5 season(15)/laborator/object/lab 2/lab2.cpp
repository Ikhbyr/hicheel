#include<iostream>
using namespace std;
void solih(int *x, int *y){
    int c=*x;
    *x=*y;
    *y=c;
}
main(){
int a=10,b=20;
solih(&a,&b);
cout<<"a: "<<a<<", b: "<<b;
}
