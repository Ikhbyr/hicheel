#include <graphics.h>
#include <conio.h>
int main() {
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD Height = GetSystemMetrics(SM_CYSCREEN);
    int zuragh=200, zuragw=200, shiljilt=50, time=200;
    initwindow(Width/1.5,Height/1.5);
    setcolor(WHITE);
    bar(0,0,Width,Height);
    while(1){
        readimagefile("run1.jpg",Width/4-zuragw/2, Height/4-zuragh/2, Width/4+zuragw/2, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2, Height/4-zuragh/2, Width/4+zuragw/2, Height/4+zuragh/2);
        readimagefile("run2.jpg",Width/4-zuragw/2+shiljilt, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2+shiljilt, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt, Height/4+zuragh/2);
        readimagefile("run3.jpg",Width/4-zuragw/2+shiljilt*2, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*2, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2+shiljilt*2, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*2, Height/4+zuragh/2);
        readimagefile("run4.jpg",Width/4-zuragw/2+shiljilt*3, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*3, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2+shiljilt*3, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*3, Height/4+zuragh/2);
        readimagefile("run5.jpg",Width/4-zuragw/2+shiljilt*4, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*4, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2+shiljilt*4, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*4, Height/4+zuragh/2);
        readimagefile("run6.jpg",Width/4-zuragw/2+shiljilt*5, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*5, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2+shiljilt*5, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*5, Height/4+zuragh/2);
        readimagefile("run7.jpg",Width/4-zuragw/2+shiljilt*6, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*6, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2+shiljilt*6, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*6, Height/4+zuragh/2);
        readimagefile("run8.jpg",Width/4-zuragw/2+shiljilt*7, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*7, Height/4+zuragh/2);
        delay(time);
        bar(Width/4-zuragw/2+shiljilt*7, Height/4-zuragh/2, Width/4+zuragw/2+shiljilt*7, Height/4+zuragh/2);
    }
    getch();
    closegraph();
}
