#include<iostream>
#include<graphics.h>

#define head 50
#define margin 30
int zai,shoox,shooy,shoox1,shooy1;
using namespace std;

void talbar(int urt);
void drawRoad(int urt);
void duurgeh(int a[][10]);
int cursorShalga(int urt, int X, int Y);
int shoo(int urt, int player);
void hewleh(int a[][10]);
void nuudel(int nuuh, int player, int a[][10], int urt);
int shalgah(int a);
class tsereg {
public:
    int i,j;//massiviin haana bgaag
    int x,y;//graphic gorim zaana
    int id;//toglogchiin dugaar
    tsereg(){
        i=0;
        j=0;
    }
};
tsereg huu[4];
int main(){
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD fullHeight = GetSystemMetrics(SM_CYSCREEN);
    POINT cursorPosition;
    int wUrgun = Width/2;
    int talbai[10][10],i,j,X,Y;
    int eelj=0;
    duurgeh(talbai);
    hewleh(talbai);
    initwindow(wUrgun, fullHeight,"RACE");
    setcolor(WHITE);
    bar(0,0,wUrgun,fullHeight);
    setcolor(BLUE);
    drawRoad(wUrgun);
    talbar(wUrgun);
    while(1){
        if(GetAsyncKeyState(VK_LBUTTON)){
            GetCursorPos(&cursorPosition);
            X=cursorPosition.x;
            Y=cursorPosition.y;
            //cout<<"x ni "<<X<<"y ni "<<Y<<endl;
            i=cursorShalga(wUrgun,X,Y);
            if(i==1 || eelj%2==0){
                j=shoo(wUrgun,i);
                cout<<"Nuuh nuudliin too "<<j<<endl;
                eelj++;
                nuudel(j,i,talbai,wUrgun);
            }else if(i==2 && eelj%2==1){
                j=shoo(wUrgun,i);
                cout<<"Nuuh nuudliin too "<<j<<endl;
                eelj++;
                nuudel(j,i,talbai,wUrgun);
            }else if(i==1 || i==2){
                cout<<"Nogoo hun ni darna\n";
            }
        }
        //cout<<"huu 0: "<<huu[0].i<<" "<<huu[0].j<<endl;
        delay(50);
    }
}
void nuudel(int nuuh, int player, int a[][10], int urt){
    int X, Y,i,j;
    POINT cursorPosition;
    /*if(player==1){
        //todruulah
    }else{
        //todruulah
    }*/
    while(1){
        //cout<<" lol "<<player<<endl;
        if(GetAsyncKeyState(VK_LBUTTON)){
            GetCursorPos(&cursorPosition);
            X=cursorPosition.x;
            Y=cursorPosition.y;
            if(player==1){
                if(X>head+margin && X<head+(urt-head*2)/3+margin && Y>head+margin && Y<head+(urt-head*2)/3+margin){
                    if(((huu[0].i==0 && huu[0].j==0) || (huu[1].i==0 && huu[1].j==0)) && nuuh<=6){
                            if(huu[0].i==0 && huu[0].j==0){
                                huu[0].i=0;
                                huu[0].j=4;
                                huu[0].id=1;
                                huu[0].x=head+(urt-head*2)/3+margin;
                                huu[0].y=head+margin;
                            }else
                            if(huu[1].i==0 && huu[1].j==0){
                                huu[1].i=0;
                                huu[1].j=4;
                                huu[1].id=1;
                                huu[1].x=head+(urt-head*2)/3+margin;
                                huu[1].y=head+margin;
                            }
                            if((huu[0].i==0 && huu[0].j==0) || (huu[1].i==0 && huu[1].j==0)){
                                readimagefile("talbar/tal1.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
                            }else{
                                readimagefile("talbar/talemp.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
                            }
                            //delay(300);
                            readimagefile("talbar/horseR.jpg",head+(urt-head*2)/3+margin+3,head+margin+3,head+(urt-head*2)/3+margin+zai-3,head+margin+zai-3);
                        cout<<"daragdlaa \n";
                        break;
                    }
                }else{
                    if(X>huu[0].x && (huu[0].x+zai)>X && huu[0].y<Y && (huu[0].y+zai)>Y){
                        cout<<huu[0].x<<" "<<" ni "<<huu[0].x+zai<<" "<<X<<endl;
                        for(i=0;i<nuuh;i++){
                            if(huu[0].j<9 && huu[0].y==head+margin){
                                if(shalgah(0)==0)
                                bar(huu[0].x+3,huu[0].y+3,huu[0].x+zai-3,huu[0].y+zai-3);
                                huu[0].j=huu[0].j+1;
                                huu[0].x=huu[0].x+zai;
                                if(shalgah(0)==0)
                                readimagefile("talbar/horseR.jpg",huu[0].x+3,huu[0].y+3,huu[0].x+zai-3,huu[0].y+zai-3);
                            }else if(huu[0].i<5 && huu[0].x>urt/2){
                                bar(huu[0].x+7,huu[0].y+3,huu[0].x+zai-3,huu[0].y+zai-3);
                                huu[0].i=huu[0].i+1;
                                huu[0].y=huu[0].y+zai;
                                readimagefile("talbar/horseR.jpg",huu[0].x+7,huu[0].y+3,huu[0].x+zai-3,huu[0].y+zai-3);
                            }else if(huu[0].i==5 && huu[0].x>urt/2 && huu[0].j>5){
                                cout<<"j ni "<<huu[0].j<<endl;
                                if(huu[0].j==9){
                                    bar(huu[0].x+7,huu[0].y+6,huu[0].x+zai-2,huu[0].y+zai+2);
                                }else
                                    bar(huu[0].x,huu[0].y+6,huu[0].x+zai,huu[0].y+zai+2);
                                huu[0].j=huu[0].j-1;
                                huu[0].x=huu[0].x-46;
                                readimagefile("talbar/horseR.jpg",huu[0].x,huu[0].y+6,huu[0].x+zai,huu[0].y+zai+2);
                                int noots=urt-head-margin;
                                setcolor(BLUE);
                                for(j=0;j<4;j++){
                                    if(j==0)
                                        line(noots-50,urt-head-(urt-head*2)/3-margin,noots-50,urt-head-(urt-head*2)/3-margin-zai);
                                    else if(j==3)
                                        line(noots-36,urt-head-(urt-head*2)/3-margin,noots-36,urt-head-(urt-head*2)/3-margin-zai);
                                    else
                                        line(noots-42,urt-head-(urt-head*2)/3-margin,noots-42,urt-head-(urt-head*2)/3-margin-zai);
                                    noots=noots-zai;
                                }
                            }else if(huu[0].j==5 && huu[0].x>urt/2 && huu[0].i<9){
                                cout<<"j ni "<<huu[0].j<<endl;
                                if(huu[0].i==5)
                                    bar(huu[0].x,huu[0].y+6,huu[0].x+zai-10,huu[0].y+zai-2);
                                else if(huu[0].i==6)
                                    bar(huu[0].x+2,huu[0].y+8,huu[0].x+zai-13,huu[0].y+zai-10);
                                else
                                    bar(huu[0].x+2,huu[0].y-8,huu[0].x+zai-13,huu[0].y+zai-10);
                                huu[0].i=huu[0].i+1;
                                huu[0].y=huu[0].y+zai;
                                if(huu[0].i==6)
                                    readimagefile("talbar/horseR.jpg",huu[0].x+2,huu[0].y+8,huu[0].x+zai-13,huu[0].y+zai-10);
                                else if(huu[0].i==9)
                                    readimagefile("talbar/horseR.jpg",huu[0].x+2,huu[0].y-16,huu[0].x+zai-13,huu[0].y+zai-20);
                                else
                                    readimagefile("talbar/horseR.jpg",huu[0].x+2,huu[0].y-10,huu[0].x+zai-13,huu[0].y+zai-15);
                                int noots=0;
                                for(j=0;j<4;j++){
                                    line(urt-head-(urt-head*2)/3-margin,urt-head-(urt-head*2)/3-margin+noots,urt-head-(urt-head*2)/3-margin-zai,urt-head-(urt-head*2)/3-margin+noots);
                                    noots=noots+zai-8;
                                }
                            }else if(huu[0].i==9 && huu[0].j>0){
                                bar(huu[0].x-8,huu[0].y-16,huu[0].x+zai-14,huu[0].y+zai-20);
                                huu[0].j=huu[0].j-1;
                                huu[0].x=huu[0].x-zai;
                                readimagefile("talbar/horseR.jpg",huu[0].x-8,huu[0].y-16,huu[0].x+zai-14,huu[0].y+zai-20);
                            }else if(huu[0].j==0 && huu[0].i>4 && huu[0].x<urt/2){
                                bar(huu[0].x-8,huu[0].y-16,huu[0].x+zai-14,huu[0].y+zai-20);
                                huu[0].i=huu[0].i-1;
                                huu[0].y=huu[0].y-zai;
                                readimagefile("talbar/horseR.jpg",huu[0].x-8,huu[0].y-16,huu[0].x+zai-14,huu[0].y+zai-20);
                            }else if(huu[0].i==4 && huu[0].x<urt/2 && huu[0].j<5){
                                bar(huu[0].x-8,huu[0].y-16,huu[0].x+zai-19,huu[0].y+zai-25);
                                huu[0].j=huu[0].j+1;
                                huu[0].x=huu[0].x+zai;
                                readimagefile("talbar/horseR.jpg",huu[0].x-8,huu[0].y-16,huu[0].x+zai-19,huu[0].y+zai-25);
                            }
                        }
                        break;
                    }else if(X>huu[1].x && huu[1].x+zai>X && huu[0].y<Y && (huu[0].y+zai)>Y){
                        cout<<huu[1].x<<" "<<X<<endl;
                        for(i=1;i<nuuh;i++){
                            if(huu[1].j<10 && huu[1].x==head+(urt-head*2)/3+margin){
                                huu[1].j=huu[1].j+1;

                            }else if(huu[0].i<10 && huu[0].x>urt/2){
                                huu[1].i=huu[1].i+1;
                            }
                        }
                        break;
                    }
                }
            }else{
                break;
            }
        }
    }
}
//neg bairlal deer huunuud dawhtssan eseh
int shalgah(int a){
    int i;
    for(i=0;i<4;i++){
        if(i!=a){
            if(huu[i].j==huu[a].j && huu[i].i==huu[a].i){
                if(huu[i].id==huu[a].id)
                    return 1;
                else
                    return -1;
            }
        }
    }
    return 0;
}
int shoo(int urt, int player){
    int j,i;
    if(player==1){
        for(i=0;i<7; i++){
            j=rand()%6+1;
            switch(j){
            case 1:
                readimagefile("shoo/1.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
                break;
            case 2:
                readimagefile("shoo/2.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
                break;
            case 3:
                readimagefile("shoo/3.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
                break;
            case 4:
                readimagefile("shoo/4.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
                break;
            case 5:
                readimagefile("shoo/5.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
                break;
            case 6:
                readimagefile("shoo/6.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
                break;
            }
            //delay(100);
        }
        readimagefile("shoo/go.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
        return j;
    }else{
        for(i=0;i<7; i++){
            j=rand()%6+1;
            switch(j){
            case 1:
                readimagefile("shoo/1.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
                break;
            case 2:
                readimagefile("shoo/2.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
                break;
            case 3:
                readimagefile("shoo/3.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
                break;
            case 4:
                readimagefile("shoo/4.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
                break;
            case 5:
                readimagefile("shoo/5.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
                break;
            case 6:
                readimagefile("shoo/6.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
                break;
            }
            delay(100);
        }
        readimagefile("shoo/go.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
        return j;
    }
}
int cursorShalga(int urt,int X, int Y){
    if(X>head+(urt-head*2)/3+2*margin+zai && X<urt-head-2*margin-zai && Y>head+zai+2*margin && Y<urt-2*margin-head-(urt-head*2)/3-zai){
        return 1;
    }else
    if(X>head+2*margin+zai && X<urt-2*margin-head-(urt-head*2)/3-zai && Y>head+(urt-head*2)/3+zai+2*margin && Y<urt-head-2*margin-zai){
        return 2;
    }else{
        return -1;
    }
}
void talbar(int urt){
    rectangle(head,head, urt-head, urt-head);
    readimagefile("talbar/talbarFull.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
    readimagefile("talbar/talbarFull1.jpg",(urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3,urt-head,urt-head);
    readimagefile("talbar/od.jpg",head+(urt-head*2)/3+margin+3,head+margin+2,head+(urt-head*2)/3+margin+zai-2,head+margin+zai-2);
    readimagefile("talbar/od.jpg",urt-head-margin-(urt-head*2)/3-zai+4,urt-margin-head-zai+4,urt-head-margin-(urt-head*2)/3-3,urt-margin-head-3);
    line(head+(urt-head*2)/3, head, head+(urt-head*2)/3,head+(urt-head*2)/3);
    line(head, head+(urt-head*2)/3, head+(urt-head*2)/3,head+(urt-head*2)/3);
    line((urt-head)-(urt-head*2)/3, (urt-head), (urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3);
    line((urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3, (urt-head), (urt-head)-(urt-head*2)/3);
    readimagefile("shoo/go.jpg",head+(urt-head*2)/3+2*margin+zai,head+zai+2*margin,urt-head-2*margin-zai,urt-2*margin-head-(urt-head*2)/3-zai);
    readimagefile("shoo/go.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
}
void drawRoad(int urt){
    int i, x=head+(urt-head*2)/3+margin,y=head+margin,dood=urt-head-margin,nice=urt-head-(urt-head*2)/3-margin;
    line(x,y,dood,y);
    zai=(dood)-(x);
    zai=zai/6;
    line(x+zai,y+zai,dood-zai,y+zai);
    line(dood,y,dood,urt-head-(urt-head*2)/3-margin);
    line(dood-zai,y+zai,dood-zai,urt-head-(urt-head*2)/3-margin-zai);
    line(dood,urt-head-(urt-head*2)/3-margin,urt-head-(urt-head*2)/3-margin,urt-head-(urt-head*2)/3-margin);
    line(dood-zai,urt-head-(urt-head*2)/3-margin-zai,urt-head-(urt-head*2)/3-margin-zai,urt-head-(urt-head*2)/3-margin-zai);
    line(urt-head-(urt-head*2)/3-margin-zai,urt-head-(urt-head*2)/3-margin-zai,urt-head-(urt-head*2)/3-margin-zai,dood-zai);
    line(urt-head-(urt-head*2)/3-margin,urt-head-(urt-head*2)/3-margin, urt-head-(urt-head*2)/3-margin, dood);
    line(urt-head-(urt-head*2)/3-margin, dood,y,dood);
    line(urt-head-(urt-head*2)/3-margin-zai, dood-zai,y,dood-zai);
    line(y,dood,y,x);
    line(y+zai,dood,y+zai,x+zai);
    line(y,x,y+(urt-head*2)/3,x);
    line(y+zai,x+zai,y+(urt-head*2)/3+zai,x+zai);
    line(y+(urt-head*2)/3+zai,x+zai,y+(urt-head*2)/3+zai,y);
    line(y+(urt-head*2)/3,x,y+(urt-head*2)/3,y);
    int noots=x,noots1=y;
    for(i=0;i<5;i++){
        line(x+zai,y,x+zai,y+zai);
        x=x+zai;
    }
    x=noots;
    for(i=0;i<5;i++){
        line(dood,y+zai,dood-zai,y+zai);
        y=y+zai;
    }
    y=noots1;
    noots=dood;
    for(i=0;i<4;i++){
        if(i==0)
            line(noots-50,urt-head-(urt-head*2)/3-margin,noots-50,urt-head-(urt-head*2)/3-margin-zai);
        else if(i==3)
            line(noots-36,urt-head-(urt-head*2)/3-margin,noots-36,urt-head-(urt-head*2)/3-margin-zai);
        else
            line(noots-42,urt-head-(urt-head*2)/3-margin,noots-42,urt-head-(urt-head*2)/3-margin-zai);
        noots=noots-zai;
    }
    noots=0;
    for(i=0;i<4;i++){
        line(nice,nice+noots,nice-zai,nice+noots);
        noots=noots+zai-8;
    }
    noots=0;
    for(i=0;i<5;i++){
        line(head+margin+zai+noots,urt-head-margin,head+margin+zai+noots,urt-head-margin-zai);
        noots=noots+zai;
    }
    noots=0;
    for(i=0;i<5;i++){
        line(head+margin,urt-head-margin-zai-noots,head+margin+zai,urt-head-margin-zai-noots);
        noots=noots+zai;
    }
    noots=0;
    for(i=0;i<4;i++){
        line(x,y+zai+noots,x+zai,y+zai+noots);
        noots=noots+zai-8;
    }
    noots=0;
    for(i=0;i<4;i++){
        line(head+margin+(urt-head*2)/3-noots,head+margin+(urt-head*2)/3,head+margin+(urt-head*2)/3-noots,head+margin+(urt-head*2)/3+zai);
        noots=noots+zai-8;
    }
}
void duurgeh(int a[][10]){
    int i, j;
    for(i=0;i<10;i++){
        for(j=0; j<10; j++){
            a[i][j]=0;
        }
    }
    for(i=4; i<10; i++){
        a[0][i]=1;
        a[i][0]=1;
    }
    for(i=0; i<6; i++){
        a[i][9]=1;
        a[9][i]=1;
    }
    for(i=5; i<10; i++){
        a[5][i]=1;
        a[i][5]=1;
    }
    for(i=0;i<5;i++){
        a[i][4]=1;
        a[4][i]=1;
    }
}
void hewleh(int a[][10]){
    int i, j;
    for(i=0;i<10;i++){
        for(j=0; j<10; j++){
            cout<<a[i][j]<<" ";
        }
        cout<<"\n";
    }
}
