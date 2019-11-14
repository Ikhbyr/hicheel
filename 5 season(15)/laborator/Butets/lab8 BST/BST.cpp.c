#include<stdio.h>
#include<iostream>
using namespace std;

struct node {
    int data;
    struct node *left;
    struct node *right;
};

void insert(struct node *p, int x){

}
int main(){
    int n, i, item;
    struct node *p, *q, *root;
    cout<<"Elementiin toogoo oruulna uu\n";
    cin>>n;
    for(i=0; i<n; i++){
        p=(struct node*)malloc(sizeof(struct node));
        cin>>item;
        p->data = item;
        p->left = NULL;
        p->right = NULL;
        if(i==0)
            root = p;
        else{
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
}
