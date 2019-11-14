#include<iostream>
using namespace std;
main(){
	int a,s=0,u=1;
	cout<<"Heden too oruulah ve"<<endl;
	cin>>a;
	int b[20];
	for(int i=0;i<a;i++){
		cin>>b[i];
		s=s+b[i];
		u=u*b[i];
	}
	cout<<"Niilber ni: ";
	cout<<s<<endl;
	cout<<"Urjver ni: ";
	cout<<u<<endl;
}
