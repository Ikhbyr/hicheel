#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define LEN 100

struct Token
{
    int flag;        	/*
				  flag = 1 бол уг объект тооны мэдээлэл val-д хадгална
				  flag = 0 бол уг объект op-д тэмдэгт хадгална
				 */
    int val;
    char op;
};

/*
  Лист бүтцийн код энд байна. Лист нь дотроо
  int биш харин Token төрлийн утга хадгална.
 */
struct Elm
{
    struct Token x;
    struct Elm *next;
};
struct List
{
    struct Elm *head;
    struct Elm *tail;
};
void init(struct List *p_list)
{
    p_list->head = NULL;
    p_list->tail = NULL;
}
struct Stack
{
    struct Elm *top;
};
/* p-ийн зааж буй Stack хоосон бол 1 үгүй бол 0-ийг буцаана */
int empty(struct Stack *p_stk)
{
    /* Энд хоосон эсэхийг шалгах үйлдлийг хийнэ */
    if(p_stk->top==NULL)
    {
        return 1;
    }
    return 0;
}
void init_stk(struct Stack *p_stk)
{
    p_stk->top = NULL;
}
void push_back(struct List *p_list,struct Token x)
{
    /* Энд оруулах үйлдлийг хийнэ үү */
    struct Elm *p,*temp=(struct Elm*) malloc(sizeof(struct Elm));
    temp->x=x;
    temp->next=NULL;
    if(p_list->head==NULL)
    {
        p_list->head=temp;
        p_list->tail=temp;
    }
    else
    {
        p = p_list->head;
        while(p!=NULL)
        {
            if(p->next==NULL)
            {
                p->next=temp;
                p_list->tail=p->next;
                break;
            }
            p=p->next;
        }
    }
}
int pop_front(struct List *p_list)
{
    /* Энд гаргах үйлдлийг хийнэ үү */
    int a;
    struct Elm *p;
    if(p_list->head==NULL)
    {
        return 0;
    }
    p = p_list->head;
    a = p_list->head->x.val;
    p_list->head = p->next;
    return a;
}
/* p-ийн зааж буй List-н утгуудыг хэвлэнэ */
void print(struct List *p_list)
{
    /* Энд хэвлэх үйлдлийг хийнэ үү */
    struct Elm *p;
    p = p_list->head;
    while(p!=NULL)
    {
        if(p->x.flag==1)
        {
            printf("%d ",p->x.val);
        }
        else
        {
            printf("%c ",p->x.op);
        }
        p=p->next;
    }
    printf("\n");
}
void print1(struct List *p_list)
{
    /* Энд хэвлэх үйлдлийг хийнэ үү */
    struct Elm *p;
    p = p_list->head;
    while(p!=NULL)
    {
        if(p->x.flag==1)
        {
            printf("%d ",p->x.val);
        }
        else
        {
            printf("%d ",p->x.op);
        }
        p=p->next;
    }
}
/*
  int утга хадгалах Стак бүтцийн код энд байна.
 */

void push(struct Stack *p_stk,struct Token x)
{
    /* Энд оруулах үйлдлийг хийнэ үү */
    struct Elm *p;
	p=malloc(sizeof(struct Elm));
	p->x=x;
	p->next=p_stk->top;
    p_stk->top = p;
}

/* p-ийн зааж буй Stack-с гарган буцаана */
struct Token pop(struct Stack *p_stk)
{
    /* Энд гаргах үйлдлийг хийнэ үү */
    struct Token a;
    struct Elm *p1;
    p1 = p_stk->top;
    a = p_stk->top->x;
    p_stk->top = p1->next;
    return a;
}

int convert_to_int(const char s[])
{
    int len = strlen(s);
    int t = NULL, i;
    for (i = 0; i < len; i++)
        t = t * 10 + s[i] - '0';
    return t;
}
void tokenize(const char s[], struct List *p_list)
{
    char tmp[LEN];
    int i, j, k, len;
    j = 0;
    struct Token x;
    len = strlen(s);
    for (i = 0; i < len; i++)
    {
        if ('0' <= s[i] && s[i] <= '9')
        {
            /* цифр орж ирлээ */
            tmp[j] = s[i];
            j++;
        }
        else
        {
            /* тэмдэгт орж ирлээ */
            tmp[j] = '\0';
            j = 0;
            /* хадгалсан цифрийн цувааг int-рүү хөрвүүл */
            k = convert_to_int(tmp);
            x.flag = 1;
            x.val = k;
            /*
              Жагсаалтанд x элемнтийг оруулах
              Жагсаалтын push_back функцыг дуудна
             */
            push_back(p_list, x);

            /*
              тэмдэгтийг жагсаалтанд оруулах
              Жагсаалтын push_back функцыг дуудна
             */
            x.flag = 0;
            x.op = s[i];
            push_back(p_list, x);
        }
    }

    /* Тэмдэгтэн цуваанаас салгасан тэгшитгэлийг хэвлэх
       Жагсаалтын print функцыг дуудна.
     */
    print(p_list);
}

/*
  p_tk - жагсаалтад байгаа тэгштгэлийг postfix-рүү хөрвүүлнэ
 */
void convert_to_postfix(struct List *p_tk, struct List *p_pf)
{
    struct Elm *p;
    struct Stack st;
    init_stk(&st);
    struct Token x1;
    p = p_tk->head;
    while(p!=NULL)
    {
        x1=p->x;
        if (p->x.flag==1)
        {
            if(p->x.val==0 && p->next->x.op==40){

            }else if(p->x.op==41 && p->next->x.val==0){

            }else{
                push_back(p_pf, x1);
            }

        }
        //42=* 47=/ 45=- 43=+ 41=) 40=(
        else
        {
            if(empty(&st)==1)
            {
                push(&st,x1);
            }
            else
            {
                if((st.top->x.op==45||st.top->x.op==43)&&(x1.op==42||x1.op==47))
                {
                    push(&st,x1);
                }
                else if(p->x.op==41)
                {
                    while(st.top->x.op!=40)
                    {
                        push_back(p_pf,pop(&st));
                    }
                    pop(&st);
                }
                else if((st.top->x.op==47||st.top->x.op==42)&&(x1.op==43||x1.op==45))
                {
                    while(empty(&st)!=1)
                    {
                        push_back(p_pf,pop(&st));
                    }
                    push(&st,x1);
                }
                else if((st.top->x.op==43 || st.top->x.op==45)&&(x1.op==45||x1.op==43))
                {
                    push_back(p_pf,pop(&st));
                    push(&st,x1);
                }else if((st.top->x.op==47 || st.top->x.op==42)&&(x1.op==47||x1.op==42)){
                    push_back(p_pf,pop(&st));
                    push(&st,x1);
                }else if((st.top->x.op==40)&&(x1.op==47 || x1.op==42 || x1.op==43 || x1.op==45||x1.op==40) ){
                    push(&st,x1);
                }else if(x1.op==40){
                    push(&st,x1);
                }else{
                }
            }
        }
        print(&st);
        print(p_pf);
        p=p->next;
    }
    if(p==NULL)
    {
        while(empty(&st)!=1)
        {
            push_back(p_pf,pop(&st));
        }
    }
    print(p_pf);
}
int solve(struct List *p_pf)
{
    struct Elm *p;
    struct Stack st;
    init_stk(&st);
    p = p_pf->head;
    struct Token t1,t2;
    int n;
    while(p!=NULL){
        if(p->x.flag==0){
            t1=pop(&st);
            t2=pop(&st);
            if(p->x.op==42){
                t2.val=(t1.val*t2.val);
                push(&st,t2);
            }
            if(p->x.op==47){
                t2.val=(t2.val/t1.val);
                push(&st,t2);
            }
            if(p->x.op==45){
                t2.val=(t2.val-t1.val);
                push(&st,t2);
            }
            if(p->x.op==43){
                t2.val=(t2.val+t1.val);
                push(&st,t2);
            }
        }else{
            push(&st,p->x);
        }
        p=p->next;
    }
    t1=pop(&st);
    return t1.val;
}

int main()
{
    char s[LEN];
    printf("Tegshitgel oruul:");
    fgets(s, LEN, stdin);

    /* Тэгшитгэлд байгаа хоосон зайнуудыг байхгүй болгоно */
    int i, j, len;
    struct List tokens, postfix;
    init(&tokens);
    init(&postfix);
    tokenize(s, &tokens);
    /* tokens жагсаалтад хадгалсан тэгшитгэлээ postfix-рүү хөрвүүлэх */
    convert_to_postfix(&tokens, &postfix);

    /* postfix жагсаалтад хадгалсан postfix хэлбэрийг тэгштгэлийг
       бодоод хариуг нь буцаах функц
     */
    int res;
    res = solve(&postfix);
    printf("Xariu: %d\n", res);
    return 0;
}
