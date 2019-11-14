#include<iostream>
#include<math.h>
using namespace std;
class shape {
    public:
    int *y;
    int *x;
    //hiisver function zarlah
    static int count;
    shape(){
        count++;
        cout<<count<<" Object uuslee"<<endl;
    }
    ~shape(){
        count--;
        cout<<count<<" Object uldlee"<<endl;
    }
    static void set_count(int a){
        count = a;
    }
    static int get_coutn(){
        return count;
    }
    virtual int pr()=0;
};
int shape::count=0;
// shapees 2d shape udamshih
class shape2d:public shape {
    // a ni taliin urt
    public:
    string name;
    int a;
    //hiisver function zarlah
    virtual float area()=0;
    void set_a(int a);
};
void shape2d::set_a(int a){
    this->a=a;
}
int shape::pr(){
    return 0;
}
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
    this->x[1]=this->x[0]+this->a;
    this->y[1]=this->y[0];
    this->y[2]=this->y[0]+this->a;
    this->x[2]=this->x[0];
    this->y[3]=this->y[0]+this->a;
    this->x[3]=this->x[0]+this->a;
}
float Square::area(){
    return this->a*this->a;
}
int Square::pr(){
    return this->a*4;
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
    return 3.14*this->a*this->a;
}
int Circle::pr(){
    return 2*3.24*this->a;
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
    return (this->a*this->a*sqrt(3))/4;
}
int Triangle::pr(){
    return this->a*3;
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
}
