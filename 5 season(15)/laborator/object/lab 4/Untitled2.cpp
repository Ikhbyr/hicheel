#include<iostream>
#include<string.h>
using namespace std;
class R{
private:
    char *name;
public:
    R(){
        name = new char[8];
        strcpy(name,"ikhee");
        cout<<name<<"\n";
    }
    ~R(){
        cout<<"ustlaa"<<name;
    }
};
main(){
    R ih;
    delete[] ih.name;
}
