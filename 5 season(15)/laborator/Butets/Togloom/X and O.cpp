#include<iostream>
#include<conio.h>
#include<graphics.h>
#define nudT 3//Nudnii too
#define nud_size 50 // Nudnii hemjee
#define nud nudT+1
#define ehlel 100 //Husegtiin ehlel
#define togsgol nud_size*nudT+ehlel
#define hewlehEh togsgol+nud_size
#define hewlehY 160
#define daraalal 3 //Hojih daraalliin urt
#include<windows.h>
#include"MMSystem.h"
int width=(nudT+2)*nud_size+ehlel*2;
int height=(nudT+2)*nud_size+ehlel;
using namespace std;
void durvuljin(int x1,int y1, int x2, int y2);//Durvuljin zurna
int tawih(int x); // Massiviin haana orohiig butsaana
void win(int t); // Ylagchiin medeellig delgetsend haruulna
void draw(); // Tentssen medeelel
int mousel(int x);
void shiljih(int x1,int y1,int x2,int y2);
int main(){
    POINT cursorPosition;
    int gd = DETECT, gm,x1=ehlel,x2=x1+nud_size*nudT,y1=ehlel,y2=ehlel,tooluur=0,ut1,ut2,in,ji,t2=0,t3=0,duuren=0,i;
    int a[nudT][nudT],s,y; //Massiv zarlalt
    char ner1[20],ner2[20];
    cout<<"Please, insert to Player1 name\n";
    cin>>ner1;
    cout<<"Please, insert to Player2 name\n";
    cin>>ner2;
    initwindow(width,height);
    //husnegtiin hewtee
    for(int i=0; i<nud; i++){
        line(x1,y1,x2,y2);
        y1=y1+nud_size;
        y2=y1;
    }
    //Husnegtiin bosoo
    x1=ehlel;x2=x1;y1=ehlel;y2=y1+nud_size*nudT;
    for(int i=0; i<nud; i++){
        line(x1,y1,x2,y2);
        x1=x1+nud_size;
        x2=x1;
    }
    readimagefile("board.jpg", ehlel, ehlel, ehlel+nud_size*3,ehlel+nud_size*3);
    int asciiValue, tseg1, tseg2;
    x1=ehlel;y1=ehlel;y2=ehlel+nud_size;x2=ehlel+nud_size;
    setcolor(YELLOW);
    durvuljin(x1,y1,x2,y2);
    durvuljin(x1-1,y1-1,x2-1,y2-1);
    while(1)
    {
        GetCursorPos(&cursorPosition);
        tseg1=cursorPosition.x;
        tseg2=cursorPosition.y;
        //Ali toglogch durs tawihiig zaana
        if(tooluur%2==0){
            setcolor(YELLOW);
            settextstyle(8, 0, 3);
            outtextxy(width-ehlel,height/2,ner1);
        }else{
            setcolor(BLUE);
            settextstyle(8, 0, 3);
            outtextxy(width-ehlel,height/2,ner2);
        }
        //asciiValue=getch();
        //Enter darsan esehiig shalgana
        if(asciiValue==13 || asciiValue==32 || (GetAsyncKeyState(VK_LBUTTON)&&tseg1<=ehlel+nudT*nud_size&&tseg1>=ehlel&&tseg2<=ehlel+nudT*nud_size&&tseg2>=ehlel)){
            if(GetAsyncKeyState(VK_LBUTTON)){
                ut2=mousel(tseg2);
                ut1=mousel(tseg1);
                y1=ut2*nud_size+ehlel;
                x1=ut1*nud_size+ehlel;
            }else{
                ut2=tawih(x1);
                ut1=tawih(y1);
            }
            //Massivt Utga orson esehiig shalgana omnoh utgiig oorchlohgui
            if(a[ut1][ut2]==2||a[ut1][ut2]==3){

            }else{
                //Husnegt duursen esehiig shalgana
                duuren++;
                //O bolon X eeljelhiig zaana
                if(tooluur%2==0){
                    setcolor(YELLOW);
                    settextstyle(8, 0, nud_size/11);
                    outtextxy(x1+13,y1+5,"X");
                    a[ut1][ut2]=2;
                    tooluur++;
                }else{
                    setcolor(BLUE);
                    settextstyle(8, 0, nud_size/11);
                    outtextxy(x1+nud_size/3,y1+nud_size/10,"O");
                    tooluur++;
                    a[ut1][ut2]=3;
                }
            }

            //Massiv hewleh
            for(in=0;in<nudT;in++){
                for(ji=0;ji<nudT;ji++){
                    cout<<a[in][ji]<<" ";
                }
                cout<<"\n";
            }
            int x=daraalal,ji=ut2,in=ut1,t2=0,t3=0;
            if(ji-x+1<0){
                i=0;
            }else{
                i=ji-x+1;
            }
            if(ji+x-1>nudT){
                s=nudT-1;
            }else{
                s=ji+x-1;
            }
            for(i;i<=s;i++){
                cout<<"hewtee i s ut "<<i<<" "<<s<<" "<<a[in][i]<<endl;
                if(a[in][i]==2){
                    t2++;
                }else{
                    t2=0;
                }
                if(a[in][i]==3){
                    t3++;
                }else{
                    t3=0;
                }
                if(i>nudT-1){
                    break;
                }
                if(t2==daraalal || t3==daraalal){
                    win(t2);
                    cout<<"hewtee";
                    getch();
                    closegraph();
                    return 0;
                }
            }
            //bosoo
            if(in-x+1<0){
                i=0;
            }else{
                i=in-x+1;
            }
            if(in+x+1>nudT-1){
                s=nudT-1;
            }else{
                s=in+x+1;
            }
            ji=ut2,in=ut1,t2=0,t3=0;
            for(i;i<=s;i++){
                    cout<<"bosoo "<<a[i][ji]<<"\n";
                if(a[i][ji]==2){
                    t2++;
                }else{
                    t2=0;
                }
                if(a[i][ji]==3){
                    t3++;
                }else{
                    t3=0;
                }
                if(t2==daraalal || t3==daraalal){
                    win(t2);
                    cout<<"bosoo";
                    getch();
                    closegraph();
                    return 0;
                }
            }
            ji=ut2,in=ut1,t2=0,t3=0;
            if((in-x+1<=0)||(ji-x+1<=0)){
                if(in<ji){
                    ji=ji-in;
                    in=0;
                }else
                if(ji<in){
                    in=in-ji;
                    ji=0;
                }else{
                    in=0;
                    ji=0;
                }
                for(i=ji;i<=ji+x+1;i++){
                    cout<<"diagnoli i s t2 "<<i<<" "<<ji+x+1<<" "<<a[in][i]<<endl;
                    if(a[in][i]==2){
                        t2++;
                    }else{
                        t2=0;
                    }
                    if(a[in][i]==3){
                        t3++;
                    }else{
                        t3=0;
                    }
                    if(in>nudT-1 || i>nudT-1){
                        break;
                    }
                    if(t2==daraalal || t3==daraalal){
                        win(t2);
                        cout<<"diognali 1\n";
                        getch();
                        return 0;
                    }
                    in++;
                }
            }
            ji=ut2,in=ut1,t2=0,t3=0;
            if((in-x>=0)&&(ji-x>=0)&&(ji+x+1<=nudT)&&(in+x+1<=nudT)){
                ji=ut2-x;in=ut1-x;
                //cout<<"shalgalaa";
                for(i=ji;i<ji+x+1;i++){
                    if(a[in][i]==2){
                        t2++;
                    }else{
                        t2=0;
                    }
                    if(a[in][i]==3){
                        t3++;
                    }else{
                        t3=0;
                    }
                    if(t2==daraalal || t3==daraalal){
                        win(t2);
                    }
                    in++;
                }
            }

            ji=ut2,in=ut1,t2=0,t3=0;
            if((ji+x>=nudT)||(in+x>=nudT)){
                if(in<ji || ji<in){
                    ji=ji-x+1;
                    in=in-x+1;
                }else
                {
                    in=in-x;
                    ji=in-x;
                }
                y=in;
                for(i=ji;i<=ji+x+1;i++){
                    //cout<<"orloo i y "<<i<<" "<<y<<" "<<a[y][i]<<"\n";
                    if(a[y][i]==2){
                        t2++;
                        cout<<"diagnoli i s t2 "<<i<<" "<<ji+x+1<<" "<<t2<<endl;
                    }else{
                        t2=0;
                    }
                    if(a[y][i]==3){
                        t3++;
                    }else{
                        t3=0;
                    }
                    if(y>nudT-1 || i>nudT-1){
                        break;
                    }
                    if(t2==daraalal || t3==daraalal){
                        win(t2);
                        cout<<"diognali 2\n";
                        getch();
                        return 0;
                    }
                    y++;
                }
            }
            ji=ut2,in=ut1,t2=0,t3=0;
            if((in-x+1<=0)||(ji-x+1<=0)){
                if(in<ji){
                    if(ji-(x-1)<0){

                    }else{
                        ji=ji-(x-1);
                        in=in+(x-1);
                        while(in>nudT-1){
                            in=-1;
                            ji=+1;
                        }
                    }
                    //cout<<"hewleh ji in "<<ji<<in<<endl;
                }else
                if(ji<in){
                    if(in+x-1>=nudT-1){
                        in=nudT-1;
                        ji=ji-(nudT-1-in);
                    }else{
                        in=in+ji;
                        ji=0;
                    }
                }else{
                    in=in+(x-1);
                    ji=ji-(x-1);
                }
            }else{
                ji=ji-(x-1);
                in=in+(x-1);
            }
            //cout<<"zaa1 "<<in<<" "<<nudT-1<<"\n";
            while(in>(nudT-1)){
                in=in-1;
                ji=ji+1;
            }
            //cout<<"zaa "<<in<<" ";
            for(i=ji;i<ji+x+x-1;i++){
                    //cout<<"\n"<<"t2 t3 "<<i<<" "<<in<<" "<<a[in][i]<<"\n";
                if(a[in][i]==2){
                    t2++;
                }else{
                    t2=0;
                }
                if(a[in][i]==3){
                    t3++;
                }else{
                    t3=0;
                }
                if(in<0 || i>nudT-1){
                    break;
                }
                if(t2==daraalal || t3==daraalal){
                    win(t2);
                    cout<<"hajuu diognali 3";
                    getch();
                    return 0;
                }
                in--;
            }
            if(duuren==nudT*nudT){
                draw();
                closegraph();
                return 0;
            }
            PlaySound(TEXT("water.wav"),NULL,SND_FILENAME);
        }
        //up key daragdsan esehiig
        if((asciiValue==87||asciiValue==119||asciiValue==72) && y1>ehlel){
            //Deeshee
            shiljih(x1,y1,x2,y2);
            y1=y1-nud_size;
            y2=y2-nud_size;
            setcolor(YELLOW);
            durvuljin(x1,y1,x2,y2);
            durvuljin(x1-1,y1-1,x2-1,y2-1);
        }
        //Down daragdsan esehiig
        if(asciiValue==83||asciiValue==115||asciiValue==80){
            if(y2>=togsgol){
            }else{
                //Dooshloh uyd tsagaan bolgoh
                shiljih(x1,y1,x2,y2);
                //Dooshloh uyd shar bolgoh
                setcolor(YELLOW);
                y2=y2+nud_size;
                y1=y1+nud_size;
                durvuljin(x1,y1,x2,y2);
                durvuljin(x1-1,y1-1,x2-1,y2-1);
            }
        }
        //left daragdsan esehiig
        if((asciiValue==97||asciiValue==65||asciiValue==75) && x1>ehlel){
            //left shiljih
            shiljih(x1,y1,x2,y2);
            x1=x1-nud_size;
            x2=x2-nud_size;
            setcolor(YELLOW);
            durvuljin(x1,y1,x2,y2);
            durvuljin(x1-1,y1-1,x2-1,y2-1);
        }
        //right shiljih
        if((asciiValue==68||asciiValue==100||asciiValue==77) && x2<togsgol){
            shiljih(x1,y1,x2,y2);
            x1=x1+nud_size;
            x2=x2+nud_size;
            setcolor(YELLOW);
            durvuljin(x1,y1,x2,y2);
            durvuljin(x1-1,y1-1,x2-1,y2-1);
        }
    }
    closegraph();
    return 0;
}
void durvuljin(int x1, int y1, int x2, int y2){
    //line(x1,y1,x1,y2);
    //line(x1,y1,x2,y1);
    //line(x1,y2,x2,y2);
    //line(x2,y1,x2,y2);
}
//Massiviin ymar bairlald oruulahiig butsaana
int tawih(int x){
    cout<<"print butsah "<<(x-ehlel)/nud_size<<endl;
    return (x-ehlel)/nud_size;
}
int mousel(int x){
    int n=1;
    while(nud_size*n<=nud_size*nudT){
        if((x-ehlel)<nud_size*n){
            cout<<"tawih bairlal ni"<<n-1<<endl;
            return n-1;
        }else{
            n++;
        };
    }
}
void win(int t){
    setcolor(RED);
    settextstyle(8, 0, 5);
    if(t==daraalal)
        outtextxy(width/2,height/2,"X WIN!!");
    else
        outtextxy(width/2,height/2,"O WIN!!");
        PlaySound(TEXT("win.wav"),NULL,SND_SYNC);
        getch();
}
void draw(){
    setcolor(RED);
    settextstyle(8, 0, 5);
    outtextxy(width/2,height/2,"DRAW");
    PlaySound("lose.wav",NULL,SND_SYNC);
    getch();
}
void shiljih(int x1,int y1,int x2,int y2){
    setcolor(WHITE);
    durvuljin(x1,y1,x2,y2);
    setcolor(BLACK);
    durvuljin(x1-1,y1-1,x2-1,y2-1);
}
