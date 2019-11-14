#include<iostream>
#include <fstream>
#include <cstdlib>
#include <math.h>
int hours=0;
using namespace std;
struct Heap {
	int len;  // Нийт багтаамж
	int size; // Одоогийн хэмжээ
	struct Elm *dat; // Өгөгдөл хадгалах хүснэгтийг заах хаяг
};
struct Elm {
	string text;
	int rate;
	int time;
};
void init(struct Heap *p, int n)
{
	p->len = n;
	p->size = 0;
	p->dat =(struct Elm*) malloc(n*sizeof(Elm));
}
void release(struct Heap *p)
{
	free(p->dat);
	p->dat = NULL;
}
void oruulah(struct Heap *p, string txt, int r){
    int i,tmp, height=0,tmp_time;
    string temp;
    if(p->size!=0)
        height=log2(p->size)+1;
    (p->dat+p->size)->rate=r;
    (p->dat+p->size)->text=txt;
    (p->dat+p->size)->time=hours;
    hours++;
    for(i=p->size; height>0; i=(i-1)/2, height--){
        if(r>=((p->dat+(i-1)/2)->rate))
            break;
        temp=(p->dat+i)->text;
        tmp=(p->dat+i)->rate;
        tmp_time=(p->dat+i)->time;
        (p->dat+i)->text=(p->dat+(i-1)/2)->text;
        (p->dat+i)->rate=(p->dat+(i-1)/2)->rate;
        (p->dat+i)->time=(p->dat+(i-1)/2)->time;
        (p->dat+(i-1)/2)->text=temp;
        (p->dat+(i-1)/2)->rate=tmp;
        (p->dat+(i-1)/2)->time=tmp_time;
    }
    p->size++;
}
string lowBack(struct Heap *p){
    int i=0,j,tmp,tmp_time;
    string temp;
    p->size--;
    string ret=(p->dat+i)->text;
    (p->dat+i)->text=(p->dat+p->size)->text;
    (p->dat+i)->rate=(p->dat+p->size)->rate;
    (p->dat+i)->time=(p->dat+p->size)->time;
    free(p->dat+p->size);
    while(i*2+1<=p->size){
        if(i*2+2<=p->size){
            if((p->dat+i*2+2)->rate>(p->dat+i*2+1)->rate)
                j=i*2+1;
            else if((p->dat+i*2+2)->rate<(p->dat+i*2+1)->rate)
                j=i*2+2;
            else{
                if((p->dat+i*2+2)->time<(p->dat+i*2+1)->time)
                    j=i*2+2;
                else
                    j=i*2+1;
            }
        }
        else{
            j=i*2+1;
        }
        if((p->dat+i)->rate<(p->dat+j)->rate)
            break;

        temp=(p->dat+i)->text;
        tmp=(p->dat+i)->rate;
        tmp_time=(p->dat+i)->time;
        (p->dat+i)->text=(p->dat+j)->text;
        (p->dat+i)->rate=(p->dat+j)->rate;
        (p->dat+i)->time=(p->dat+j)->time;
        (p->dat+j)->text=temp;
        (p->dat+j)->rate=tmp;
        (p->dat+j)->time=tmp_time;
        i=j;
    }
    return ret;
}
main(){
    int n,num;
    struct Heap hp;
    fstream file("input.txt");
    ofstream garalt;
    garalt.open("garalt.txt");
    string cmd, text;
    file>>n;
    init(&hp,n);
    while(file>>cmd){
        if(cmd=="GET"){
            if(garalt.is_open())
                garalt<<lowBack(&hp)<<endl;
            else
                cout<<"garaltiin file neej chadsangui";
        }
        if(cmd=="PUT"){
            file>>text>>num;
            oruulah(&hp, text, num);
        }
    }
    release(&hp);
    return 0;
}
