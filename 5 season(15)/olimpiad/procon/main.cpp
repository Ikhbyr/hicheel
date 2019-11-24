#include <iostream>
using namespace std;
#define row 10
#define col 10
#define agent 3
int shiljuuleh(int x, int y, int a[row][col]){
    //4 tal niilber oloh
    int x1,maxs=0,max2=0;
    int y1=y,shilj1=-10;
    if(x>0){
        x1=x-1;
    }
    //cout<<"x1ni "<<x1<<endl;
    for(int i=0; i<2; i++){
        if(y1>0 && y==y1){
            y1=y1-1;
        }
        if(x1>0){
            x1--;
        }else{
            break;
        }
    }
    //cout<<"Z shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    for(int i=y1; i<=y1+2; i++){
        if(i==row){
            break;
        }
        for(int j=x1;j<=j+2;j++){
                if(j>x-1){
                    break;
                }
            maxs=maxs+a[i][j];
        }
    }
    //cout<<"niilber"<<maxs<<endl;
    if(y>0){
        y1--;
    }
    x1=x;
    int shilj2=-1;//(0,-1)
    for(int i=0; i<2; i++){
        if(x1>0 && x==x1){
            x1=x1-1;
        }
        if(y1>0){
            y1--;
        }
    }
    //cout<<"Top shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    for(int i=y1; i<=y1+2; i++){
        if(i==y){
            break;
        }
        for(int j=x1;j<=x1+2;j++){
                if(j==col){
                    break;
                }
            max2=max2+a[i][j];
            //cout<<"niilber: "<<max2<<endl;
        }
    }
    //cout<<"niilber"<<max2<<endl;
    if(maxs<max2){
        shilj1=shilj2;
        maxs=max2;
    }
    //right
    if(x+1<=col){
        x1=x+1;
        shilj2=10;//(1,0)
    }else{
        shilj2=0;
    }
    y1=y;
    max2=0;
    if(shilj2!=0){
        if(y1-1>=0){
            y1=y1-1;
        }
    }
    //cout<<"Right shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    for(int i=y1; i<=y1+2; i++){
        if(i==row){
            break;
        }
        for(int j=x1;j<=x1+2;j++){
                if(j==col){
                    break;
                }
            max2=max2+a[i][j];
            //cout<<"niilber: "<<max2<<endl;
        }
    }
    //cout<<"niilber"<<max2<<endl;
    if(maxs<max2){
        shilj1=shilj2;
        maxs=max2;
    }
    //Bottom
    if(y+1<row){
        y1=y+1;
        shilj2=1;//(0,1)
    }else{
        shilj2=0;
    }
    x1=x;
    max2=0;
    if(shilj2!=0){
        if(x1-1>=0){
            x1=x1-1;
        }
    }
    //cout<<"Bottom shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    for(int i=y1; i<=y1+2; i++){
        if(i==row){
            break;
        }
        for(int j=x1;j<=x1+2;j++){
                if(j==col){
                    break;
                }
            max2=max2+a[i][j];
            //cout<<"niilber: "<<max2<<endl;
        }
    }
    //cout<<"niilber"<<max2<<endl;
    if(maxs<max2){
        shilj1=shilj2;
        maxs=max2;
    }
    //Zuun deed
    if(y-1>=0&&x-1>=0){
        y1=y-1;
        x1=x-1;
        shilj2=-2;//(-1,-1)
    }else{
        shilj2=0;
    }
    for(int i=0;i<2;i++){
        if(y1-1>=0&&x1-1>=0){
            y1--;
            x1--;
        }
    }
    max2=0;
    //cout<<"zuunDeed shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    if(shilj2!=0)
    for(int i=y1; i<=y1+2; i++){
        if(i==y){
            break;
        }
        for(int j=x1;j<=x1+2;j++){
                if(j==x){
                    break;
                }
            max2=max2+a[i][j];
            //cout<<"niilber: "<<max2<<endl;
        }
    }
    //cout<<"niilber"<<max2<<endl;
    if(maxs<max2){
        shilj1=shilj2;
        maxs=max2;
    }
    //Baruun deed
    if(y-1>=0&&x+1<col){
        y1=y-1;
        x1=x+1;
        shilj2=-2;//(-1,-1)
    }else{
        shilj2=0;
    }
    for(int i=0;i<2;i++){
        if(y1-1>=0&&x1+1<col){
            y1--;
            x1++;
        }
    }
    max2=0;
    //cout<<"baruunDeed shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    if(shilj2!=0)
    for(int i=y1; i<=y1+2; i++){
        if(i==y){
            break;
        }
        for(int j=x1;j<=x1+2;j++){
                if(j==col){
                    break;
                }
            max2=max2+a[i][j];
            //cout<<"niilber: "<<max2<<endl;
        }
    }
    //cout<<"niilber"<<max2<<endl;
    if(maxs<max2){
        shilj1=shilj2;
        maxs=max2;
    }
        //Baruun dood
    if(y+1<row&&x+1<col){
        y1=y+1;
        x1=x+1;
        shilj2=11;//(1,1)
    }else{
        shilj2=0;
    }
    for(int i=0;i<2;i++){
        if(y1+1<row&&x1+1<col){
            y1++;
            x1++;
        }
    }
    max2=0;
    //cout<<"baruunDood shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    if(shilj2!=0)
    for(int i=y1; i<=y1+2; i++){
        if(i==row){
            break;
        }
        for(int j=x1;j<=x1+2;j++){
                if(j==col){
                    break;
                }
            max2=max2+a[i][j];
            //cout<<"niilber: "<<max2<<endl;
        }
    }
    //cout<<"niilber"<<max2<<endl;
    if(maxs<max2){
        shilj1=shilj2;
        maxs=max2;
    }
    //Zuun dood
    if(y+1<row&&x-1>=0){
        y1=y+1;
        x1=x-1;
        shilj2=2;//(1,-1)
    }else{
        shilj2=0;
    }
    for(int i=0;i<2;i++){
        if(y1+1<row&&x1-1>=0){
            y1++;
            x1--;
        }
    }
    max2=0;
    //cout<<"zuunDood shalgah: "<<x1<<" "<<y1<<" "<<a[y1][x1]<<endl;
    if(shilj2!=0)
    for(int i=y1; i<=y1+2; i++){
        if(i==row){
            break;
        }
        for(int j=x1;j<=x1+2;j++){
                if(j<0){
                    break;
                }
            max2=max2+a[i][j];
            //cout<<"niilber: "<<max2<<endl;
        }
    }
    //cout<<"niilber"<<max2<<endl;
    if(maxs<max2){
        shilj1=shilj2;
        maxs=max2;
    }
    //cout<<"ilgeeh "<<shilj1<<endl;
    return shilj1;
}

void shiljih(int l){
switch(l){
    case 1:
        cout<<"0 "<<"1\n";
        break;
    case -1:
        cout<<"0 "<<"-1\n";
        break;
    case 0:
       //cout<<"0 "<<"0\n";
        break;
    case 10:
        cout<<"1 "<<"0\n";
        break;
    case -10:
        cout<<"-1 "<<"0\n";
        break;
    case -11:
        cout<<"-1 "<<"1\n";
        break;
    case -2:
        cout<<"-1 "<<"-1\n";
        break;
    case 2:
        cout<<"1 "<<"-1\n";
        break;
    case 11:
        cout<<"1 "<<"1\n";
        break;
    default:
        break;
    }
}

int maxn(int x, int y, int a[10][10]){
    int b1=x, b2=y, q1,q2,max;
    max=a[b1-1][b2-1];
    q1=-1;q2=-1;
    if(max<a[b1][b2-1]){
        max=a[b1][b2-1];
        q1=0;q2=-1;
    }
    if(max<a[b1+1][b2-1]){
        max=a[b1+1][b2-1];
        q1=1;q2=-1;
    }
    if(max<a[b1+1][b2]){
        max=a[b1+1][b2];
        q1=1;q2=0;
    }
    if(max<a[b1+1][b2+1]){
        max=a[b1+1][b2+1];
        q1=1;q2=1;
    }
    if(max<a[b1][b2+1]){
        max=a[b1][b2+1];
        q1=0;q2=+1;
    }
    if(max<a[b1-1][b2+1]){
        max=a[b1-1][b2+1];
        q1=-1;q2=1;
    }
    if(max<a[b1-1][b2]){
        max=a[b1-1][b2];
        q1=-1;q2=0;
    }
if(b1+q1==col){
            q1=q1-1;
        }else if(b1+q1<0){
            q1=q1+1;
        }
if(b2+q2==row){
        q2=q2-1;
    }else if(b2+q2<0){
        q2=q2+1;
    };
    return q1;
    cout<<q1<<" "<<q2<<endl;
}

int maxy(int x, int y, int a[10][10]){
    int b1=x, b2=y, q1,q2,max;
    max=a[b1-1][b2-1];
    q1=-1;q2=-1;
    if(max<a[b1][b2-1]){
        max=a[b1][b2-1];
        q1=0;q2=-1;
    }
    if(max<a[b1+1][b2-1]){
        max=a[b1+1][b2-1];
        q1=1;q2=-1;
    }
    if(max<a[b1+1][b2]){
        max=a[b1+1][b2];
        q1=1;q2=0;
    }
    if(max<a[b1+1][b2+1]){
        max=a[b1+1][b2+1];
        q1=1;q2=1;
    }
    if(max<a[b1][b2+1]){
        max=a[b1][b2+1];
        q1=0;q2=+1;
    }
    if(max<a[b1-1][b2+1]){
        max=a[b1-1][b2+1];
        q1=-1;q2=1;
    }
    if(max<a[b1-1][b2]){
        max=a[b1-1][b2];
        q1=-1;q2=0;
    }
if(b1+q1==col){
            q1=q1-1;
        }else if(b1+q1<0){
            q1=q1+1;
        }
if(b2+q2==row){
        q2=q2-1;
    }else if(b2+q2<0){
        q2=q2+1;
    };
    return q2;
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
    int i,j,max;
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
    int x1,y1,l,max2;
    cout<<"Odoo baigaa bairlal\n";
    cout<<"\nx1: ";
    cin>>x1;
    cout<<"ny2: ";c
    cin>>y1;
    int b1,b2,q1,q2,p[100],c[100],op=0;
    for(i=1;i<=30;i++){
        q1=0;
        q2=0;
        b1=x1;
        b2=y1;
        cout<<"Tolgoi"<<a[y1][x1]<<endl;
        a[y1][x1]=0;
        p[op]=y1;
        c[op]=x1;
        op++;
        l=shiljuuleh(x1,y1,a);
        cout<<"l ni "<<l<<endl;
        shiljih(l);
        switch(l){
        case 1:
            y1=y1+1;
            break;
        case -1:
            y1=y1-1;
            break;
        case 0:
            q1=maxn(x1,y1,a);
            q2=maxy(x1,y1,a);
            x1=x1+q1;
            y1=y1+q2;
            break;
        case 10:
            x1++;//cout<<"1 "<<"0\n";
            break;
        case -10:
            x1--;//cout<<"-1 "<<"0\n";
            break;
        case -11:
            x1--;y1++;//cout<<"-1 "<<"1\n";
            break;
        case -2:
            x1--; y1--;//cout<<"-1 "<<"-1\n";
            break;
        case 2:
            x1++;y1--;//cout<<"1 "<<"-1\n";
            break;
        case 11:
            x1++; y1++;//cout<<"1 "<<"1\n";
            break;
        default:
            break;
        }
    }
}
