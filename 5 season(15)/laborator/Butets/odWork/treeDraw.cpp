#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <windows.h>
#include <graphics.h>
#include <string.h>
#include <math.h>
using namespace std;
int rad,zai,textSZ,h=0,height1, n=0;
DWORD Width = GetSystemMetrics(SM_CXSCREEN);
DWORD Height = GetSystemMetrics(SM_CYSCREEN);
void zurah(int mass[], int Height, int ondor){
    int j=0, Wid;
    h=0;
    char too[5];
    int t, x, pos, idx,i,l=1,len,a,textStle=8,X,Y;
    int k=0;
    if(n<=63){
        rad=30;
        Height=Height/9;
        zai=Height;
        textSZ=2;
    }else{
        rad=15;
        Height=Height/18;
        zai=Height;
        textSZ=1;
        ondor=ondor/2;
    }
    double zai;
    while(j<n){
        Wid=Width/(l+1);
        len=Width/(l/2+1);
        for(i=0;i<l;i++){
            setcolor(BLUE);
            if(j%2==0 && j!=0){
                line(Wid-rad/3,Height-rad/3,len-Width/(l/2+1)+rad/3,Height-rad*3+rad/3);
                setfillstyle(SOLID_FILL,RED);
            }else if(j%2==1){
                line(Wid+rad/3,Height-rad/3,len-rad/3,Height-rad*3+rad/3);
                len=len+(Width/(l/2+1));
            }
            circle(Wid,Height,rad);
            settextstyle(textStle, 0, textSZ);
            //cout<<"hewleh too "<<k<<endl;
            sprintf(too, "%d", mass[k]);
            setcolor(YELLOW);
            if(n<=63){
                outtextxy(Wid-textSZ*2,Height-textSZ*2-5,too);
            }else{
                outtextxy(Wid-textSZ*4,Height-textSZ*8-5,too);
            }
            Wid=Wid+Width/(l+1);
            //len=len+(Width/(l/2+1));
            j++;
            k++;
            if(j>=n){
                break;
            }
        }
        l=l*2;
    Height=Height+rad*3;
    h++; //modnii ondor toolno
    }
    height1=zai;
}
void preOrder(int a[], int idx){
    int j=0,hi=0,wid,head;
    if(idx<=n-1){
        while(j<=idx){
            hi++;
            j=j*2+1;
        }
        j=(j-1)/2;
        wid=idx - j +1;
        wid = (Width/(j+2))*wid;
        head = height1 + rad*3*hi;
        setcolor(BROWN);
        circle(wid,head-5,rad);
        delay(300);
        preOrder(a, 2*idx+1);
        preOrder(a, 2*idx+2);
    }
}
void inOrder(int a[], int idx){
    int j=0,hi=0,wid,head;
    if(idx<=n-1){
        inOrder(a, 2*idx+1);
        while(j<=idx){
            hi++;
            j=j*2+1;
        }
        j=(j-1)/2;
        wid=idx - j +1;
        wid = (Width/(j+2))*wid;
        head = height1 + rad*3*hi;
        setcolor(GREEN);
        circle(wid,head-5,rad);
        delay(300);
        //printf("%d ",p->dat[idx]);
        inOrder(a, 2*idx+2);
    }
}
void postOrder(int a[], int idx){
    int j=0,hi=0,wid,head;
    if(idx<=n-1){
        postOrder(a,2*idx+1);
        postOrder(a,2*idx+2);
        while(j<=idx){
            hi++;
            j=j*2+1;
        }
        j=(j-1)/2;
        wid=idx - j +1;
        wid = (Width/(j+2))*wid;
        head = height1 + rad*3*hi;
        setcolor(RED);
        circle(wid,head-5,rad);
        delay(300);
    }
}
int main()
{
    int ondor=Height;
    int dar; //key darahiig nuleene
    Width = Width/2;
    initwindow(Width,Height);
    //Width=Width/2
	int t, x, pos, idx,i,j=0,l=1,Wid,len,k=0,a,textSZ,textStle=8,X,Y, mass[100];
	int index=0;
	int zzai,wid1,wid2,dd;
    POINT cursorPosition;
    while(1){
        cout<<"1: Insert, 2: Preorder, 3: Inorder, 4: Postoreder, 5: Mouse, 6:exit\n";
        cin>>dar;
        if(dar==1){
            cout<<"Toogoo oruulna uu\n";
            n++;
            cin>>mass[index];
            //for(i=0; i<15; i++){
              //  mass[i]=i+1;
                //n++;
            //}
            cleardevice();
            index++;
            zurah(mass, Height, ondor);
        }
        if(dar==2){
            //PreOrder
            preOrder(mass, 0);

        }
        if(dar==3){
            //InOrder
            inOrder(mass, 0);
        }
        if(dar==4){
            //PostOrder
            postOrder(mass, 0);
        }
        if(dar==5){
            while(1){
                int count=0;
                zai=height1;
                l=1;
                Wid=Width/(l+1);
                GetCursorPos(&cursorPosition);
                X=cursorPosition.x;
                Y=cursorPosition.y-rad;
                        //Left mouse darahaar buh huuhduudiig haruulna
            if(GetAsyncKeyState(VK_LBUTTON)){
                count++;
                while(zai<ondor-height1){
                    zai=zai+rad*3;
                    while(Width>Wid){
                        if(Y>=zai-rad && Y <=zai+rad && X >=Wid-rad && X <=Wid+rad){
                            setcolor(RED);
                            circle(Wid,zai-5,rad);
                            wid1=Width/(l+1);
                            // element moriin huvid heddeh bairlald bgaaag olno
                            int too=1;
                            dd=0;
                            while(wid1<=Wid){
                                dd++;
                                wid1=wid1+Width/(l+1);
                            }
                                n=2;
                                j=(zai-height1)/(rad*3);
                                zzai=zai+rad*3;
                                too=dd*2-1;
                                for(j;j<h;j++){
                                    l=l*2;
                                    wid2=Width/(l+1);
                                    dd=dd*2;
                                    for(i=1;i<=l;i++){
                                        if(i<=dd && i>=too){
                                            setcolor(RED);
                                            circle(wid2,zzai-5,rad);
                                        }
                                        wid2=wid2+Width/(l+1);
                                    }
                                    too=too*2-1;
                                    zzai=zzai+rad*3;
                                }
                            break;
                        }
                        Wid=Wid+Width/(l+1);
                    }
                    if(Y>=zai-rad && Y <=zai+rad && X >=Wid-rad && X <=Wid+rad){
                        break;
                    }
                    l=l*2;
                    Wid=Width/(l+1);
                }
            }
            if(GetAsyncKeyState(VK_RBUTTON)){
                while(zai<ondor-height1){
                    zai=zai+rad*3;
                    while(Width>Wid){
                        if(Y>=zai-rad && Y <=zai+rad && X >=Wid-rad && X <=Wid+rad){
                            setcolor(GREEN);
                            circle(Wid,zai-5,rad);
                            wid1=Width/(l+1);
                            // element moriin huvid heddeh bairlald bgaaag olno
                            int too=1;
                            dd=0;
                            while(wid1<=Wid){
                                dd++;
                                wid1=wid1+Width/(l+1);
                            }
                            n=2;
                            j=(zai-height1)/(rad*3);
                            zzai=zai+rad*3;
                            too=dd*2-1;
                            for(j;j<h;j++){
                                l=l*2;
                                wid2=Width/(l+1);
                                dd=dd*2;
                                for(i=1;i<=l;i++){
                                    if(i<=dd && i>=too){
                                        if(j==h-1){
                                            setcolor(GREEN);
                                            circle(wid2,zzai-5,rad);
                                            delay(100);
                                        }
                                    }
                                    wid2=wid2+Width/(l+1);
                                }
                                too=too*2-1;
                                zzai=zzai+rad*3;
                            }
                            break;
                        }
                        Wid=Wid+Width/(l+1);
                    }
                    if(Y>=zai-rad && Y <=zai+rad && X >=Wid-rad && X <=Wid+rad){
                        break;
                    }
                    l=l*2;
                    Wid=Width/(l+1);
                }
            }
            l=1;
            zai=height1;
            if(GetAsyncKeyState(VK_MBUTTON)){
                for(j=1;j<=h;j++){
                    zai=zai+rad*3;
                    wid1=Width/(l+1);
                    for(i=1;i<=l;i++){
                        setcolor(BLUE);
                        circle(wid1,zai-5,rad);
                        wid1=wid1+Width/(l+1);
                    }
                l=l*2;
                }
            }
            if(count==5){
                break;
            }
            delay(1);
            }
        }
        if(dar==6){
            return 0;
        }
    }
	getch();
	closegraph();
	return 0;
}
