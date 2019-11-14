#include<windows.h>
#include<graphics.h>
#include<stdio.h>
#define border 50
int main()
{
    //Delgetsnii full hemjeeg ni awah
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD Height = GetSystemMetrics(SM_CYSCREEN);
    initwindow(Width/2,Height/1.5);
    //Mouse cursoriin bairlal zaana
	POINT cursorPosition;
	int X,Y;
	//Button zurah heseg
	setcolor(BLUE);
    rectangle(border,border,border*4,border*2);
    rectangle(border*5,border,border*8,border*2);
    rectangle(border*9,border,border*12,border*2);
    //Mouse nii daraltiig zaah heseg
    setcolor(WHITE);
    settextstyle(8, 0, 1);
    outtextxy(border*2-10,border-10,"LeftClick");
    outtextxy(border*6-35,border-10,"DoubleRightClick");
    outtextxy(border*10-35,border-10,"MiddleClick");
    setcolor(YELLOW);
    settextstyle(8, 0, 3);
    outtextxy(0,0,"Deer ni darj dursee songono uu...");
    outtextxy(border*2-10,border+10,"Dugui");
    outtextxy(border*6-35,border+10,"Durvuljin");
    outtextxy(border*10-35,border+10,"Gurvaljin");
    // Mouse click darahiig huleene
    while(1)
    {
        //Mouse clicknii x, y bairlal awna
        GetCursorPos(&cursorPosition);
        X=cursorPosition.x;
        Y=cursorPosition.y;
        //Mouse zuun daraltiig huleen awna
        if(GetAsyncKeyState(VK_LBUTTON)){
            // Durs dawharduulahguin tuld Delgetsiig tsewerlene
            setcolor(BLACK);
            line(Width/4,Height/3-90,Width/4-90,Height/3+90);
            line(Width/4,Height/3-90,Width/4+90,Height/3+90);
            line(Width/4-90,Height/3+90,Width/4+90,Height/3+90);
            rectangle(Width/4-90,Height/3-90,Width/4+border*2,Height/3+border*2);
            settextstyle(8, 0, 3);
            outtextxy(Width/9,Height/2-border,"Ta buruu gazar darlaa");
            //Doorh bolzoliig hangasan uyd dugui zurna
            if(X>=border && X<=border*4 && Y>=border+35 && Y<=border*2+35)
            {
                setcolor(RED);
                circle(Width/4,Height/3,90);
            }else{
            // Buttonuudaas oor gazar daragdsan uyd daraah messagiig haruulna
                setcolor(RED);
                settextstyle(8, 0, 3);
                outtextxy(Width/9,Height/2-border,"Ta buruu gazar darlaa");
            }
        }
        // Double click daraltiig shalgana
        if(ismouseclick(WM_RBUTTONDBLCLK)){
            // Durs dawharduulahguin tuld Delgetsiig tsewerlene
            setcolor(BLACK);
            line(Width/4,Height/3-90,Width/4-90,Height/3+90);
            line(Width/4,Height/3-90,Width/4+90,Height/3+90);
            line(Width/4-90,Height/3+90,Width/4+90,Height/3+90);
            circle(Width/4,Height/3,90);
            settextstyle(8, 0, 3);
            outtextxy(Width/9,Height/2-border,"Ta buruu gazar darlaa");
            //Yg ali button deer daragdaj buig olno
            //Doorh bolzoliig hangasan uyd durvuljin zurna
            if(X>=border*5 && X<=border*8 && Y>=border+35 && Y<=border*2+35)
            {
                setcolor(BLUE);
                rectangle(Width/4-90,Height/3-90,Width/4+border*2,Height/3+border*2);
            }else
            //Doorh bolzoliig hangasan uyd gurvaljin zurna
            if(X>=border*9 && X<=border*12 && Y>=border+35 && Y<=border*2+35)
            {
                setcolor(CYAN);
                line(Width/4,Height/3-90,Width/4-90,Height/3+90);
                line(Width/4,Height/3-90,Width/4+90,Height/3+90);
                line(Width/4-90,Height/3+90,Width/4+90,Height/3+90);
            }else{
            // Buttonuudaas oor gazar daragdsan uyd daraah messagiig haruulna
                setcolor(RED);
                settextstyle(8, 0, 3);
                outtextxy(Width/9,Height/2-border,"Ta buruu gazar darlaa");
            }
            clearmouseclick(WM_RBUTTONDBLCLK);
        }
        //scrolliin daraltiig shalgana
        if(GetAsyncKeyState(VK_MBUTTON)){
            // Durs dawharduulahguin tuld Delgetsiig tsewerlene
            setcolor(BLACK);
            rectangle(Width/4-90,Height/3-90,Width/4+border*2,Height/3+border*2);
            circle(Width/4,Height/3,90);
            settextstyle(8, 0, 3);
            outtextxy(Width/9,Height/2-border,"Ta buruu gazar darlaa");
            //Doorh bolzoliig hangasan uyd gurvaljin zurna
            if(X>=border*9 && X<=border*12 && Y>=border+35 && Y<=border*2+35)
            {
                setcolor(CYAN);
                line(Width/4,Height/3-90,Width/4-90,Height/3+90);
                line(Width/4,Height/3-90,Width/4+90,Height/3+90);
                line(Width/4-90,Height/3+90,Width/4+90,Height/3+90);
            }else{
            // Buttonuudaas oor gazar daragdsan uyd daraah messagiig haruulna
                setcolor(RED);
                settextstyle(8, 0, 3);
                outtextxy(Width/9,Height/2-border,"Ta buruu gazar darlaa");
            }
        }
        if(ismouseclick(WM_MOUSEWHEEL))
        {
            getmouseclick(WM_MOUSEWHEEL,X,Y);
            setcolor(BROWN);
            outtextxy(X,Y,"SCROLLING");
            delay(100);
            setcolor(BLACK);
            outtextxy(X,Y,"SCROLLING");
        }
        delay(1);
    }
    getch();
    closegraph();
}
