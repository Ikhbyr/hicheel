#include<stdio.h>
int n;
void print(char *a){
	for(int i=0; i<n; i++){
		for(int j=0; j<n; j++)
			printf(" %c ", *(a+i+j));
		printf("\n");
	}
}
bool check(char *a, int mur, int bag){
	for(int j=0; j<bag; j++)
		if(*(a+mur+j)=='Q')
			return false;
	for(int i=mur; i>=0; i--)
		for(int j=bag; j>=0; j--)
			if(*(a+i+j)=='Q')
				return false;
	for(int i=mur; i<n; i++)
		for(int j=bag; j>=0; j--)
			if(*(a+i+j)=='Q')
				return false;
	return true;
}
bool queen(char *a, int bag){
	if(bag>=n)
		return true;
	for(int i=0; i<n; i++)
		if(check(a, i, bag)==true){
			*(a+i+bag)='Q';
			printf(" %c ", *(a+i+bag));
			if(queen(a, bag+1)==true){
				return true;
				*(a+i+bag)='*';
				printf(" %c ", *(a+i+bag));
			}
		}
	return false;
}
int main(){
	printf("Bersiin toog orrul: ");
	scanf("%d", &n);
	char a[n][n];
		for(int i=0; i<n; i++)
			for(int j=0; j<n; j++){
				a[i][j]='*';
			}
	if(queen(*a, 0)==false)
		printf("Bersuud biy biynee idehgui bairlah bolomjgui bna.");
	else
		print(*a);
}
