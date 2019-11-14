#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <windows.h>
#include <graphics.h>
#include <string.h>
#include <math.h>
using namespace std;
int main()
{
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD Height = GetSystemMetrics(SM_CYSCREEN);
    int ondor=Height;
    //Width = Width/2;
    initwindow(Width,Height);
    //Width=Width/2
	char too[5];
	int t, x, pos, idx,i,j=0,l=1,n=63,Wid,len,rad,k=1,a,textSZ,textStle=8,X,Y;
	int zzai,wid1,wid2,h=0,dd;
	if(n<=63){
        rad=30;
        Height=Height/9;
        int zai=Height;
        textSZ=2;
	}else{
        rad=15;
        Height=Height/18;
        int zai=Height;
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
                //zai=sqrt(pow((len-Width/(l/2+1)-Wid),2)+pow((-rad*3),2));
                //haritsaa=zai/rad;
                line(Wid-rad/3,Height-rad/3,len-Width/(l/2+1)+rad/3,Height-rad*3+rad/3);
                setfillstyle(SOLID_FILL,RED);
                //len=len+(Width/(l/2+1));
            }else if(j%2==1){
                line(Wid+rad/3,Height-rad/3,len-rad/3,Height-rad*3+rad/3);
                len=len+(Width/(l/2+1));
            }
            //setfillstyle(SOLID_FILL, YELLOW);
            circle(Wid,Height,rad);
            //setfillstyle(SOLID_FILL, YELLOW);
            //floodfill(Wid,Height,WHITE);
            settextstyle(textStle, 0, textSZ);
            sprintf(too, "%d", k);
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
    Height=zai;
    POINT cursorPosition;
    while(1){
        zai=Height;
        l=1;
        Wid=Width/(l+1);
        cout<<"mouse || keyboard";
        int dar;
        cin>>dar;
        if(dar==32){
         while(dar){
                GetCursorPos(&cursorPosition);
                X=cursorPosition.x;
                Y=cursorPosition.y-rad;
                        //Left mouse darahaar buh huuhduudiig haruulna
            if(GetAsyncKeyState(VK_LBUTTON)){
                while(zai<ondor-Height){
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
                                j=(zai-Height)/(rad*3);
                                zzai=zai+rad*3;
                                too=dd*2-1;
                                for(j;j<h;j++){
                                    l=l*2;
                                    //wid1=wid1-(Width/(l+1))/2;
                                    wid2=Width/(l+1);
                                    dd=dd*2;
                                    for(i=1;i<=l;i++){
                                        if(i<=dd && i>=too){
                                            setcolor(RED);
                                            circle(wid2,zzai-5,rad);
                                        }
                                        wid2=wid2+Width/(l+1);
                                    }
                                    //n=n*2;
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
                dar=0;
            }
            if(GetAsyncKeyState(VK_RBUTTON)){
                while(zai<ondor-Height){
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
                            j=(zai-Height)/(rad*3);
                            zzai=zai+rad*3;
                            too=dd*2-1;
                            for(j;j<h;j++){
                                l=l*2;
                                //wid1=wid1-(Width/(l+1))/2;
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
                                //n=n*2;
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
                dar=0;
            }
            l=1;
            zai=Height;
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
                dar=0;
            }
            delay(1);
         }
        }else{
            cin>>dar;
        }
    }
	getch();
	closegraph();
	return 0;
}
