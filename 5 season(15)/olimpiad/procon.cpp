#include <iostream>
using namespace std;
#define row 10
#define col 10
#define agent 3
int shiljuuleh(int x, int y, int a[row][col]){
    int x1=x-1,maxs=0;
    int y1=y,shilj=-10;
    for(int i=0; i<2; i++){
        if(y1>0 && y==y1){
            y1=y1-1;
        }
        if(x1>0){
            x1--;
        }
    }
    cout<<"shalgah: "<<y1<<" "<<x1<<" "<<a[y1][x1];
    for(int i=y1; i<=y1+2; i++){
        if(i=row){
            break;
        }
        for(int j=x1;j<=j+2;j++){
                if(j>x-1){
                    break;
                }
            maxs=maxs+a[y1][x1];
        }
    }
    cout<<"niilber"<<maxs<<endl;
}
class point {
    public:
    int x;
    int y;
    int tolow;//0-uyd ezlegdeegui 1-uyd ezlegdsen
    point(){
        tolow=0;
    }
};
main(){
    point pnt;
    int a[row][col]={
        {4,	3,	7,  2,	-2,	-2,	2,	7,	3,	4},
        {1,	-5,	-1,	3,	-8,	-8,	3,	-1,	-5,	1},
        {8,	4,	2,	-1,	5,	5,	-1,	2,	4,	8},
        {-4, 1,	1,	0,	4,	4,	0,	1,	1,	-4},
        {6,	-2,	-6,	3,	-3,	-3,	3,	-6,	-2,	6},
        {6,	-2,	-6,	3,	-3,	-3,	3,	-6,	-2,	6},
        {-4, 1,	1,	0,	4,	4,	0,	1,	1,	-4},
        {8,	4,	2,	-1,	5,	5,	-1,	2,	4,	8},
        {1,	-5,	-1,	3,	-8,	-8,	3,	-1,	-5,	1},
        {4,	3,	7,  2,	-2,	-2,	2,	7,	3,	4}
    };
    int i,j;
    cout<<"\t";
    for(i=0;i<row;i++)
        cout<<"x-"<<i<<"\t";
    cout<<endl<<"\n";
    for(i=0;i<row;i++){
            cout<<"y-"<<i<<"\t";
        for(j=0;j<col;j++){
            cout<<a[i][j]<<"\t";
        }
        cout<<endl;
    }
    int x1,y1;
    cout<<"Odoo baigaa bairlal\n";
    cout<<"\nx1: ";
    cin>>x1;
    cout<<"ny2: ";
    cin>>y1;
    cout<<"damjih"<<a[y1][x1]<<endl;
    shiljuuleh(x1,y1,a);

}
