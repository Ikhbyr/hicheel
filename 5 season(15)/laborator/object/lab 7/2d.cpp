#include<iostream>
#include<math.h>
using namespace std;
class shape {
    public:
    int *y;
    int *x;
    //hiisver function zarlah
    virtual int pr()=0;
};
// shapees 2d shape udamshih
class shape2d:public shape {
    // a ni taliin urt
    public:
    string name;
    int a;
    //hiisver function zarlah
    virtual float area()=0;
};
int shape::pr(){
    return 0;
}
/*float shape2d::area(){
    return 0;
}*/
class Square:public shape2d{
    public:
    float area();
    int pr();
    void tal();
    Square(){
        x = new int[4];
        y = new int[4];
    }
    ~Square(){
        delete []x;
        delete []y;
    }
};
void Square::tal(){
    x[1]=x[0]+a;
    y[1]=y[0];
    y[2]=y[0]+a;
    x[2]=x[0];
    y[3]=y[0]+a;
    x[3]=x[0]+a;
}
float Square::area(){
    return a*a;
}
int Square::pr(){
    return a*4;
}
class Circle : public shape2d {
    public:
    Circle(){
        x = new int[1];
        y = new int[1];
    }
    ~Circle() {
        delete []x;
        delete []y;
    }
    float area();
    int pr();
};
float Circle::area(){
    return 3.14*a*a;
}
int Circle::pr(){
    return 2*3.24*a;
}
class Triangle : public shape2d {
    public:
    Triangle(){
        x = new int[3];
        y = new int[3];
    }
    ~Triangle(){
        delete []x;
        delete []y;
    }
    float area();
    int pr();
};
float Triangle::area(){
    return (a*a*sqrt(3))/4;
}
int Triangle::pr(){
    return a*3;
}
main(){
    int tn, kn, gn, i=0, k, j;
    cout<<"Heden shirheg toirog oruulah ve"<<endl;
    cin>>tn;
    cout<<"Heden shirheg kvadrat oruulah ve"<<endl;
    cin>>kn;
    cout<<"Heden shirheg gurvaljin oruulah ve"<<endl;
    cin>>gn;
    // Object uusgeh
    Triangle gurval[gn];
    Circle dugui[tn];
    Square kvadrt[kn];
    shape2d **durs;
    //Durs hadgalah sanah oi nootsloh
    durs = new shape2d *[gn+tn+kn];
    //duguinuudaa uusgene
    for(i=0; i<tn; i++){
        cout<<i+1<<"-r toirgiin name, towiin koordinat(x,y), radius(R)-g oruul\n";
        cout<<"name=> ";
        cin>>dugui[i].name;
        cout<<"x=> ";
        cin>>dugui[i].x[0];
        cout<<"y=> ";
        cin>>dugui[i].y[0];
        cout<<"R=> ";
        cin>>dugui[i].a;
        cout<<"talbai ni: "<<dugui[i].area()<<endl;
        durs[i]=&dugui[i];
    }
    k=i;
    //kvadratuudaa uusgene
    for(i=0; i<kn; i++){
        cout<<i+1<<"-r kvadratiin name, oroin koordinat(x,y), taliin urt(a)-g oruul\n";
        cout<<"name=> ";
        cin>>kvadrt[i].name;
        cout<<"x=> ";
        cin>>kvadrt[i].x[0];
        cout<<"y=> ";
        cin>>kvadrt[i].y[0];
        cout<<"a=> ";
        cin>>kvadrt[i].a;
        cout<<"talbai ni: "<<kvadrt[i].area()<<endl;
        durs[k]=&kvadrt[i];
        k++;
    }
    //kvadratuudaa uusgene
    for(i=0; i<kn; i++){
        cout<<i+1<<"-r gurvaljnii name, oroin koordinat(x,y), taliin urt(a)-g oruul\n";
        cout<<"name=> ";
        cin>>gurval[i].name;
        cout<<"x=> ";
        cin>>gurval[i].x[0];
        cout<<"y=> ";
        cin>>gurval[i].y[0];
        cout<<"a=> ";
        cin>>gurval[i].a;
        cout<<"talbai ni: "<<gurval[i].area()<<endl;
        durs[k]=&gurval[i];
        k++;
    }
    shape2d *temp;
    //Talbaigaar ni eremblene
    for (i = 0; i < k-1; i++){
        for (j = 0; j < k - i - 1; j++){
            if ( durs[j]-> area() > durs[j + 1] -> area()){
                temp = durs[j];
                durs[j] = durs[j+1];
                durs[j+1] = temp;
            }
        }
    }
    //Talbaigaar erembelsnee delgetsnd haruulna
    cout<<"\n\tEremblegdsen baidal:\nName\tArea\n";
    for(i=0; i<k; i++){
        cout<<durs[i]->name<<"\t"<<durs[i]->area()<<endl;
    }
    delete []durs;
}
