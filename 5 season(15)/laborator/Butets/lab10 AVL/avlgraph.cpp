#include<iostream>
#include<graphics.h>
using namespace std;

DWORD Width = GetSystemMetrics(SM_CXSCREEN);
DWORD Height = GetSystemMetrics(SM_CYSCREEN);

int error = 0;
const char error_msg[][50] = {
	"",
	"List duuren!",
	"List xooson!"
};

class Node{
	public:
	int val;
	Node *left;
	Node *right;
	int height;
};

// unduriig butsaana
int height(Node *N){
	if (N == NULL)
		return 0;
		//cout<<"\nondor ni "<<N->height;
	return N->height;
}

Node* shiljuuleh(Node* root){
	while(root->left != NULL) root = root->left;
	return root;
}

int max(int a, int b){
	return (a > b)? a : b;
}

/* Шинэ элемент хадгалах хаяг бэлдэнэ */
Node* newNode(int val){
	Node* node = new Node();
	node->val = val;
	node->left = NULL;
	node->right = NULL;
	node->height = 1; // new node is initially
					// added at leaf
	return(node);
}

// Baruun erguuleh
Node *rightRotate(Node *y){
	Node *x = y->left;
	Node *T2 = x->right;

	// Perform rotation
	x->right = y;
	y->left = T2;

	// Unduriig shinechlene
	y->height = max(height(y->left),
					height(y->right)) + 1;
	x->height = max(height(x->left),
					height(x->right)) + 1;
	return x;
}

// Zuun erguuleh
Node *leftRotate(Node *x){
	Node *y = x->right;
	Node *T2 = y->left;
	y->left = x;
	x->right = T2;
	x->height = max(height(x->left),height(x->right)) + 1;
	y->height = max(height(y->left),height(y->right)) + 1;
	return y;
}

// Node -iin baruun zuun modnii ondriin ylgawriig butsaana
int getBalance(Node *N){
	if (N == NULL)
		return 0;
	return height(N->left) - height(N->right);
}

Node* insert(Node* node, int val){
// engiin BST-d ehleed insert hiine
	if (node == NULL)
		return(newNode(val));
    //cout<<"\n utga "<<node->val;
	if (val < node->val)
		node->left = insert(node->left, val);
	else if (val > node->val)
		node->right = insert(node->right, val);
	else
		return node;

	/* 2. Update height of this ancestor node */
	//cout<<"\n utga "<<node->val<<" left h "<<height(node->left)<<" right h "<<height(node->right);
	node->height = 1 + max(height(node->left),height(node->right));
    //cout<<"\nnode h "<<node->height;
	// Node ondoriin zoruug zoruu-d hadgalna
	int zoruu = getBalance(node);

	// bugd zuun
	if (zoruu > 1 && val < node->left->val)
		return rightRotate(node);

	// bugd baruun
	if (zoruu < -1 && val > node->right->val)
		return leftRotate(node);

	// zuun baruun uyd
	if (zoruu > 1 && val > node->left->val){
		node->left = leftRotate(node->left);
		return rightRotate(node);
	}

	// baruun zuun uyd
	if (zoruu < -1 && val < node->right->val){
		node->right = rightRotate(node->right);
		return leftRotate(node);
	}
	return node;
}

int search(Node *root, int val){
	if(root == NULL){
        cout<<val<<" utga oldsongui\n";
        return 0;
	}
	else if(val < root->val){
        search(root->left,val);
	}
	else if (val > root->val){
        search(root->right,val);
	}
	else {
	    cout<<val<<" utga oldloo\n";
		return 1;
	}
}

struct Node* Delete(struct Node *root, int val) {
    struct Node *a;
	if(root == NULL) return root;
	else if(val < root->val){
        root->left = Delete(root->left,val);
	}
	else if (val > root->val){
        root->right = Delete(root->right,val);
	}else{
		//No child
		if(root->left == NULL && root->right == NULL) {
			delete root;
			root = NULL;
		}
		//One child
		else if(root->left == NULL) {
			struct Node *temp = root;
			root = root->right;
			delete temp;
		}
		else if(root->right == NULL) {
			struct Node *temp = root;
			root = root->left;
			delete temp;
		}
		//2 children
		else {
			struct Node *temp = shiljuuleh(root->right);
			root->val = temp->val;
			a=Delete(root->right,temp->val);
			root->right = a;
		}
	}
	return root;
}

void preOrder(Node *root){
	if(root != NULL){
		cout << root->val << " ";
		preOrder(root->left);
		preOrder(root->right);
	}
}

int main(){
    initwindow(Width/2,Height);
	Node *root = NULL;
int n, i, a,t;
	while(1){
        cout<<"1: insert, 2: delete, 3: search, 4: print, 0: exit\n";
        cin>>t;
        error=0;
        switch(t){
            case 1:
                cout<<"Oruulah utga: ";
                cin>>a;
                root=insert(root,a);
                if(error)
                    cout<<"Aldaa: "<<error_msg[error];
                else
                    cout<<a<<" utga orloo\n";
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
                preOrder(root);
                cout<<"\n";
                break;
            default:
                return 0;
        }
    }
	return 0;
}
