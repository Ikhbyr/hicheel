#include <graphics.h>
#include <conio.h>
int main() {
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD Height = GetSystemMetrics(SM_CYSCREEN);
    int zuragh=50, zuragw=100, shiljilt=50,l,h,w=0,w1=0,time=50;
    initwindow(Width/1.5,Height/1.5);
    setcolor(WHITE);
    bar(0,0,Width,Height);
    setcolor(BLACK);
    line(0, Height/2+97, Width/1.5, Height/2+97);
    while(1){
        l=zuragh+150;
        while(Height/2>=l){
            readimagefile("ball1.jpg",Width/4-zuragw, l-100, Width/4+zuragw, 100+l);
            delay(time/2);
            h=l;
            l+=20;
        }
        l=l-20;
        w=Width/4-zuragw;
        w1=Width/4+zuragw;
        while(Height/2+20>=h){
            readimagefile("ball1.jpg",w, h-100, w1, 100+l);
            delay(time);
            w-=2;
            w1+=2;
            h+=10;
        }
        h-=10;
        while(l<=h){
            readimagefile("ball1.jpg",w, h-100, w1, 100+l);
            delay(time);
            w+=2;
            w1-=2;
            h-=20;
        }
        w-=2;
        w1+=2;
        int cnt=0;
        while(l>=-600){
            readimagefile("ball2.jpg",w, l-100, w1, 100+l);
            delay(50);
            l-=50;
        }
        //cleardevice();
        setcolor(BLACK);
        //line(0, Height/2+97, Width/1.5, Height/2+97);
    }
    getch();
}
