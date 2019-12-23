#include <iostream>
using namespace std;
//Ugugdul hadgalah
template <class T>
struct Node {
    T val;
    Node<T> *next;
};

template <class T>
class List {
private:
    //Жагсаалтын эхлэлийг заана
    Node<T> *first;
    //Жагсаалтын төгсгөлийг заана
    Node<T> *last;
public:
    //Жагсаалтын төгсгөлд утга нэмнэ
    void add(T t);
    //index байрлалд элемент нэмнэ
    void insert(T t, int index);
    //index байрлал дахь элемент буцаана
    T get(int index);
    //index байрлал дахь элемент устгана.
    void deletes(int index);
    //жагсаалтын уртыг буцаана
    int size();
    //жагсаалтыг хэвлэх
    void print();
    List();
    ~List();
};
//Гарааны утга онооно
template <class T>
List<T>::List(){
    first = NULL;
    last = NULL;
}
//Нөөцөлсөн үүрнүүдээ устгана
template <class T>
List<T>::~List(){
    Node<T>* temp = first;
    while(temp != NULL){
        temp = temp->next;
        delete(first);
        first = temp;
    }
}
//Жагсаалтын төгсгөлд утга нэмнэ
template <class T>
void List<T>::add(T t){
    Node<T>* newNode = new Node<T>;
    newNode->val = t;
    newNode->next = NULL;
    Node<T>* temp = first;
    if(temp == NULL){
        first = newNode;
    }else{
        while(temp!=NULL){
            if(temp->next==NULL){
                temp->next=newNode;
                last = temp->next;
                break;
            }
            temp=temp->next;
        }
    }
}

template <class T>
void List<T>::insert(T t, int index){
    int too=0;
    Node<T>* p = first, *newNd = new Node<T>;
    if(index==0){
        newNd->val = t;
        newNd->next = first;
        first = newNd;
    }else{
        while(p!=NULL){
            too++;
            if(too == index-1){
                newNd->val = t;
                newNd->next = p->next;
                p->next = newNd;
                break;
            }
            p=p->next;
        }
    }

}

template <class T>
T List<T>::get(int index){
    int too=0;
    Node<T>* p = first;
    while(p!=NULL){
        too++;
        if(too == index){
            return p->val;
        }
        p=p->next;
    }
}

template <class T>
void List<T>::deletes(int index){
    int i;
    Node<T>* p = first;
    for(i=1;i<index-1;i++){
        p=p->next;
	}
	p->next=p->next->next;
};
//Жагсаалтын хэмжээг буцаана
template <class T>
int List<T>::size(){
    int siz=0;
    Node<T>* temp = first;
    if(temp == NULL){
        return siz;
    }
    if(temp->next == NULL){
        siz++;
    }else{
        while(temp != NULL){
            temp = temp->next;
            siz++;
        }
    }
    return siz;
}

template <class T>
void List<T>::print(){
    Node<T>* temp = first;
    if(temp == NULL){
        cout<<"";
    }
    if(temp->next == NULL){
        cout<<temp->val;
    }else{
        while(temp != NULL){
            cout<<temp->val;
            temp = temp->next;
            cout<<", ";
        }
    }
}

main(){
    //int төрлийн жагсаалт үүсгэх
    List <int> p;
    p.add(1);
    p.add(21);
    p.add(24);
    p.add(4);
    p.add(6);
    cout<<"Ehleed: ";
    p.print();
    cout<<"\n3-r bairlal deerh ugugdul ni: "<<p.get(3);
    cout<<"\n3-r bairlal deer 10-g nemhed: ";
    p.insert(10,3);
    p.print();
    cout<<"\n4-r bairlal deerh elementiig ustgah: ";
    p.deletes(4);
    p.print();
    cout<<"\nJagsaaltiin urt ni: "<<p.size();
    //char төрлийн жагсаалт үүсгэх
    cout<<"\nChar torliin ogogdol hadgal: ";
    List <char> l;
    l.add('a');
    l.add('b');
    l.print();
    cout<<"\nurt ni: "<<l.size();
}
