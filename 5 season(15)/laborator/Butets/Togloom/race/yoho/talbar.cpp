#include "talbar.h"
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
            delay(100);
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
    readimagefile("talbar/mori.jpg",head+(urt-head*2)/3+margin+3,head+margin+2,head+(urt-head*2)/3+margin+zai-2,head+margin+zai-2);
    readimagefile("talbar/mori.jpg",urt-head-margin-(urt-head*2)/3-zai+4,urt-margin-head-zai+4,urt-head-margin-(urt-head*2)/3-3,urt-margin-head-3);
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
        line(noots-zai,nice,noots-zai,nice-zai);
        noots=noots-zai+8;
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
