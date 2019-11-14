#include<iostream>
#include<string.h>
using namespace std;
//Ajilchin class todorhoiloh
class employee
{
    //private handaltiin tuvshintei gishuun ogogdol bolon function
private:
    int id;
    char name[20];
    //Baiguulagch fuction todorhoiloh
public:
    employee()
    {
        id=1;
        strcpy(name,"");
    }
    //Ustgagch function todorhoiloh
    ~employee()
    {
        cout<<"\n Sanah oi choloologdloo";
        delete[] name;
    }
    //utga oruuulah
    void setId(int id2)
    {
        id=id2;
    }
    void setName(char name1[])
    {
        strcpy(name,name1);
    }
    //Utga butsaah
    int getId()
    {
        return id;
    }
    char* getName()
    {
        return name;
    }
};
void print(employee emp)
{
    cout<<emp.getId()<<" "<<emp.getName()<<endl;
}
main()
{
    employee *temp;
    temp->setId(3);
    print(*temp);
}
