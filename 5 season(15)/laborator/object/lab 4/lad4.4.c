#include<iostream>
using namespace std;
class R{
public:
    R(){
        *p = new int[10];
        p[1]=20;
        cout<<p[1]<<danda<<"\n";
    }
    ~R(){
        delete p;
    }
};
main(){
}
