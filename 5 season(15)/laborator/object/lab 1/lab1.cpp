#include<stdio.h>
#include<iostream>
using namespace std;
int main(){
	int a,b,c;
	cin>>a;
	cin>>b;
	cin>>c;
	if(a>b){
		if(a>c){
			cout<<"Hamgiin ih ni "<<a;
		}else{
			cout<<c;
		}
	}else{
		if(b>c){
			cout<<b;
		}else{
			cout<<c;
		}
	}
}
