#include<iostream>
#include<graphics.h>
#include<math.h>
#include<stdio.h>
using namespace std;

int error = 0;
const char error_msg[][50] = {
	"",
	"List duuren!",
	"List xooson!",
	"Adilhan utga orloo!"
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
	y->height = max(height(y->left),height(y->right)) + 1;
	x->height = max(height(x->left),height(x->right)) + 1;
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
	else{
        error=3;
		return node;
	}


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
	if(root == NULL)
        return root;
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
			root->right=Delete(root->right,temp->val);
		}
	}
	if(root == NULL)
	return root;
	root->height = 1+max(height(root->left),height(root->right));
	int balance = getBalance(root);
	if (balance > 1 &&
        getBalance(root->left) >= 0)
        return rightRotate(root);

    if (balance > 1 && getBalance(root->left) < 0)
    {
        root->left = leftRotate(root->left);
        return rightRotate(root);
    }

    if (balance < -1 && getBalance(root->right) <= 0)
        return leftRotate(root);

    if (balance < -1 && getBalance(root->right) > 0)
    {
        root->right = rightRotate(root->right);
        return leftRotate(root);
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

void draw(struct Node* node, int x, int y, int golOloh, int flag, int rad)
{
    if (node != NULL)
    {
        char tooChar[5];
        if (node->left != NULL)
            draw(node->left, x - golOloh, y + 50, golOloh / 2, -1, rad);
        if (node->right != NULL)
            draw(node->right, x + golOloh, y + 50, golOloh / 2, 1, rad);
        delay(300);
        sprintf(tooChar, "%d", node->val);
        setcolor(YELLOW);
        outtextxy(x - 8, y - 10, tooChar);
        setcolor(BLUE);
        circle(x, y, rad);
        setcolor(RED);
        if (flag == 1)
        {
            line((x - golOloh * 2) + rad, y - 50, x, y - rad);
        }
        else if(flag == -1)
        {
            line((x + golOloh * 2) - rad, y - 50, x, y - rad);
        }
    }
}
int main(){
	Node *root = NULL;
    int n, i, a,t;
    int shalgah, uildel, radius=25, complete = 1, height;
    DWORD Width = GetSystemMetrics(SM_CXSCREEN);
    DWORD fullHeight = GetSystemMetrics(SM_CYSCREEN);
    int wUrgun = Width/2;
    initwindow(wUrgun, fullHeight);
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
                cleardevice();
                draw(root, wUrgun / 2, radius, wUrgun / 4, 0, radius);
                break;
            case 2:
                cout<<"Ustgah too: ";
                cin>>a;
                root=Delete(root,a);
                if(error)
                    cout<<"\nAldaa: "<<error_msg[error];
                else
                    cout<<a<<"\nUtga ustlaa\n";
                cleardevice();
                draw(root, wUrgun / 2, radius, wUrgun / 4, 0, radius);
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
