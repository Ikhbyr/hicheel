#include<iostream>
using namespace std;
int talbai(int c, int d){
	int l;
	l=c*d;
	return l;
}
main(){
	int a,b,s;
	cin>>a;
	cin>>b;
	s=talbai(a,b);
	cout<<s;
}

