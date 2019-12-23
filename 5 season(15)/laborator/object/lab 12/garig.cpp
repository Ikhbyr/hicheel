#include<iostream>
#include <fstream>
#include<string>
#include<graphics.h>
#include<math.h>
using namespace std;

class Body{
public:
    double x,y,m;
    double ax, ay;
    string name;
};

class Universe {
public:
    Body *s;
    //garaguudiin medeelliig hadgalna
    double g, **gForce;
    int n;
    //f huchnii baiguulagch
    double fx, fy;
    double *fx1, *fy1;
    Universe();
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
    ~Universe();
};

Universe::Universe(){
    n=7;
    s=new Body[n];
    fx1=new double[n];
    fy1=new double[n];
    //Garag hoorondiin tataltsliin huchiig hadgalah sanah oi nootslono
    gForce = new double *[n];
    for (int i = 0; i < n; ++i)
    gForce[i]= new double[n];
}

Universe::~Universe(){
    cout<<"S object ustlaa\n";
    delete []s;
    for(int i=0; i<n; i++){
        delete []gForce[i];
    }
    delete [] gForce;
    delete []fx1;
    delete []fy1;
}
//hoyr garagiin hoorondoh zaig butsaana
double Universe::road(int i, int j){
    double r;
    r=sqrt(pow((s[i].x-s[j].x),2)+pow((s[i].y-s[j].y),2));
    return r;
}
//tuhain garagt uilchleh huchniid bolon shiljiltiig todorhoilno
void Universe::fxfy(int bair){
    double r, a,b;
    fx=0;
    fy=0;
    /**huchnii baiguulagdiig olno
    *@fx garagiin x tenhlegiin daguu uilchilj bui huch
    *@fy garagiin y tenhlegiin daguu uilchilj bui huch
    *@a hoyr garagiin y tenhlegiin daguuh zai
    *@b hoyr garagiin x tenhlegiin daguuh zai
    */
    for(int i=0; i<n; i++){
        if(i!=bair){
            r=road(bair,i);
            a=(s[i].y-s[bair].y);
            b=(s[i].x-s[bair].x);

            /**
            end: S, R ni garag
                 r ni hoorondoh zai
                  y
                  ^
                  |             R
                  ^-----------*         sin(O)=a/r
                  |    r   *  *         cos(O)=b/r
                  |     *     * a
                  |  *        *
                  *O----------*>- - - - ->x
                S       b
            */
            /**
            deerh olson ontsogoo ashiglaad f(y) f(x) huchnuudee olno
                  y
                  ^
                  |             F
             f(y) ^-----------*
                  |        *  *
                  |     *     *
                  |  *        *
                  *O----------*>- - - - ->x
                              f(x)
            */
            fx=fx+(gForce[bair][i]*(b/r));
            fy=fy+(gForce[bair][i]*(a/r));
        }
    }
    ///odoo baigaa ooriinh ni huchnii baiguulagch ni
    fx1[bair]=s[bair].ax*s[bair].m;
    fy1[bair]=s[bair].ay*s[bair].m;
    ///tuhain garagiin shiljilt buyu hurdatgal ni
    s[bair].ax=(fx+fx1[bair])/s[bair].m;
    s[bair].ay=(fy+fy1[bair])/s[bair].m;
    ///ochih bairlaliig ni zaaj ogno
    s[bair].x+=s[bair].ax;
    s[bair].y+=s[bair].ay;
}

void Universe::draw(){
    int a;
    int x=1000,y=20;
    char name[40];
    for(int i=0;i<n;i++){
        //a=rand()%15;
        //garag bolgon deer hargalzah ongonuudiig ogno
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

void Universe::gravForce(){
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
    for(i=6;i>=0;i--){
        fxfy(i);
        //cout<<s[i].name<<" x "<<s[j].ax<<" y "<<s[j].ay<<endl;
    }
    draw();
}

void Universe::fileread(){
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
        cout<<s[i].name<<" "<<s[i].x<<" "<<s[i].y<<" "<<s[i].m<<endl;
        i++;
     }
    }else{
        cout<<"File unshij chadsangui\n";
    }
    file.close();
}

void Universe::print(){
    int i;
    cout<<"Garaguudiin medeelel\n";
    for(i=0; i<n; i++){
        for(int j=0; j<n; j++){
            if(i!=j && i==6){
                cout<<s[i].name<<" "<<s[j].name<<" "<<gForce[i][j]<<"\t"<<road(i,j)<<endl;
            }
        }
    }
}

int main(){
    //delgetsnii hemjeeg avna
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD fullHeight = GetSystemMetrics(SM_CYSCREEN);
    //graphic display
    initwindow(Width, fullHeight, "Garag zurah");
    //planetary motion
    Universe ts;
    ts.fileread();
    while(1){
        //Mouse baruun daraltiig huleen awna
        if(GetAsyncKeyState(VK_RBUTTON)){
            return 0;
        }
        ts.gravForce();
        delay(0.001);
        cleardevice();
    }
    return 0;
}
