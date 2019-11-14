#include<iostream>
using namespace std;
class A {
    public:
    static int x;
};
int A::x=0;
main(){
    A o;
    o.x=4;
    A::x++;
    cout<<o.x;
}
