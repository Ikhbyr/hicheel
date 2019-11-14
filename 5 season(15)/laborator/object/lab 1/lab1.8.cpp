#include<iostream>
using namespace std;
int dundaj(int b[],int a){
	int i;
	float c=0;
	for(i=0;i<a;i++){
		c=c+b[i];
	}
	c=c/i;
	return c;
}
main(){
	int b[20],a,i;
	float c=0;
	cin>>a;
	cout<<"toonuudaa oruul"<<endl;
	for(i=0;i<a;i++){	
		cin>>b[i];
	}
	c=dundaj(b,a);	
	cout<<"toonuudin dundaj ni: ";
	cout<<c;
}
