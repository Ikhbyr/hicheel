#include<iostream>
using namespace std;
fact(int a){
    int s=a--;
    if(a>0){
        s=s*fact(a);
    }else{
        return s;
    }
}
main(){
    int x;
    do{
        cin>>x;
        cout<<"Factorial ni: "<<fact(x)<<endl;
    }while(x);

}
