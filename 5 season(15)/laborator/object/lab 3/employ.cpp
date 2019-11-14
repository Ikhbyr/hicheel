#include<iostream>
#include<string.h>
using namespace std;
class employee {
    private:
    int id;
    char name[20];
    char tushaal[20];
    float time;
    public:
    void setdata();
    void getdata();
    void print();
    float salary();
    float zah_salary();
    bool increase_time(float i);
};
main(){
    employee emp;
    emp.setdata();
    emp.print();
    emp.getdata();
    emp.print();
    cout<<"Tsalin: "<<emp.salary();

}
void employee::setdata(void){
    id=0;
    strcpy(name,"");
    strcpy(tushaal,"ajilchin");
    time=0;
}
void employee::getdata(){
    cout<<"id: name: alban_tushaal: time:\n";
    cin>>id>>name>>tushaal>>time;
}
void employee::print(){
    cout<<"Id: "<<id<<endl;
    cout<<"Name: "<<name<<endl;
    cout<<"Tushaal: "<<tushaal<<endl;
    cout<<"Time: "<<time<<endl;
}
float employee::salary(){
    int res=strcmp(tushaal,"zahiral");
    if(res==0){
        return time*20000+zah_salary();
    }else{
        return time*20000;
    }
}
float employee::zah_salary(){
    return 30000*time;
}
bool employee::increase_time(float i){
    time=time+i;
    if(time>=0 && time<=24){
        true;
    }
    false;
}
