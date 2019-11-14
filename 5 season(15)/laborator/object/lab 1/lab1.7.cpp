#include<iostream>
using namespace std;
main(){
	int b[20],a,c=0;
	cin>>a;
	cout<<"toonuudaa oruul"<<endl;
	for(int i=0;i<a;i++){
		
		cin>>b[i];
		if(b[i]%2==0){
			c++;
		}
	}
	cout<<"tegsh toonuudin too ni: ";
	cout<<c;
}
