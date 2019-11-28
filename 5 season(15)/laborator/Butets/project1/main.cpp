#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;

struct Elm {
	int x;
	struct Elm *next;
};
struct List {
	struct Elm *head;
	struct Elm *tail;
};

int error = 0;
const char error_msg[][50] = {
	"",
	"List duuren!",
	"List xooson!",
	"Bairlald oruulax bolomjgui!",
	"Bairlaas gargax bolomjgui!"
};

void init(struct List *p_list)
{
	p_list->head = NULL;
	p_list->tail = NULL;
}

void push_back(struct List *p_list, int x)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	struct Elm *p,*temp=(struct Elm*) malloc(sizeof(struct Elm));
	temp->x=x;
    temp->next=NULL;
	if(p_list->head==NULL){
        p_list->head=temp;
        p_list->tail=temp;
	}else{
	    p = p_list->head;
        while(p!=NULL){
            if(p->next==NULL){
                p->next=temp;
                p_list->tail=p->next;
                break;
            }
            p=p->next;
        }
	}

}

/* p-ийн зааж буй List-д x утгыг эхэнд  хийнэ */
void push_front(struct List *p_list, int x)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	struct Elm* p;
	p = (struct Elm*) malloc(sizeof(struct Elm));
	if(p==NULL){
        error=2;
	}
	p->x=x;
	p->next=p_list->head;
    p_list->head = p;
}

int pop_front(struct List *p_list)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
	int a;
	struct Elm *p;
	if(p_list->head==NULL){
        error=2;
        return 0;
	}
	p = p_list->head;
	a = p_list->head->x;
    p_list->head = p->next;
    return a;
}

/* p-ийн зааж буй List-н төгсгөлөөс гарган буцаана */
int pop_back(struct List *p_list)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
	int a;
	if(p_list->head==NULL){
        error=4;
        return 0;
	}else{
        struct Elm *p;
        p=p_list->head;
        if(p->next==NULL){
            error=4;
            return 0;
        }
        while(p->next!=p_list->tail){
            p=p->next;
        }
        a=p_list->tail->x;
        p->next=NULL;
        p_list->tail=p;
        return a;
	}
}

int erase(struct List *p_list, int pos)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
	int i,a;
	struct Elm* p=p_list->head;
	for(i=1;i<pos-1;i++){
        p=p->next;
	}
	a=p->next->x;
	p->next=p->next->next;
	return a;
}

void print(struct List *p_list)
{
	/* Энд хэвлэх үйлдлийг хийнэ үү */
	struct Elm *p;
	p = p_list->head;
	while(p!=NULL){
        printf("%d => ",p->x);
        p=p->next;
        if(p==NULL){
            cout<<"|\\|";
        }
	}
}
/* p-ийн зааж буй List хоосон бол 1 үгүй бол 0-ийг буцаана */
int empty(struct List *p_list)
{
	/* Энд хоосон эсэхийг шалгах үйлдлийг хийнэ */
	if(p_list->head==NULL){
            error=2;
        return 1;
	}
	return 0;
}

int search(struct List *p_list, int x)
{
    struct Elm *p;
    int bair=0;
	p = p_list->head;
	while(p!=NULL){
            bair++;
        if(p->x==x){
            return bair;
        }
        p=p->next;
	}
	return -1;
}

void release(struct List *p_list)
{
	while (empty(p_list) == 0)
		pop_front(p_list);
}

int front(struct List *p_list)
{
    return p_list->head->x;
}

main(){
    int size=10,i,a,k1,k2,num=0,j;
    struct List edges[size];
    for(int i=0; i <=size; i++)
        init(&edges[i]);
    while(1){
        cout<<"1: Irmeg nemeh, 2: Irmeg hasah, 3: Oroi nemeh, 4: Oroi hasah, 5: hewleh, 0: exit\n";
        cin>>a;
        switch(a){
        case 1:
            cout<<"Holboh oroinuudiig oruul\n";
            cin>>k1>>k2;
            for(i=0; i<num; i++){
                if(front(&edges[i])==k1){
                    if(search(&edges[i],k2)==-1)
                        for(j=0; j<num; j++){
                            if(front(&edges[j])==k2){
                                push_back(&edges[i],k2);
                                push_back(&edges[j],k1);
                                cout<<"Amjilttai holbogdloo\n";
                                break;
                            }
                        }
                    else
                        cout<<"Oroinuud holbogdson baina\n";
                    break;
                }
            }
            if(i==num || j==num){
                cout<<"Buruu oroinuud oruulsan baina\n";
            }
            break;
        case 2:
            cout<<"Oroinuudiig oruul\n";
            cin>>k1>>k2;
            for(i=0; i<num; i++){
                if(front(&edges[i])==k1){
                    for(j=0; j<num; j++){
                        if(front(&edges[j])==k2){
                            if(search(&edges[i],k2)==-1){
                                cout<<"Oroinuud holbogdoodgui baina\n";
                            }else{
                                erase(&edges[i],search(&edges[i],k2));
                                erase(&edges[j],search(&edges[j],k1));
                                cout<<"!!!Holbolt sallaa\n";
                            }
                            break;
                        }
                    }
                    break;
                }
            }
            if(i==num || j==num){
                cout<<"Buruu ontsog oruulsan baina\n";
            }
            break;
        case 3:
            cout<<"Oroig oruul\n";
            cin>>k1;
            for(i=0; i<num; i++){
                if(front(&edges[i])==k1){
                    cout<<"Oroi dawhardlaa\n";
                    break;
                }
            }
            if(i==num){
                push_front(&edges[num],k1);
                num++;
                cout<<"Oroi nemegdlee\n";
            }
            break;
        case 4:
            cout<<"Oroig oruul\n";
            cin>>k1;
            for(i=0; i<num; i++){
                if(front(&edges[i])==k1){
                    release(&edges[i]);
                    for(i;i<num-1;i++){
                        edges[i] = edges[i+1];
                    }
                    //neg oroi ustgasnii daraa bugdiig ni uragshluulj
                    //shahah uyd hamgiin ard taliin list ustahgui uldeh
                    //uchir tuuniig hoosolj ogno...
                    release(&edges[i]);
                    num--;
                    cout<<"Oroi hasagdav\n";
                }
            }
            //Ustsan oroin busad holboltiig mon adil ustgana.
            for(i=0;i<num;i++){
                j=search(&edges[i],k1);
                if(j!=-1){
                    erase(&edges[i],j);
                }
            }
            break;
        case 5:
            cout<<"Point-oor\n";
            for(i=0; i<num; i++){
                print(&edges[i]);
                cout<<endl;
            }
            break;
        default:
            return 0;
        }
    }
    for(int i=0; i <=size; i++)
        release(&edges[i]);
    return 0;
}
