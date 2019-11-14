#include <stdio.h>
#include <stdlib.h>
struct Elm {
	int x;
	struct Elm *next;
};
struct Queue {
	struct Elm *head, *tail;
};
int error = 0;
const char error_msg[][50] = {
	"",
	"Queue duuren!",
	"Queue xooson!"
};

void init(struct Queue *p_qq)
{
	p_qq->head = p_qq->tail = NULL;
}

/* p-ийн зааж буй Queue хоосон бол 1 үгүй бол 0-ийг буцаана */
int empty(struct Queue *p_qq)
{
	/* Энд хоосон эсэхийг шалгах үйлдлийг хийнэ */
	if(p_qq->head==NULL){
        error=2;
        return 1;
	}
	return 0;
}

/* p-ийн зааж буй Queue-д x утгыг хийнэ */
void push_back(struct Queue *p_qq, int x)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	struct Elm *p,*temp=(struct Elm*) malloc(sizeof(struct Elm));
	temp->x=x;
    temp->next=NULL;
	if(p_qq->head==NULL){
        p_qq->head=temp;
	}else{
	    p = p_qq->head;
        while(p!=NULL){
            if(p->next==NULL){
                p->next=temp;
                break;
            }
            p=p->next;
        }
	}

}

/* p-ийн зааж буй Queue-с гарган буцаана */
int pop_front(struct Queue *p_qq)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
	int a;
	struct Elm *p;
	if(p_qq->head==NULL){
        error=2;
        return 0;
	}
	p = p_qq->head;
	a = p_qq->head->x;
    p_qq->head = p->next;
    return a;
}

/* p-ийн зааж буй Queue-н утгуудыг хэвлэнэ */
void print(struct Queue *p_qq)
{
	/* Энд хэвлэх үйлдлийг хийнэ үү */
	struct Elm *p;
	p = p_qq->head;
	while(p!=NULL){
        printf("%d\n",p->x);
        p=p->next;
	}
}

/* p-ийн зааж буй Queue-н хамгийн эхний элементийн утгыг буцаана.
   Гаргах үйлдэл хийхгүй.
 */
int front(struct Queue *p_qq)
{
	return p_qq->head->x;
}
/* p-ийн зааж буй Queue-н хамгийн сүүлийн элементийн утгыг буцаана.
   Queue-д өөрчлөлт оруулахгүй.
 */
int back(struct Queue *p_qq)
{
	struct Elm *p;
	p = p_qq->head;
	while(p!=NULL){
        p=p->next;
        if(p->next==NULL){
            return p->x;
        }
	}
}
/* p-ийн зааж буй Queue-д хэдэн элемент байгааг буцаана.
   Queue-д өөрчлөлт оруулахгүй.
 */
int size(struct Queue *p_qq)
{
	int too=0;
    struct Elm *p;
	p = p_qq->head;
	while(p!=NULL){
        too++;
        p=p->next;
	}
	return too;
}

void release(struct Queue *p_qq)
{
	while (empty(p_qq) == 0)
		pop_front(p_qq);
}


int main()
{
	/* Queue үүсгэн, эхлүүлэх */
	struct Queue st;
	init(&st);
	int t, x;

	while (1) {
		printf("1: push_back, 2: pop_front, 3: print, 4: empty, 5: front,"
		       "6: back, 7: size, 8: exit\n");
		scanf("%d", &t);
		error = 0;

		switch (t) {
		case 1:
			scanf("%d", &x);
			push_back(&st, x);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga orloo\n", x);
			break;
		case 2:
			x = pop_front(&st);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga garlaa\n", x);
			break;
		case 3:
			print(&st);
			break;
		case 4:
			if (empty(&st))
				printf("Queue xooson\n");
			else
				printf("Queue xooson bish\n");
			break;
		case 5:
			x = front(&st);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga xamgiin exend bna\n", x);
			break;
		case 6:
			x = back(&st);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga xamgiin suuld bna\n", x);
			break;
		case 7:
			x = size(&st);
			printf("Queue-d %d shirxeg element bna\n", x);
			break;
		default:
			exit(0);
		}
	}
	/* Queue-ийн эзэмшсэн нөөцийг чөлөөлөх */
	release(&st);
	return 0;
}
