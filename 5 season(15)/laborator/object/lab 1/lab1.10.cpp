#include<iostream>
using namespace std;
main(){
	int n,i,c=2;
	cin>>n;
	for(i=2; i<=n/2;i++){
		if(n%i==0){
			cout<<"Anhnii too bish"<<endl;
			c--;
			break;
		
		}
		c++;
	}
	if(i==c){
		cout<<"Anhnii too mon"<<endl;
	}
}
