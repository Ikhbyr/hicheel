#include <stdio.h>
#include <stdlib.h>

struct List {
	int len;
	int *dat;
	int size;
};
int error = 0;
const char error_msg[][50] = {
	"",
	"List duuren!",
	"List xooson!",
	"Bairlald oruulax bolomjgui!",
	"Bairlaas gargax bolomjgui!"
};

void init(struct List *p, int n)
{
	p->len = n;
	p->size = 0;
	p->dat = (int *) malloc(sizeof(int) * n);
}

void release(struct List *p)
{
	free(p->dat);
	p->dat = NULL;
}
/* p-ийн зааж буй List хоосон бол 1 үгүй бол 0-ийг буцаана */
int empty(struct List *p)
{
	/* Энд хоосон эсэхийг шалгах үйлдлийг хийнэ */
	if(p->size==0){
        return 1;
    }else{
        return 0;
    }
}

/* p-ийн зааж буй List-д x утгыг төгсгөлд хийнэ */
void push_back(struct List *p, int x)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	if(p->size>=p->len)
        error=1;
    else{
        int n=p->size;
        p->dat[n]=x;
        p->size++;
    }
}

/* p-ийн зааж буй List-д x утгыг эхэнд  хийнэ */
void push_front(struct List *p, int x)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	if(p->size>=p->len)
        error=1;
    else{
        p->size++;
        int i;
        for(i=p->size;0<i;i--){
            p->dat[i]= p->dat[i-1];
        }
        p->dat[0]=x;
    }
}

/* p-ийн зааж буй List-д x утгыг pos байрлалд хийнэ
   pos болон түүнээс хойшхи элементүүд нэг байрлал ухарна.
 */
void insert(struct List *p, int x, int pos)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	if(p->size>=p->len)
        error=3;
    else{
        p->size++;
        int noots=p->dat[pos-1],i,noots1;
        p->dat[pos-1]=x;
        for(i=p->size;pos<i;i--){
            p->dat[i]= p->dat[i-1];
            if(pos+1==i){
                p->dat[i-1]=noots;
            }
        }
    }
}


/* p-ийн зааж буй List-н эхлэлээс гарган буцаана */
int pop_front(struct List *p)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
	int i, buts=p->dat[0];
    if(p->size<=0){
        error=4;
        return 0;
    }else{
        for(i=0; i<p->size;i++){
            p->dat[i]=p->dat[i+1];
        }
        p->size--;
        return buts;
    }
}

/* p-ийн зааж буй List-н төгсгөлөөс гарган буцаана */
int pop_back(struct List *p)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
	int buts=p->dat[p->size-1];
	if(p->size<=0)
        error=4;
        else{
            p->size--;
            p->dat[p->size]=NULL;
            return buts;
        }
}

/* p-ийн зааж буй List-н pos байралаас гарган буцаана.
   pos болон түүнээс хойшхи элементүүд нэг байрлал урагшилна.
 */
int erase(struct List *p, int pos)
{
	/* Энд гаргах үйлдлийг хийнэ үү */
    int noots=p->dat[pos-1],i;
    if(p->size<=0)
        error=4;
        else{
            for(i=pos-1;i<p->len;i++){
                p->dat[i]=p->dat[i+1];
            }
            p->size--;
            return noots;
        }
        return 0;
}

/* p-ийн зааж буй List-н утгуудыг хэвлэнэ */
void print(struct List *p)
{
	/* Энд хэвлэх үйлдлийг хийнэ үү */
	int i;
    for(i=0; i<p->size; i++){
        printf("%d-r bairlald - %d\n",i+1,p->dat[i]);
    }
}

/* p-ийн зааж буй List-н хамгийн эхний элементийн утгыг буцаана.
   Гаргах үйлдэл хийхгүй.
 */
int front(struct List *p)
{
    int i;
    for(i=0;i<p->len;i++){
        if(p->dat[i]!=NULL){
            return p->dat[i];
        }
    }
}
/* p-ийн зааж буй List-н хамгийн сүүлийн элементийн утгыг буцаана.
   List-д өөрчлөлт оруулахгүй.
 */
int back(struct List *p)
{
    return p->dat[p->size-1];
}
/* p-ийн зааж буй List-д хэдэн элемент байгааг буцаана.
   List-д өөрчлөлт оруулахгүй.
 */
int size(struct List *p)
{
    return p->size;
}

/* p-ийн зааж буй List-с x тоог хайн олдсон байрлалаыг буцаана.
   Олдохгүй бол -1 утгыг буцаана.
 */
int search(struct List *p, int x)
{
    int i;
    for(i=0;i<p->len;i++){
        if(p->dat[i]==x){
            return i;
        }
    }
    return -1;
}

int main()
{
	/* List үүсгэн, эхлүүлэх */
	struct List st;
	init(&st, 10);
	int t, x, pos;

	while (1) {
		printf("1: push_front, 2: push_back, 3: insert, 4: pop_front, 5: pop_back,"
		       "6: erase, 7: front, 8: back, 9: size, 10: empty, 11: search, 12: print,"
		       "13: exit\n");
		scanf("%d", &t);
		error = 0;

		switch (t) {
		case 1:
			printf("Exend oruulax utga: ");
			scanf("%d", &x);
			push_front(&st, x);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga exend orloo\n", x);
			break;
		case 2:
			printf("Suuld oruulax utga: ");
			scanf("%d", &x);
			push_back(&st, x);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga suuld orloo\n", x);

			break;
		case 3:
			printf("Oruulax utga: ");
			scanf("%d", &x);
			printf("Oruulax bairlal: ");
			scanf("%d", &pos);
			insert(&st, x, pos);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga %d-d orloo\n", x, pos);

			break;
		case 4:
			x = pop_front(&st);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utgiig exlelees gargalaa\n", x);
			break;
		case 5:
			x = pop_back(&st);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utgiig suulees gargalaa\n", x);
			break;
		case 6:
			printf("gargax bairlal: ");
			scanf("%d", &pos);
			x = erase(&st, pos);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utgiig %d bairlalaas gargalaa\n", x, pos);
			break;
		case 7:
			x = front(&st);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga xamgiin exend bna\n", x);
			break;
		case 8:
			x = back(&st);
			if (error)
				printf("Aldaa: %s\n", error_msg[error]);
			else
				printf("%d utga xamgiin suuld bna\n", x);
			break;
		case 9:
			x = size(&st);
			printf("List-d %d shirxeg element bna\n", x);
			break;
		case 10:
			if (empty(&st))
				printf("List xooson\n");
			else
				printf("List xooson bish\n");
			break;
		case 11:
			printf("Xaix toog oruul: ");
			scanf("%d", &x);
			pos = search(&st, x);
			if (pos == -1)
				printf("%d utga oldsongui\n", x);
			else
				printf("%d utga %d bairlald oldloo\n", x, pos);
			break;
		case 12:
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
