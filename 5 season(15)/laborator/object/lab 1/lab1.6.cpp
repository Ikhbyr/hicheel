#include<iostream>
using namespace std;
main(){
	int a, b[50], min, max;
	cout<<"Heden too oruulah ve"<<endl;
	cin>>a;
	for(int i=0;i<a;i++){
		cin>>b[i];
	}
	min=b[0];
	max=b[0];
	for(int i=1;i<a;i++){
		if(min>b[i]){
			min=b[i];
		}
		if(max<b[i]){
			max=b[i];
		}
	}
	cout<<"baga ni : ";
	cout<<min<<endl;
	cout<<"ih ni : ";
	cout<<max<<endl;
}
