#include <bits/stdc++.h>
#include<iostream>
using namespace std;
int siz=3;
int x=3;
int y=3;
int siz_THREAD=x*y;
int ArrA[50][50];
int ArrB[50][50];
int ArrC[50][50];
void* Arr_multi(void* t);
int step_i = 0;
int step_j = 0;
int main()
{
	for (int i = 0; i <x; i++) {
		for (int j = 0; j < siz; j++) {
			ArrA[i][j] = rand() % 15;
		}
	}
	for (int i = 0; i < siz; i++) {
		for (int j = 0; j <y; j++) {
			ArrB[i][j] = rand() % 15;
		}
	}
	cout << "\n"<<"Matrix A" << "\n";
	for (int i = 0; i < x; i++) {
		for (int j = 0; j < siz; j++)
			cout << ArrA[i][j] << " ";
		cout << "\n";
	}
	cout << "\n"<< "Matrix B" << "\n";
	for (int i = 0; i < siz; i++) {
		for (int j = 0; j < y; j++)
			cout << ArrB[i][j] << " ";
		cout << "\n";
	}
	pthread_t p[siz_THREAD];
    int i,j,point[2];
    for(i=0;i<3;i++)
        for(j=i;j<3;j++){
                if(i==j){
                    point[0]= i;
            point[1]= j;
            pthread_create(&p[i],NULL,Arr_multi,point);
            pthread_join(p[i], NULL);
                }

        }
	cout << "\n"<< "Urjver Matrix" << "\n";
	for (int i = 0; i < x; i++) {
		for (int j = 0; j < y; j++)
			cout << ArrC[i][j] << " ";
		cout << "\n";
	}
	return 0;
}
void* Arr_multi(void* t){
    int i,r,c,*point;
    point=(int *) t;
    r=point[0];
    c=point[1];
    for(i=0;i<siz;i++){
        ArrC[r][c] =ArrC[r][c]+(ArrA[r][i]*ArrB[i][c]);
    }
}
