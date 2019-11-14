#include<iostream>
using namespace std;
main(){
	int a;
	cout<<"hedem too oruulah ve"<<endl;
	cin>>a;
	int b[a],c[a],d[a];
	cout<<"Toonuudiig oruul"<<endl;
	for(int i=0; i<a; i++){
		cin>>b[i];
	}
	int i, j, min, temp;
	    for (i = 0; i <a - 1; i++) {
	        min = i;
	        for (j = i + 1; j < a; j++)
	    		if (b[j] < b[min])
	            min = j;
	      		temp = b[i];
	      		b[i] = b[min];
	      		b[min] = temp;
	   }
	   cout<<"Usuh ni: ";
	for(i=0; i<a; i++){
		cout<<b[i];
		cout<<" ";
	}
	cout<<"Buurah ni: ";
	for(i=a-1; 0<=i; i--){
		cout<<b[i]<<" ";
	}
}
