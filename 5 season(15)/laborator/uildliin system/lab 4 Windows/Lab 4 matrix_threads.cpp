#include <bits/stdc++.h>
#include<iostream>
using namespace std;
struct matrix{
	int arr[50][50];
} ArrA, ArrB, ArrC;
int r=0,c=0;
int siz=3;
int x1=3;
int _y=3;
int siz_THREAD=x1*_y;
void* Arr_multi(void* t);
int step_i = 0;
int step_j = 0;
int main()
{
	for (int i = 0; i <siz; i++) {
		for (int j = 0; j < siz; j++) {
			ArrA.arr[i][j] = rand() % 10;
		}
	}
	for (int i = 0; i < siz; i++) {
		for (int j = 0; j <_y; j++) {
			ArrB.arr[i][j] = rand() % 10;
		}
	}
	cout << "\n"<<"Matrix A" << "\n";
	for (int i = 0; i < x1; i++) {
		for (int j = 0; j < siz; j++)
			cout << ArrA.arr[i][j] << " ";
		cout << "\n";
	}
	cout << "\n"<< "Matrix B" << "\n";
	for (int i = 0; i < siz; i++) {
		for (int j = 0; j < _y; j++)
			cout << ArrB.arr[i][j] << " ";
		cout << "\n";
	}
	pthread_t p[siz_THREAD];
    int i,j;
    for(i=0;i<siz_THREAD;i++){
        pthread_create(&p[i],NULL,Arr_multi,NULL);
        pthread_join(p[i], NULL);
    }

	cout << "\n"<< "Urjver Matrix" << "\n";
	for (i = 0; i < x1; i++) {
		for (j = 0; j < _y; j++)
			cout << ArrC.arr[i][j] << " ";
		cout << "\n";
	}
	return 0;
}
void* Arr_multi(void* t)
{
    ArrC.arr[step_i][step_j]=0;
    int i;
    for(i=0;i<_y;i++)
        ArrC.arr[step_i][step_j] =ArrC.arr[step_i][step_j]+(ArrA.arr[r][i]*ArrB.arr[i][c]);
    printf("hewleh %d\n",ArrC.arr[step_i][step_j]);
    step_j++;//C.l
    step_i++;//C.i
    if(c==siz){
        r++;
        c=0;
    }
    if(step_j==_y){
        step_i++;
        step_j=0;
    }
}
