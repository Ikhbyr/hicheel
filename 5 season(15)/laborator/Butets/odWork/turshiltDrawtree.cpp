#include<iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

struct List {
	struct elem *head;
	struct elem *tail;
};
struct elem {
    int val;
    int x;
    int y;
    struct elem *next;
};
void init(struct List *tree)
{
	tree->head = NULL;
	tree->tail = NULL;
}
void push_back(struct List *tree, int x, int val, int y)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	struct elem *p,*temp=(struct elem*) malloc(sizeof(struct elem));
	temp->val=val;
	temp->y=y;
	temp->x=x;
    temp->next=NULL;
	if(tree->head==NULL){
        tree->head=temp;
        tree->tail=temp;
	}else{
	    p = tree->head;
        while(p!=NULL){
            if(p->next==NULL){
                p->next=temp;
                tree->tail=p->next;
                break;
            }
            p=p->next;
        }
	}
}
void print(struct List *tree)
{
	/* Энд хэвлэх үйлдлийг хийнэ үү */
	struct elem *p;
	p = tree->head;
	while(p!=NULL){

        cout<<"val= "<<p->val<<" x= "<<p->x<<" y= "<<p->y<<endl;
        p=p->next;
	}
}
/* p-ийн зааж буй List-н эхлэлээс гарган буцаана */
int pop_front(struct List *tree)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
	int a;
	struct elem *p;
	if(tree->head==NULL){
        return 0;
	}
	p = tree->head;
	a = tree->head->val;
    tree->head = p->next;
    return a;
}
int empty(struct List *tree)
{
	/* Энд хоосон эсэхийг шалгах үйлдлийг хийнэ */
	if(tree->head==NULL){
        return 1;
	}
	return 0;
}
void release(struct List *tree)
{
	while (empty(tree) == 0)
		pop_front(tree);
}
main(){
    struct List st;
	init(&st);
	int t, x, pos, val, y;

	while (1) {
		printf("1: push_front, 2: push_back, 3: print,"
		       "13: exit\n");
		scanf("%d", &t);

		switch (t) {
		case 2:
			printf("Suuld oruulax utga: ");
			scanf("%d%d%d", &x, &val, &y);
			push_back(&st, x, val, y);
			break;
		case 3:
			print(&st);
			break;
		default:
			exit(0);
		}
	}
	/* List-ийн эзэмшсэн нөөцийг чөлөөлөх */
	release(&st);
	return 0;
}
