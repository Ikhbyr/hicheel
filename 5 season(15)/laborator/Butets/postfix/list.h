
/* p-ийн зааж буй List-д x утгыг төгсгөлд хийнэ */
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
	struct Elm *p;
	p=malloc(sizeof(struct Elm));
	if(p==NULL){
        error=2;
	}
	p->x=x;
	p->next=p_list->head;
    p_list->head = p;
}

/* p-ийн зааж буй List-д x утгыг pos байрлалд хийнэ
   pos болон түүнээс хойшхи элементүүд нэг байрлал ухарна.
 */
void insert(struct List *p_list, int x, int pos)
{
	/* Энд оруулах үйлдлийг хийнэ үү */
	int too=0;
	struct Elm *p,*n=(struct Elm*) malloc(sizeof(struct Elm));
	p = p_list->head;
	while(p!=NULL){
        too++;
        if(too==pos){
            n->x=x;
            n->next=p->next;
            p->next=n;
            break;
        }
        p=p->next;
	}
}


/* p-ийн зааж буй List-н эхлэлээс гарган буцаана */
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

/* p-ийн зааж буй Lifst-н pos байралаас гарган буцаана.
   pos болон түүнээс хойшхи элементүүд нэг байрлал урагшилна.
 */
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

/* p-ийн зааж буй List-н утгуудыг хэвлэнэ */
void print(struct List *p_list)
{
	/* Энд хэвлэх үйлдлийг хийнэ үү */
	struct Elm *p;
	p = p_list->head;
	while(p!=NULL){
        printf("%d\n",p->x);
        p=p->next;
	}
}

/* p-ийн зааж буй List-н хамгийн эхний элементийн утгыг буцаана.
   Гаргах үйлдэл хийхгүй.
 */
int front(struct List *p_list)
{
    return p_list->head->x;
}
/* p-ийн зааж буй List-н хамгийн сүүлийн элементийн утгыг буцаана.
   List-д өөрчлөлт оруулахгүй.
 */
int back(struct List *p_list)
{
    struct Elm *p;
	p = p_list->head;
	while(p!=NULL){
        p=p->next;
        if(p->next==NULL){
            return p->x;
        }
	}
}
/* p-ийн зааж буй List-д хэдэн элемент байгааг буцаана.
   List-д өөрчлөлт оруулахгүй.
 */
int size(struct List *p_list)
{
    int too=0;
    struct Elm *p;
	p = p_list->head;
	while(p!=NULL){
        too++;
        p=p->next;
	}
	return too;
}

/* p-ийн зааж буй List-с x тоог хайн олдсон байрлалаыг буцаана.
   Олдохгүй бол -1 утгыг буцаана.
 */
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
