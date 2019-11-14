#include<iostream>
#include<math.h>
using namespace std;
class shape {
    public:
    int *y;
    int *x;
};
// shapees 2d shape udamshih
class shape2d:public shape {
    // a ni taliin urt
    public:
    int a;
    float area();
    // premetr
    int pr();
};
int shape2d::pr(){
    return 0;
}
float shape2d::area(){
    return 0;
}
class Square:public shape2d{
    public:
    int *x = new int[4];
    int *y = new int[4];
    float area();
    int pr();
};
float Square::area(){
    return a*a;
}
int Square::pr(){
    return a*4;
}
class Circle : public shape2d {
    public:
    int x;
    int y;
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
    int *x = new int[3];
    int *y = new int[3];
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
    /*Kvadratiin oroin tseg bolon taliin urtiig garaas oruulan busad
    oroinuud bolon primetr talbaig bodoj olood hevlej bna*/
    cout<<"Kvadratiin oroin tseguudiig oruul(x,y): \n";
    Square s1;
    Circle c1;
    Triangle t1;
    cin>>s1.x[0]>>s1.y[0];
    cout<<"Kvadratiin taliin urtiig oruul: ";
    cin>>s1.a;
    //end kvadratiin busad oroig olj bna
    s1.x[1]=s1.x[0]+s1.a;
    s1.y[1]=s1.y[0];
    s1.y[2]=s1.y[0]+s1.a;
    s1.x[2]=s1.x[0];
    s1.y[3]=s1.y[0]+s1.a;
    s1.x[3]=s1.x[1]+s1.a;
    cout<<"Kvadratiin talbai: "<<s1.area();
    cout<<"\nKvadratiin primetr: "<<s1.pr();
    /*Toirgiin toviin tseg bolon radius urtiig garaas oruulan
     primetr ba talbaig bodoj olood hevlej bna*/
    cout<<"\nToirgiin tiviin tseguudiig oruul(x,y): \n";
    cin>>c1.x>>c1.y;
    cout<<"Radius oruul: ";
    cin>>c1.a;
    cout<<"Toirgiin talbai: "<<c1.area();
    cout<<"\nToirgiin primetr: "<<c1.pr();
    /*Gurvaljnii oroin tseg bolon taliin urtiig garaas oruulan busad
    oroinuud bolon primetr talbaig bodoj olood hevlej bna*/
    cout<<"\nGurvaljnii oroin tsegiig oruul(x,y): \n";
    cin>>t1.x[0]>>t1.y[0];
    cout<<"Gurvaljnii taliin urtiig oruul: ";
    cin>>t1.a;
    //Gurvaljnii busad oroig end olj bna
    t1.y[1]=t1.a*sqrt(3)/2;
    t1.x[1]=t1.x[0]-a/2;
    t1.y[2]=t1.a*sqrt(3)/2;
    t1.x[2]=t1.x[0]+a/2;
    cout<<"Gurvaljnii talbai: "<<t1.area();
    cout<<"\nGurvaljnii primetr: "<<t1.pr();
}
