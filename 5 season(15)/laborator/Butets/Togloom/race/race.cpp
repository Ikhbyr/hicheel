#include<iostream>
#include<graphics.h>
#include<stdio.h>
#include <Windows.h>

#define head 50
#define margin 30
int zai,shoox,shooy,shoox1,shooy1,onoo1,onoo2;
using namespace std;

//Togloomiin talbariig beldene
void talbar(int urt);
//Shiljih hiigdeh nudiig zurna
void drawRoad(int urt);
void duurgeh(int a[][10]);
//Shoo erguuleh zow huniig zaaj ogno
int cursorShalga(int urt, int X, int Y);
//Shoog erguulj randomoor uuseh nudiig haruulj tuun deerh toog butsaana
int shoo(int urt, int player);
void hewleh(int a[][10]);
//Morinuudiin Nuuh nuudliig todorhoilj ogno
void nuudel(int nuuh, int player, int a[][10], int urt);
//Neg bairlal deer morinuud dahtsan esehiig medeellene
//Hervee neg toglogchiin morinuud bol 1 dawhtsaagui bol 0
int shalgah(int a);
//Morinuudiig nuulgeh zow zam todorhoilj ogohiin zeregtsee
//buhii l bolomjit huvilbaruudiig shalgaj uzeh bolno
void nuulgeh(int urt, int des, int nuuh);
//odtoi talbar deer mori baigaa esehiig shalgana
int odCheck(int a);
//moridiig shiljih uyd bairlaliig ni shinechilj zurj ogoh bolno
void huuZurah(char moriZ[18], int urt, int des);
//Toglogchdiin onoog delgetsnd haruulna
void onoo (int wUrgun);


class tsereg {
public:
    int i,j;//massiviin haana bgaag
    int x,y;//graphic gorim zaana
    int id;//toglogchiin dugaar
    int status,ehleh;
    tsereg(){
        i=0;
        j=0;
        status=0;
        ehleh=0;
    }
};
//Togloomond oroltsoh moridoo beldene
tsereg huu[4];
//Heden odtoi talbar baihiig zaana
tsereg od[2];
int main(){
    FreeConsole();
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD fullHeight = GetSystemMetrics(SM_CYSCREEN);
    POINT cursorPosition;
    int wUrgun = Width/2;
    int talbai[10][10],i,j,X,Y;
    //zow eeljiig todorhoilj ogohod ashiglana
    int eelj=0;
    //Odnuud haana orshij buig zaaj ogno
    od[0].i=0;
    od[0].j=4;
    od[0].id=1;
    od[1].i=9;
    od[1].j=5;
    od[1].id=2;
    //duurgeh(talbai);
    //hewleh(talbai);
    initwindow(wUrgun, fullHeight,"RACE");
    setcolor(WHITE);
    bar(0,0,wUrgun,fullHeight);
    setcolor(BLUE);
    drawRoad(wUrgun);
    talbar(wUrgun);
    onoo(wUrgun);
    while(1){
        if(GetAsyncKeyState(VK_LBUTTON)){
            GetCursorPos(&cursorPosition);
            X=cursorPosition.x;
            Y=cursorPosition.y;
            //cout<<"x ni "<<X<<"y ni "<<Y<<endl;
            i=cursorShalga(wUrgun,X,Y);
            if(i==1 && eelj%2==0){
                j=shoo(wUrgun,i);
                //cout<<"Nuuh nuudliin too "<<j<<endl;
                if(j!=6){
                    eelj++;
                }
                nuudel(j,i,talbai,wUrgun);
            }else if(i==2 && eelj%2==1){
                j=shoo(wUrgun,i);
                //cout<<"Nuuh nuudliin too "<<j<<endl;
                if(j!=6){
                    eelj++;
                }
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
    int X, Y;
    POINT cursorPosition;
    while(1){
        //cout<<" lol "<<player<<endl;
        if(player==1){
            if(((huu[0].i==0 && huu[0].j==0) && (huu[1].i==0 && huu[1].j==0)) && nuuh!=6){
                break;
            }else if((huu[0].i==-1 || huu[1].i==-1) && nuuh!=6 && ((huu[0].i==0 && huu[0].j==0) || (huu[1].i==0 && huu[1].j==0))){
                break;
            }
        }else{
            if(((huu[2].i==0 && huu[2].j==0) && (huu[3].i==0 && huu[3].j==0)) && nuuh!=6){
                break;
            }else if((huu[2].i==-1 || huu[3].i==-1) && nuuh!=6 && ((huu[2].i==0 && huu[2].j==0) || (huu[3].i==0 && huu[3].j==0))){
                break;
            }
        }
        if(GetAsyncKeyState(VK_LBUTTON)){
            GetCursorPos(&cursorPosition);
            X=cursorPosition.x;
            Y=cursorPosition.y-20;
            if(player==1){
                if(X>head+margin && X<head+(urt-head*2)/3+margin && Y>head+margin && Y<head+(urt-head*2)/3+margin){
                    if(((huu[0].i==0 && huu[0].j==0) || (huu[1].i==0 && huu[1].j==0)) && nuuh==6){
                        if(huu[0].i==0 && huu[0].j==0){
                            huu[0].i=0;
                            huu[0].j=4;
                            huu[0].id=1;
                            huu[1].id=1;
                            huu[0].x=head+(urt-head*2)/3+margin;
                            huu[0].y=head+margin;
                        }else
                        if(huu[1].i==0 && huu[1].j==0){
                            huu[1].i=0;
                            huu[1].j=4;
                            huu[1].x=head+(urt-head*2)/3+margin;
                            huu[1].y=head+margin;
                        }
                        if((huu[0].i==0 && huu[0].j==0) || (huu[1].i==0 && huu[1].j==0)){
                            readimagefile("talbar/tal1.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
                        }else{
                            readimagefile("talbar/talemp.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
                        }
                        //delay(300);
                        //cout<<"butsaj ireh utga "<<shalgah(0)<<endl;
                        if(shalgah(0)==1){
                            //cout<<"talbar zurah\n";
                            readimagefile("talbar/hari.jpg",head+(urt-head*2)/3+margin+3,head+margin+3,head+(urt-head*2)/3+margin+zai-3,head+margin+zai-3);
                        }else{
                            readimagefile("talbar/horseR.jpg",head+(urt-head*2)/3+margin+3,head+margin+3,head+(urt-head*2)/3+margin+zai-3,head+margin+zai-3);
                        }
                        if(odCheck(1)==1 && odCheck(0)==1){
                            readimagefile("talbar/zereg.jpg",head+(urt-head*2)/3+margin+3,head+margin+2,head+(urt-head*2)/3+margin+zai-2,head+margin+zai-2);
                        }
                        break;
                    }
                }else{
                    if(X>huu[0].x && (huu[0].x+zai)>X && huu[0].y<Y && (huu[0].y+zai)>Y){
                        //cout<<huu[0].x<<" "<<" ni "<<huu[0].x+zai<<" "<<X<<endl;
                        nuulgeh(urt, 0, nuuh);
                        break;
                    }else if(X>huu[1].x && huu[1].x+zai>X && huu[1].y<Y && (huu[1].y+zai)>Y){
                        //cout<<huu[1].x<<" "<<X<<endl;
                        nuulgeh(urt, 1, nuuh);
                        break;
                    }
                }
            }else{
                if(X>(urt-head)-(urt-head*2)/3 && X<urt-head && Y>(urt-head)-(urt-head*2)/3 && Y<urt-head){
                    if(((huu[2].i==0 && huu[2].j==0) || (huu[3].i==0 && huu[3].j==0)) && nuuh==6){
                        if(huu[2].i==0 && huu[2].j==0){
                            huu[2].i=9;
                            huu[2].j=5;
                            huu[2].id=2;
                            huu[3].id=2;
                            huu[2].x=urt-head-(urt-head*2)/3-margin-zai+5;
                            huu[2].y=urt-head-margin-zai+17;
                        }else
                        if(huu[3].i==0 && huu[3].j==0){
                            huu[3].i=9;
                            huu[3].j=5;
                            huu[3].id=2;
                            huu[3].x=urt-head-(urt-head*2)/3-margin-zai+5;
                            huu[3].y=urt-head-margin-zai+17;
                        }
                        if((huu[2].i==0 && huu[2].j==0) || (huu[3].i==0 && huu[3].j==0)){
                            readimagefile("talbar/tal12.jpg",(urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3,urt-head,urt-head);
                        }else{
                            readimagefile("talbar/talemp.jpg",(urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3,urt-head,urt-head);
                        }
                        //delay(300);
                        if(shalgah(2)==1){
                            readimagefile("talbar/shari.jpg",urt-head-(urt-head*2)/3-margin-zai+3,urt-head-margin-zai+3,urt-head-(urt-head*2)/3-margin-3,urt-head-margin-3);
                        }else{
                            readimagefile("talbar/mori.jpg",urt-head-(urt-head*2)/3-margin-zai+3,urt-head-margin-zai+3,urt-head-(urt-head*2)/3-margin-3,urt-head-margin-3);
                        }
                        if(odCheck(2)==2 && odCheck(3)==2){
                            readimagefile("talbar/shari.jpg",urt-head-(urt-head*2)/3-margin-zai+3,urt-head-margin-zai+3,urt-head-(urt-head*2)/3-margin-3,urt-head-margin-3);
                        }else{
                            readimagefile("talbar/mori.jpg",urt-head-(urt-head*2)/3-margin-zai+3,urt-head-margin-zai+3,urt-head-(urt-head*2)/3-margin-3,urt-head-margin-3);
                        }
                        break;
                    }
                }else{
                    if(X>huu[2].x && (huu[2].x+zai)>X && huu[2].y<Y && (huu[2].y+zai)>Y){
                        //cout<<huu[2].x<<" "<<" ni "<<huu[2].x+zai<<" "<<X<<endl;
                        nuulgeh(urt, 2, nuuh);
                        break;
                    }else if(X>huu[3].x && huu[3].x+zai>X && huu[3].y<Y && (huu[3].y+zai)>Y){
                        //cout<<huu[3].x<<" "<<X<<endl;
                        nuulgeh(urt, 3, nuuh);
                        break;
                    }
                }
            }
        }
    }
}

void nuulgeh(int urt, int des, int nuuh){
    int i,j;
    char moriZ[18];
    if(huu[des].id==1){
        strcpy(moriZ,"talbar/horseR.jpg");
    }else{
        strcpy(moriZ,"talbar/mori.jpg");
    }
    for(i=0;i<nuuh;i++){
        if(huu[des].j<9 && huu[des].y==head+margin){
            if(shalgah(des)==0)
            bar(huu[des].x+3,huu[des].y+3,huu[des].x+zai-3,huu[des].y+zai-3);
            huu[des].j=huu[des].j+1;
            huu[des].x=huu[des].x+zai;
            if(shalgah(des)==0)
            readimagefile(moriZ,huu[des].x+3,huu[des].y+3,huu[des].x+zai-3,huu[des].y+zai-3);
        }else if(huu[des].i<5 && huu[des].x>urt/2){
            if(shalgah(des)==0)
            bar(huu[des].x+7,huu[des].y+3,huu[des].x+zai-3,huu[des].y+zai-3);
            huu[des].i=huu[des].i+1;
            huu[des].y=huu[des].y+zai;
            huu[des].ehleh=1;
            if(shalgah(des)==0)
            readimagefile(moriZ,huu[des].x+7,huu[des].y+3,huu[des].x+zai-3,huu[des].y+zai-3);
        }else if(huu[des].i==5 && huu[des].x>urt/2 && huu[des].j>5){
            //cout<<"j ni "<<huu[des].j<<endl;
            if(shalgah(des)==0){
                if(huu[des].j==9){
                    bar(huu[des].x+7,huu[des].y+6,huu[des].x+zai-2,huu[des].y+zai+2);
                }else
                    bar(huu[des].x,huu[des].y+6,huu[des].x+zai,huu[des].y+zai+2);
            }
            huu[des].j=huu[des].j-1;
            huu[des].x=huu[des].x-46;
            if(shalgah(des)==0)
            readimagefile(moriZ,huu[des].x,huu[des].y+6,huu[des].x+zai,huu[des].y+zai+2);
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
        }else if(huu[des].j==5 && huu[des].x>urt/2 && huu[des].i<9){
            //cout<<"j ni "<<huu[des].j<<endl;
            if(shalgah(des)==0){
                if(huu[des].i==5)
                    bar(huu[des].x,huu[des].y+6,huu[des].x+zai-10,huu[des].y+zai-2);
                else if(huu[des].i==6)
                    bar(huu[des].x+2,huu[des].y+8,huu[des].x+zai-13,huu[des].y+zai-10);
                else
                    bar(huu[des].x+2,huu[des].y-8,huu[des].x+zai-13,huu[des].y+zai-10);
            }
            huu[des].i=huu[des].i+1;
            huu[des].y=huu[des].y+zai;
            if(shalgah(des)==0){
                if(huu[des].i==6)
                    readimagefile(moriZ,huu[des].x+2,huu[des].y+8,huu[des].x+zai-13,huu[des].y+zai-10);
                else if(huu[des].i==9)
                    readimagefile(moriZ,huu[des].x+2,huu[des].y-16,huu[des].x+zai-13,huu[des].y+zai-20);
                else
                    readimagefile(moriZ,huu[des].x+2,huu[des].y-10,huu[des].x+zai-13,huu[des].y+zai-15);
            }
            int noots=0;
            for(j=0;j<4;j++){
                line(urt-head-(urt-head*2)/3-margin,urt-head-(urt-head*2)/3-margin+noots,urt-head-(urt-head*2)/3-margin-zai,urt-head-(urt-head*2)/3-margin+noots);
                noots=noots+zai-8;
            }
        }else if(huu[des].i==9 && huu[des].j>0){
            //cout<<"Bairlal x: "<<huu[des].x<<" y: "<<huu[des].y<<endl;
            if(shalgah(des)==0)
            bar(huu[des].x-8,huu[des].y-16,huu[des].x+zai-14,huu[des].y+zai-20);
            huu[des].j=huu[des].j-1;
            huu[des].x=huu[des].x-zai;
            if(shalgah(des)==0)
            readimagefile(moriZ,huu[des].x-8,huu[des].y-16,huu[des].x+zai-14,huu[des].y+zai-20);
        }else if(huu[des].j==0 && huu[des].i>4 && huu[des].x<urt/2){
            if(shalgah(des)==0)
            bar(huu[des].x-8,huu[des].y-16,huu[des].x+zai-14,huu[des].y+zai-20);
            huu[des].i=huu[des].i-1;
            huu[des].y=huu[des].y-zai;
            if(shalgah(des)==0)
            readimagefile(moriZ,huu[des].x-8,huu[des].y-16,huu[des].x+zai-14,huu[des].y+zai-20);
        }else if(huu[des].i==4 && huu[des].x<urt/2 && huu[des].j<4){
            if(shalgah(des)==0){
                if(huu[des].j==9){
                    bar(huu[des].x+7,huu[des].y+6,huu[des].x+zai-2,huu[des].y+zai+2);
                }else
                    bar(huu[des].x,huu[des].y-16,huu[des].x+zai-10,huu[des].y+zai-25);
            }
            huu[des].j=huu[des].j+1;
            huu[des].x=huu[des].x+zai-8;
            if(shalgah(des)==0)
            readimagefile(moriZ,huu[des].x,huu[des].y-16,huu[des].x+zai-10,huu[des].y+zai-25);
            int noots=0;
            for(j=0;j<4;j++){
                line(head+margin+(urt-head*2)/3-noots,head+margin+(urt-head*2)/3,head+margin+(urt-head*2)/3-noots,head+margin+(urt-head*2)/3+zai);
                noots=noots+zai-8;
            }
        }else if(huu[des].j==4 && huu[des].i>0){
            if(shalgah(des)==0)
            bar(huu[des].x+4,huu[des].y-25,huu[des].x+zai-10,huu[des].y+zai-30);
            huu[des].i=huu[des].i-1;
            huu[des].y=huu[des].y-zai+8;
            if(shalgah(des)==0)
            readimagefile(moriZ,huu[des].x+4,huu[des].y-25,huu[des].x+zai-10,huu[des].y+zai-30);
            int noots=0;
            for(j=0;j<4;j++){
                line(head+(urt-head*2)/3+margin,margin+head+zai+noots,head+(urt-head*2)/3+margin+zai,margin+head+zai+noots);
                noots=noots+zai-8;
            }
        }
        if(huu[des].j==4&&huu[des].i==0){
            huu[des].x=head+(urt-head*2)/3+margin;
            huu[des].y=head+margin;
        }
    }

    for(i=0;i<4;i++){
        if(huu[i].id!=huu[des].id && huu[i].i == huu[des].i && huu[i].j == huu[des].j){
            huuZurah(moriZ, urt, des);
            if(odCheck(des)==0){
                if(huu[i].id==1){
                    huu[i].i=0;
                    huu[i].j=0;
                    huu[i].x=0;
                    huu[i].y=0;
                    huu[i].ehleh=0;
                    if((huu[0].i==0 && huu[0].j==0) || (huu[1].i==0 && huu[1].j==0)){
                        readimagefile("talbar/tal1.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
                    }else{
                        readimagefile("talbar/talemp.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
                    }
                }else{
                    huu[i].i=0;
                    huu[i].j=0;
                    huu[i].x=0;
                    huu[i].y=0;
                    huu[i].ehleh=0;
                    if((huu[2].i==0 && huu[2].j==0) || (huu[3].i==0 && huu[3].j==0)){
                        readimagefile("talbar/tal12.jpg",(urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3,urt-head,urt-head);
                    }else{
                        readimagefile("talbar/talemp.jpg",(urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3,urt-head,urt-head);
                    }
                }
            }else{
                if(odCheck(des)==1){
                    readimagefile("talbar/zereg.jpg",head+(urt-head*2)/3+margin+3,head+margin+2,head+(urt-head*2)/3+margin+zai-2,head+margin+zai-2);
                }else{
                    readimagefile("talbar/zereg.jpg",urt-head-margin-(urt-head*2)/3-zai+4,urt-margin-head-zai+4,urt-head-margin-(urt-head*2)/3-3,urt-margin-head-3);
                }
            }
        }
    }
    if(shalgah(des)==1){
        if(huu[des].id==1){
            huu[0].status=3;
            huu[1].status=3;
            strcpy(moriZ,"talbar/hari.jpg");
            huuZurah(moriZ, urt, des);
        }else{
            huu[2].status=3;
            huu[3].status=3;
            strcpy(moriZ,"talbar/shari.jpg");
            huuZurah(moriZ, urt, des);
        }
    }else{
        if(huu[des].id==1){
            if(huu[des].status==3){
                huu[0].status=0;
                huu[1].status=0;
                huuZurah(moriZ, urt, 0);
                huuZurah(moriZ, urt, 1);
            }
        }else{
            if(huu[des].status==3){
                huu[2].status=0;
                huu[3].status=0;
                huuZurah(moriZ, urt, 2);
                huuZurah(moriZ, urt, 3);
            }
        }
    }
    int l1=0,l2=0;
    for(i=0; i<4; i++){
        if(odCheck(i)==1){
            l1++;
        }else if(odCheck(i)==2){
            l2++;
        }
    }
    if(huu[des].ehleh==1){
        if(huu[des].id==1){
            if(huu[des].i==0 && huu[des].j==4){
                onoo1++;
                onoo(urt);
                huu[des].i=-1;
                huu[des].x=19999;
                if(odCheck(des)==0){
                    readimagefile("talbar/od.jpg",head+(urt-head*2)/3+margin+3,head+margin+2,head+(urt-head*2)/3+margin+zai-2,head+margin+zai-2);
                }
                if(onoo1==2){
                    cout<<"1r player yllaa\n";
                    readimagefile("talbar/win1.jpg",head, head*3, urt-head, urt-head*2);
                    delay(5000);
                }
            }
        }else{
            if(huu[des].i==9 && huu[des].j==5){
                onoo2++;
                onoo(urt);
                huu[des].i=-1;
                huu[des].x=19999;
                if(odCheck(des)==0){
                    readimagefile("talbar/od.jpg",urt-head-margin-(urt-head*2)/3-zai+4,urt-margin-head-zai+4,urt-head-margin-(urt-head*2)/3-3,urt-margin-head-3);
                }
                if(onoo2==2){
                    cout<<"2r player yllaa\n";
                    readimagefile("talbar/win2.jpg",head, head*3, urt-head, urt-head*2);
                    delay(5000);
                }
            }
        }
    }
    if(l1==0){
        readimagefile("talbar/od.jpg",head+(urt-head*2)/3+margin+3,head+margin+2,head+(urt-head*2)/3+margin+zai-2,head+margin+zai-2);
    }
    if(l2==0){
        readimagefile("talbar/od.jpg",urt-head-margin-(urt-head*2)/3-zai+4,urt-margin-head-zai+4,urt-head-margin-(urt-head*2)/3-3,urt-margin-head-3);
    }
    if((huu[2].i==0 && huu[2].j==0) || (huu[3].i==0 && huu[3].j==0)){
        readimagefile("talbar/tal12.jpg",(urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3,urt-head,urt-head);
    }else{
        readimagefile("talbar/talemp.jpg",(urt-head)-(urt-head*2)/3, (urt-head)-(urt-head*2)/3,urt-head,urt-head);
    }
    if((huu[0].i==0 && huu[0].j==0) || (huu[1].i==0 && huu[1].j==0)){
        readimagefile("talbar/tal1.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
    }else{
        readimagefile("talbar/talemp.jpg",head,head,head+(urt-head*2)/3,head+(urt-head*2)/3);
    }
}

void huuZurah(char moriZ[18], int urt, int des){
    int j;
    if(huu[des].j<9 && huu[des].y==head+margin){
        readimagefile(moriZ,huu[des].x+3,huu[des].y+3,huu[des].x+zai-3,huu[des].y+zai-3);
    }else if(huu[des].i<5 && huu[des].x>urt/2){
        readimagefile(moriZ,huu[des].x+7,huu[des].y+3,huu[des].x+zai-3,huu[des].y+zai-3);
    }else if(huu[des].i==5 && huu[des].x>urt/2 && huu[des].j>5){
        readimagefile(moriZ,huu[des].x,huu[des].y+6,huu[des].x+zai,huu[des].y+zai+2);
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
    }else if(huu[des].j==5 && huu[des].x>urt/2 && huu[des].i<9){
        if(huu[des].i==6)
            readimagefile(moriZ,huu[des].x+2,huu[des].y+8,huu[des].x+zai-13,huu[des].y+zai-10);
        else if(huu[des].i==9)
            readimagefile(moriZ,huu[des].x+2,huu[des].y-16,huu[des].x+zai-13,huu[des].y+zai-20);
        else
            readimagefile(moriZ,huu[des].x+2,huu[des].y-10,huu[des].x+zai-13,huu[des].y+zai-15);
        int noots=0;
        for(j=0;j<4;j++){
            line(urt-head-(urt-head*2)/3-margin,urt-head-(urt-head*2)/3-margin+noots,urt-head-(urt-head*2)/3-margin-zai,urt-head-(urt-head*2)/3-margin+noots);
            noots=noots+zai-8;
        }
    }else if(huu[des].i==9 && huu[des].j>0){
        readimagefile(moriZ,huu[des].x-8,huu[des].y-16,huu[des].x+zai-14,huu[des].y+zai-20);
    }else if(huu[des].j==0 && huu[des].i>4 && huu[des].x<urt/2){
        readimagefile(moriZ,huu[des].x-8,huu[des].y-16,huu[des].x+zai-14,huu[des].y+zai-20);
    }else if(huu[des].i==4 && huu[des].x<urt/2 && huu[des].j<4){
        readimagefile(moriZ,huu[des].x,huu[des].y-16,huu[des].x+zai-10,huu[des].y+zai-25);
        int noots=0;
        for(j=0;j<4;j++){
            line(head+margin+(urt-head*2)/3-noots,head+margin+(urt-head*2)/3,head+margin+(urt-head*2)/3-noots,head+margin+(urt-head*2)/3+zai);
            noots=noots+zai-8;
        }
    }else if(huu[des].j==4 && huu[des].i>0){
        readimagefile(moriZ,huu[des].x+4,huu[des].y-25,huu[des].x+zai-10,huu[des].y+zai-30);
        int noots=0;
        for(j=0;j<4;j++){
            line(head+(urt-head*2)/3+margin,margin+head+zai+noots,head+(urt-head*2)/3+margin+zai,margin+head+zai+noots);
            noots=noots+zai-8;
        }
    }
}

int odCheck(int a){
    int i;
    for(i=0;i<2;i++){
        if(huu[a].i==od[i].i && huu[a].j==od[i].j){
            return od[i].id;
        }
    }
    return 0;
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
            delay(50);
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
            delay(50);
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
    readimagefile("shoo/6.jpg",head+2*margin+zai,head+(urt-head*2)/3+zai+2*margin,urt-2*margin-head-(urt-head*2)/3-zai,urt-head-2*margin-zai);
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
void onoo(int wUrgun){
    char too[2],too1[2];
    setcolor(WHITE);
    settextstyle(9, 0, 3);
    sprintf(too, "%d", onoo1);
    sprintf(too1, "%d", onoo2);
    outtextxy(wUrgun/2-50,3,too);
    char point[6]="/2 : ",
    outtextxy(wUrgun/2-35,3,point);
    outtextxy(wUrgun/2+18,3,too1);
    char dan[3]="/2";
    outtextxy(wUrgun/2+36,3,dan);
    setcolor(BLUE);
}
