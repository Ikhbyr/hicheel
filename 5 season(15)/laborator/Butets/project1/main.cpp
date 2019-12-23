#include<iostream>
#include <fstream>
#include<string>
#include<graphics.h>
#include<math.h>
using namespace std;

class solar{
public:
    double x,y,m;
    double ax, ay;
    string name;
};

class tootsoo {
public:
    solar *s;
    //garaguudiin medeelliig hadgalna
    double g, **gForce;
    int n;
    //f huchnii baiguulagch
    double fx, fy;
    double *fx1, *fy1;
    tootsoo();
    //file unshij awah
    void fileread();
    //object deh medeelluudiig hewleh
    void print();
    //garaguudiig zurah
    void draw();
    //neg garagiin busad garagtai uilchleh gravitational force oloh
    void gravForce();
    //tuhain garagt uilchleh neg huchnii huvid fx fy oloh
    void fxfy(int bair);
    //garag hoorondii zai butsaah
    double road(int i, int j);
    ~tootsoo();
};

double tootsoo::road(int i, int j){
    double r;
    r=sqrt(pow((s[i].x-s[j].x),2)+pow((s[i].y-s[j].y),2));
    return r;
}

void tootsoo::fxfy(int bair){
    double r, a,b;
    fx=0;
    fy=0;
    for(int i=0; i<n; i++){
        if(i!=bair){
            r=road(bair,i);
            a=(s[i].y-s[bair].y);
            b=(s[i].x-s[bair].x);
            fx=fx+(gForce[bair][i]*(b/r));
            fy=fy+(gForce[bair][i]*(a/r));
            //cout<<s[4].name<<" fx fy ni "<<fx<<" "<<fy<<endl;
        }
    }
    fx1[bair]=s[bair].ax*s[bair].m;
    fy1[bair]=s[bair].ay*s[bair].m;
    s[bair].ax=fx/s[bair].m+fx1[bair];
    s[bair].ay=fy/s[bair].m+fy1[bair];
    s[bair].x+=s[bair].ax;
    s[bair].y+=s[bair].ay;
}

void tootsoo::draw(){
    int x=1000,y=20;
    char name[40];
    for(int i=0;i<n;i++){
        //a=rand()%15;
        setcolor(i+1);
        strcpy(name, s[i].name.c_str());
        outtextxy(s[i].x, s[i].y,name);
        sprintf(name, "%f", s[i].x);
        outtextxy(x,y,name);
        sprintf(name, "%f", s[i].y);
        outtextxy(x+100,y,name);
        y=y+30;
        circle(s[i].x, s[i].y, 5);
    }
}

void tootsoo::gravForce(){
    int i,j;
    double r;
    for(i=0; i<n; i++){
        for(j=i+1; j<n; j++){
            if(i!=j){
                r=road(i,j);
                //cout<<s[i].name<<" "<<s[j].name<<" zai "<<r<<endl;
                gForce[i][j]=(s[i].m*s[j].m)/(r*r)*g;
                gForce[j][i]=(s[i].m*s[j].m)/(r*r)*g;
            }
        }
    }
    for(i=0;i<n;i++){
        fxfy(i);
        cout<<s[i].name<<" x "<<s[j].ax<<" y "<<s[j].ay<<endl;
    }
    draw();
}

tootsoo::tootsoo(){
    n=7;
    s=new solar[n];
    fx1=new double[n];
    fy1=new double[n];
    //Garag hoorondiin tataltsliin huchiig hadgalah sanah oi nootslono
    gForce = new double *[n];
    for (int i = 0; i < n; ++i)
    gForce[i]= new double[n];
}

tootsoo::~tootsoo(){
    cout<<"S object ustlaa\n";
    delete []s;
    for(int i=0; i<n; i++){
        delete []gForce[i];
    }
    delete [] gForce;
    delete []fx1;
    delete []fy1;
}

void tootsoo::fileread(){
    ifstream file;
    int i=0;
    file.open("nbody.txt");
    if (file.is_open()) {
    file>>g;
     while (!file.eof()) {
        file>>s[i].name;
        file>>s[i].x;
        file>>s[i].y;
        file>>s[i].ax;
        file>>s[i].ay;
        file>>s[i].m;
        i++;
     }
    }
    file.close();
}

void tootsoo::print(){
    cout<<"Garaguudiin medeelel\n";
    gravForce();
}

main(){
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD fullHeight = GetSystemMetrics(SM_CYSCREEN);
    initwindow(Width, fullHeight, "Garag zurah");
    cout<<"my screen x "<<Width<<" y "<<fullHeight<<endl;
    tootsoo ts;
    ts.fileread();
    int count=0;
    //ts.print();
    while(1){
        //Mouse zuun daraltiig huleen awna
        if(GetAsyncKeyState(VK_RBUTTON)){
            return 0;
        }
        ts.gravForce();
        //delay(200);
    }
    return 0;
}
