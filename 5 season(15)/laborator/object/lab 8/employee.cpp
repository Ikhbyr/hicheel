#include<iostream>
#include<string.h>
#include<conio.h>
using namespace std;
// employee class heregjuulelt
class employee {
private:
    char *name;
    int basicpay;
    int allowance;
public:
    employee(const employee &e);
    employee(void);
    ~employee(void);
    employee(char *n, int b, int a);
    friend ostream & operator <<(ostream &os, employee &e);
};
// Huulagch function todorhoilj ogoh
employee::employee(const employee &e){
    name =new char[strlen(e.name)+1];
    strcpy(name, e.name);
    basicpay= e.basicpay;
    allowance =e.allowance;
};
// Baiguulagch function todorhoilg ogoh
employee::employee(){
    name = new char[20];
    strcpy(name, "Hello, C++");
    basicpay= 0;
    allowance =0;
}
// Ustgagch function todorhoiloh
employee::~employee(){
    cout<<"bye\t"<<name<<endl;
    delete name;
}
// Parametrtei baiguulagch functoin todorhoiloh
employee::employee(char *n, int b, int a){
    name =new char[strlen(n)+1];
    strcpy(name, n);
    basicpay= b;
    allowance =a;
}
// delgetsend hewleh
ostream & operator <<(ostream &os, employee &e){
    int grosspay = e.basicpay + e.allowance;
    os.width(20);
    os<<e.name;
    os.width(8);
    os << e.basicpay;
    os.width(12);
    os<<e.allowance;
    os.width(8);
    os<<grosspay;
    os<<"\n";
    return (os);
}
int main(){
    // e1 objectod utga onooh
    employee e1 ("Bill", 9000, 8000) ;
    cout<< e1;
    //e2 objectod utga onooh
    employee e2 ("George", 9000, 7000);
    cout<<e2;
    // e1 objectiig e objectod huulj tawih
    employee e=e1;
    cout<<e;
    return 0;
}
