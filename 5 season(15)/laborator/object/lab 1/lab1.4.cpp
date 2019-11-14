#include<iostream>
using namespace std;
main(){
	int n,i;
	float d,s=0;
	cin>>n;
	for(i=1;i<=n;i++){
		s=s+i;
	}
	cout<<s<<endl;
	i--;
	d=s/i;
	cout<<d;
}
