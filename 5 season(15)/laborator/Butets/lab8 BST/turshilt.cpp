#include<stdio.h>
#include<iostream>
#include<stdlib.h>
using namespace std;
int size=0;
int error=0;
struct node {
    int data;
    struct node *left;
    struct node *right;
}*p,*q,*root;

const char error_msg[][50] = {
	"",
	"BST duuren!",
	"BST xooson!",
};
void insert(int item){
    p=(struct node*)malloc(sizeof(struct node));
    p->data = item;
    p->left = NULL;
    p->right = NULL;
    if(size==0){
        root = p;
        size++;
    }
    else{
        size++;
        q=root;
        while(1){
            if(p->data>q->data){
                if(q->right==NULL){
                    q->right = p;
                    break;
                }else{
                    q=q->right;
                }
            }else{
                if(q->left==NULL){
                    q->left =p;
                    break;
                }else{
                    q=q->left;
                }
            }
        }
    }
}


int deletenode(int n){

}

int search(int n){
    if(size==1){
        if(root->data==n){
            return 0;
        }else{
            return 1;
        }
    }else{
        while(1){
            if(n>q->data){
                if(q->right==NULL){
                    return 1;
                }else{
                    q=q->right;
                }
            }else if(n<q->data){
                if(q->left==NULL){
                    return 1;
                }else{
                    q=q->left;
                }
            }else{
                return 0;
            }
        }
    }
}
//inoreder
void print(node *q) {
	if(q == NULL) return;

	print(q->left);       //Visit left subtree
	printf("%d ",q->data);  //Print data
	print(q->right);      // Visit right subtree
}
int main(){
    int n, i, a,t;
    while(1){
        cout<<"1: insert, 2: delete, 3: search, 4: print, 0: exit\n";
        cin>>t;
        error=0;
        switch(t){
            case 1:
                cout<<"Oruulah utga: ";
                cin>>a;
                insert(a);
                if(error)
                    cout<<"Aldaa: "<<error_msg[error];
                else
                    cout<<a<<" utga orloo\n";
                break;
            case 2:
                cout<<"Ustgah too: ";
                cin>>a;
                deletenode(a);
                if(error)
                    cout<<"Aldaa: "<<error_msg[error];
                else
                    cout<<a<<" utga ustlaa\n";
                break;
            case 3:
                cout<<"Haih too: ";
                cin>>a;
                if(search(a))
                    cout<<a<<" utga oldsongui\n";
                else
                    cout<<a<<" utga oldloo\n";
                break;
            case 4:
                print(q);
                break;
            default:
                exit(0);
        }
    }
}

