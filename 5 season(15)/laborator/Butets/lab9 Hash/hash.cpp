#include <iostream>
#include <string.h>
#include <math.h>
using namespace std;
int search();
static int ih=0;
class student {
public:
    char *name;
    char id[11];
    student(){
        name = new char[1];
        strcpy(name,"0");
        strcpy(id,"11111111111");
    }
    set_name(char a[]){
        name = new char(strlen(a));
        strcpy(name,a);
    }
   ~student(){
        delete []name;
   }
};
student stu[6000];
int inttochar(char b){
    int t=NULL;
    return t * 10 + b - '0';
}
int onlyint(char a[]){
    int temp;
    temp=inttochar(a[1]);
    temp=temp*10;
    temp=temp+inttochar(a[7]);
    temp=temp*10;
    temp=temp+inttochar(a[8]);
    temp=temp*10;
    temp=temp+inttochar(a[9]);
    temp=temp*10;
    temp=temp+inttochar(a[10]);
    cout<<"horvuul: "<<temp<<endl;
    return temp;
}
int bairlal(char a[]){
    int n = onlyint(a), year;
    year = 10+inttochar(a[1]);
    n = (n - 50000)/year;
    n=fabs(n);
    return n;
}
int haritsuulah (char a[], char b[]){
    int i;
    for(i=0;i<11;i++){
        if(a[i]!=b[i]){
            return 1;
        }
    }
    return 0;
}
int hash(char a[]){
    int check = 1,n;
    n = bairlal(a);
    while(check){
        if(strcmp(stu[n].name,"0") == 0){
            break;
        }else{
            cout<<stu[n].id[0];
            if(haritsuulah(stu[n].id,a)==0){
                return -1;
            }
            n++;
        }
    }
    if(ih<n){
        ih=n;
    }
    cout<<"bairlal ni "<<n;
    return n;
}
int search(char b[]){
    int check=bairlal(b);
    if(haritsuulah(stu[check].id,b)==0){
        return 1;
    }else{
        for(check; check<=ih; check++){
            if(stu[check].name[0]==0){
                return 0;
            }else{
                if(haritsuulah(stu[check].id,b)==0)
                    return 1;
            }
        }
        return 0;
    }
}
main(){
    char name[20];
    char sisi[11];//oyutnii id-g awah
    int i, ch;// hashaar butsaj irsen utgiig hadgalna
    //cout<<"horvuulsen ni: "<<tmp<<endl;
    while(1){
        cout<<"1: insert, 2: search, 3: exit"<<endl;
        cin>>ch;
        switch(ch){
        case 1:
            cout<<"Oyutnii id oruulna uu?"<<endl;
            cin>>sisi;
            cout<<"Oyutnii Ner oruulna uu?"<<endl;
            cin>>name;
            i=hash(sisi);
            if(i==-1){
                cout<<"Tanii oruulsan medeelel dawhtslaa\n";
            }else{
                stu[i].set_name(name);
                strcpy(stu[i].id,sisi);
                cout<<"\n"<<stu[i].name<<" ta amjilttai burtguullee\n";
            }
            break;
        case 2:
            cout<<"Oyutnii id oruulna uu?"<<endl;
            cin>>sisi;
            if(search(sisi)==1){
                cout<<"Oyutan oldloo\n";
            }else{
                cout<<"Oyutan oldsongui\n";
            };
            break;
        default:
            return 0;
        }
    }
}
