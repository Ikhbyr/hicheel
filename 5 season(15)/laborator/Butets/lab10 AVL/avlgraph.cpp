#include<iostream>
#include<stdio.h>
using namespace std;

int error = 0;
const char error_msg[][50] = {
	"",
	"List duuren!",
	"List xooson!"
};

struct node {
	int data;
	struct node *left;
	struct node *right;
};

node* shiljuuleh(node* root)
{
	while(root->left != NULL) root = root->left;
	return root;
}

struct node* Delete(struct node *root, int data) {
    int a;
	if(root == NULL) return root;
	else if(data < root->data){
        root->left = Delete(root->left,data);
	}
	else if (data > root->data){
        root->right = Delete(root->right,data);
	}else{
		//No child
		if(root->left == NULL && root->right == NULL) {
			delete root;
			root = NULL;
		}
		//One child
		else if(root->left == NULL) {
			struct node *temp = root;
			root = root->right;
			delete temp;
		}
		else if(root->right == NULL) {
			struct node *temp = root;
			root = root->left;
			delete temp;
		}
		//2 children
		else {
			struct node *temp = shiljuuleh(root->right);
			root->data = temp->data;
			a=Delete(root->right,temp->data);
			cout<<"a ni "<<a;
			root->right = a;
		}
	}
	return root;
}

void print(node *root) {
	if(root == NULL) return;
	print(root->left);
	printf("%d ",root->data);
	print(root->right);
}
void zurah(node *root){
if(root == NULL) return;
    printf("%d ",root->data);
	print(root->left);
	print(root->right);
}
int search(node *root, int data){
	if(root == NULL){
        cout<<data<<" utga oldsongui\n";
        return 0;
	}
	else if(data < root->data){
        search(root->left,data);
	}
	else if (data > root->data){
        search(root->right,data);
	}
	else {
	    cout<<data<<" utga oldloo\n";
		return 1;
	}
}

// Function to Insert node in a Binary Search Tree
node* Insert(node *root,char data) {
	if(root == NULL) {
		root = new node();
		root->data = data;
		root->left = root->right = NULL;
	}
	else if(data <= root->data)
		root->left = Insert(root->left,data);
	else
		root->right = Insert(root->right,data);
	return root;
}

int main() {
    int n, i, a,t;
	node* root = NULL;
	while(1){
        cout<<"1: insert, 2: delete, 3: search, 4: print, 0: exit\n";
        cin>>t;
        error=0;
        switch(t){
            case 1:
                cout<<"Oruulah utga: ";
                cin>>a;
                root=Insert(root,a);
                if(error)
                    cout<<"Aldaa: "<<error_msg[error];
                else
                    cout<<a<<" utga orloo\n";
                zurah(root);
                break;
            case 2:
                cout<<"Ustgah too: ";
                cin>>a;
                root=Delete(root,a);
                if(error)
                    cout<<"\nAldaa: "<<error_msg[error];
                else
                    cout<<a<<"\nUtga ustlaa\n";
                break;
            case 3:
                cout<<"Haih too: ";
                cin>>a;
                search(root,a);
                break;
            case 4:
                print(root);
                cout<<"\n";
                break;
            default:
                return 0;
        }
    }
}
