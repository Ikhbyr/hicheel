#include <stdlib.h>
#include <pthread.h>
#include <iostream>

using namespace std;

struct matrix{
	int el[100][100];
	int i;
	int l;
	int n;
	int m;
} A, B, C;


void * matrix_multi(void * args){
		C.el[C.i][C.l]=0;
        for (int k = 0; k < B.m; k++)
            C.el[C.i][C.l] = C.el[C.i][C.l] + (A.el[A.i][k] * B.el[k][B.i]);
		C.l++;
		B.i++;

		if(B.i==B.m){
			A.i++;
			B.i=0;
		}
		if(C.l==C.m){
			C.i++;
			C.l=0;
		}

}

int main(){
	int an, am, bn, bm, n;
	C.l = C.i = A.l = A.i = B.i = 0;
	cout << "A matrix N=? M=? ";
	cin >> A.n >> A.m;
	cout << "b matrix N=? M=? ";
	cin >> B.n >> B.m;

	if(A.m!=B.n){
		cout << "A.m != B.n";
	}
	else {
		cout << "A element input: ";
		for(int i=0; i<A.n; i++){
			for(int j=0; j<A.m; j++){
				cin >> A.el[i][j];
			}
		}
		cout <<"\t A matrix: \n";
		for(int i=0; i<A.n; i++){
			for(int j=0; j<A.m; j++){
				cout << A.el[i][j] <<" " ;
			}
				cout <<"\n";
		}

		cout << "B element input: ";
		for(int i=0; i<B.n; i++){
			for(int j=0; j<B.m; j++){
				cin >> B.el[i][j];
			}
		}
		cout <<"\t B matrix: \n";
		for(int i=0; i<B.n; i++){
			for(int j=0; j<B.m; j++){
				cout << B.el[i][j] << " ";
			}
			cout <<"\n";
		}

		n=A.n*B.m;
		C.n=A.n;
		C.m=B.m;
		pthread_t thread[n];
		for(int i=0; i<n; i++){
            pthread_create(&thread[i], NULL, matrix_multi, NULL);
            pthread_join(thread[i], NULL);
		}
		cout <<"\t C matrix: \n";
        for(int i=0; i<C.n; i++){
			for(int j=0; j<C.m; j++){
				cout << C.el[i][j] << " ";
			}
			cout <<"\n";
		}
	}




  return 0;
}
