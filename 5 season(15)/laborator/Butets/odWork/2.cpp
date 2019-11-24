#include<graphics.h>
#include<iostream>
#include<stdio.h>
#include<string.h>
#include<math.h>
using namespace std;
int len=10, d=50, top=0;          //r-length,  d-diameter of circle
string convert(int num){
    string s="";
    while(num>0){
        s+=char(num%10+48);
        num=num/10;
    }
    for(int i=0; i<s.length()/2; i++){
        swap(s[i],s[s.length()-i-1]);
    }
    return s;
}
printElement(int x, int y, int a[], int j){
    char too[3];
    sprintf(too, "%d", a[j]);
    outtextxy(x,y,too);
}
void buildTree(int a[], int n,int width1, int width2,int j, int top){
    //leave baival zuvhun uuriig ni zurna
    if(j>=n) return;
    if((2*j)+1>=n){
        circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
        printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
        return;
    }

    circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
    printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
    int x1,x2,y1,y2;
    x1=width1+( (width2-width1)/2 );
    y1=top+d;
    x2= width1+(  (width1+( (width2-width1)/2 )-width1)/2  )    ;
    y2=y1;
    line(x1,y1,x2,y2);
    x2=(width2-width1+( (width2-width1)/2 ))/2+width1;
    if(2*j+2<n)    line(x1,y1,x2,y2);
    buildTree(a,n,width1, width1+( (width2-width1)/2 ),2*j+1, top+d);
    buildTree(a,n,width1+( (width2-width1)/2 ), width2,2*j+2, top+d);

}
void preorder(int a[], int n, int width1, int width2, int j, int top,int root){
        if(j!=root+1){
        if(j>=root || j!=root+1){
            //leave baival zuvhun uuriig ni zurna
            if(j>=n) return;
            if(2*j+1>n){
                setcolor(YELLOW);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,YELLOW);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,YELLOW);
                delay(500);
                setcolor(BLACK);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,BLACK);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,BLACK);
                setcolor(WHITE);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
                return;
            }
             if(j>=root){
                setcolor(YELLOW);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,YELLOW);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,YELLOW);
                delay(500);
                setcolor(BLACK);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,BLACK);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,BLACK);
                setcolor(WHITE);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
             }
    }
    }

    //if(j+1!=root+1)
    if(root-1 != 2*j+1)
    preorder(a,n,width1, width1+( (width2-width1)/2 ),2*j+1, top+d,root);
    if(root+1 != 2*j+2)
    preorder(a,n,width1+( (width2-width1)/2 ), width2,2*j+2, top+d,root);
}
void inorder(int a[], int n, int width1, int width2, int j, int top, int root){
        if(j!=root+1){
        if(j>=root || j!=root+1){
            //leave baival zuvhun uuriig ni zurna
            if(j>=n) return;
            if(2*j+1>n){
                setcolor(YELLOW);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,YELLOW);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,YELLOW);
                delay(600);
                setcolor(BLACK);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,BLACK);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,BLACK);
                setcolor(WHITE);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
                return;
            }
    }
    if(root-1 != 2*j+1)
    inorder(a,n,width1, width1+( (width2-width1)/2 ),2*j+1, top+d,root);
    if(j!=root+1){
        if(j>=root){
            setcolor(YELLOW);
            circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
            setfillstyle(SOLID_FILL,YELLOW);
            floodfill(width1+( (width2-width1)/2 ),top+d/2,YELLOW);
            delay(600);
            setcolor(BLACK);
            circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
            setfillstyle(SOLID_FILL,BLACK);
            floodfill(width1+( (width2-width1)/2 ),top+d/2,BLACK);
            setcolor(WHITE);
            circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
            printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
        }
    }
    if(root+1 != 2*j+2)
    inorder(a,n,width1+( (width2-width1)/2 ), width2,2*j+2, top+d,root);
}
}

void postorder(int a[], int n, int width1, int width2, int j, int top,int root){
    if(j!=root+1){
        if(j>=root || j!=root+1){
                //leave baival zuvhun uuriig ni zurna
            if(j>=n) return;
            if(2*j+1>n){
                setcolor(YELLOW);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,YELLOW);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,YELLOW);
                delay(600);
                setcolor(BLACK);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                setfillstyle(SOLID_FILL,BLACK);
                floodfill(width1+( (width2-width1)/2 ),top+d/2,BLACK);
                setcolor(WHITE);
                circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
                printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
                return;
            }
        }
    }
    //if(j!=root+1){
        if(root-1 != 2*j+1)
        postorder(a,n,width1, width1+( (width2-width1)/2 ),2*j+1, top+d,root);
        if(root+1 != 2*j+2)
        postorder(a,n,width1+( (width2-width1)/2 ), width2,2*j+2, top+d,root);
    //}
    if(j!=root+1){
        if(j>=root){
            setcolor(YELLOW);
            circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
            setfillstyle(SOLID_FILL,YELLOW);
            floodfill(width1+( (width2-width1)/2 ),top+d/2,YELLOW);
            delay(600);
            setcolor(BLACK);
            circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
            setfillstyle(SOLID_FILL,BLACK);
            floodfill(width1+( (width2-width1)/2 ),top+d/2,BLACK);
            setcolor(WHITE);
            circle(width1+( (width2-width1)/2 ),top+d/2,d/2);
            printElement(width1+( (width2-width1)/2-10 ),top+20,a,j);
        }
    }
}
main(){
    int n,i=0,width,height;     //n-node number,   i-undur,     width-window width,     height-window height
    cout<<"node number: ";
    cin>>n;
    //height oloh block
    while(1){
        if(pow(2,i)>=n) break;
        i++;
    }
    width=( len*(pow(2,i-1)-1) )+(d*pow(2,i-1));
    height=d*i;
    cout<<"width: "<<width<<"  height: "<<height<<endl;
    initwindow(width,width);
    //massiv uusgeh block
    int a[n];
    for(int j=0;j<n;j++) a[j]=j;
    buildTree(a,n,0,width,0, top);
    settextstyle(DEFAULT_FONT, HORIZ_DIR, 2);
    outtextxy(30,height+30,"Press 'a' to preorder ");
    outtextxy(30,height+50,"Press 'b' to inorder ");
    outtextxy(30,height+70,"Press 'c' to postorder ");
   // outtextxy(30,height+90,"Press space' to exit ");
       while(1){
        int x;
        x=getch();
        if(x==32) exit(0);
        if(x==97){
          int root;
          cout<<"root:";
          cin>>root;
          preorder(a,n,0,width,0,top,root);          //a
        }
        if(x==98){
          int root;
          cout<<"root:";
          cin>>root;
          inorder(a,n,0,width,0,top,root);;          //b
        }
        if(x==99){
          int root;
          cout<<"root:";
          cin>>root;
          postorder(a,n,0,width,0,top,root);         //c
        }
       }
    getch();
}
