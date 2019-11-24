#include <iostream>
using namespace std;

void fillMap(int row, int a[10][10]){
  if(row==10){
    a[10][10]={
        {12,3,5,3,1,1,3,5,3,12},
                {3,5,7,5,3,3,5,7,5,3},
                {5,7,10,7,5,5,7,10,7,5},
                {3,5,7,5,3,3,5,7,5,3},
                {1,3,5,3,12,12,3,5,3,1},
                {1,3,5,3,12,12,3,5,3,1},
                {3,5,7,5,3,3,5,7,5,3},
                {5,7,10,7,5,5,7,10,7,5},
                {3,5,7,5,3,3,5,7,5,3},
                {12,3,5,3,1,1,3,5,3,12}}
  }
}
void print(int a[][10]){
    int row=10;
  for(int i=0; i<row; i++){
    for(int j=0; j<row; j++)
      cout<<a[i][j]<<"  ";
    cout<<endl;
  }

}
main(){
  int row, num;
  cout<<"row: ";
  cin>>row;
  int matrix[row][row];
  fillMap(matrix);
  print(1);
  cout<<"number of agent: ";
  cin>>num;
}
