#include<iostream>
using namespace std;

class AA {
private:
    int c;
    int a;
public:
    void setA(int v){
        a=v;
    }
    void setC(int v){
        c=v;
    }
protected:
    int getA(){
        return a;
    }
private:
    int getC(){
        return c;
    }
};
class BB : public AA{
public:
    void function(){
        int a =getA();
        int c = getC();
    }
};
main(){
    BB bbhuhd;
    bbhuhd.setA(23);
    bbhuhd.setC(22);
    cout<<bbhuhd.getA();
}
