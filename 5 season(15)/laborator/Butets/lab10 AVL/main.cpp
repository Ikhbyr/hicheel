#include<iostream>
#include<math.h>
#include<graphics.h>
#include<stdio.h>

using namespace std;

struct node
{
    int key;
    struct node *left, *right;
    int height;
    int x, y;
};

int error = 0, mSize, rSize = 0;
const char error_msg[][50] = {
	"",
	"Mod xooson!",
	"Mod duuren!"
};

struct node *newNode(int shine)
{
    struct node *temp = new struct node;
    temp->key = shine;
    temp->left = temp->right = NULL;
    temp->height = 1;
    return temp;
}

void inorder(struct node *root)
{
    if (root != NULL)
    {
        inorder(root->left);
        printf("%d \n", root->key);
        inorder(root->right);
    }
}

int maxHeight(node* node)
{
    if (node == NULL)
        return 0;
    else
    {
        int lHeight = maxHeight(node->left);
        int rHeight = maxHeight(node->right);

        if (lHeight > rHeight)
            return(lHeight + 1);
        else
            return(rHeight + 1);
    }
}

struct node *rightRotate(struct node *aldaa)
{
    struct node *tuv = aldaa->left;
    struct node *sul = tuv->right;

    tuv->right = aldaa;
    aldaa->left = sul;

    aldaa->height = maxHeight(aldaa);
    tuv->height = maxHeight(tuv);

    return tuv;
}

struct node *leftRotate(struct node *aldaa)
{
    struct node *tuv = aldaa->right;
    struct node *sul = tuv->left;

    tuv->left = aldaa;
    aldaa->right = sul;

    aldaa->height = maxHeight(aldaa);
    tuv->height = maxHeight(tuv);

    return tuv;
}

struct node* insert(struct node* node, int key)
{
    if (node == NULL) return newNode(key);

    if (key < node->key)
        node->left  = insert(node->left, key);
    else if (key > node->key)
        node->right = insert(node->right, key);
    else
        return node;

    node->height = maxHeight(node);

    int balance = maxHeight(node->left) - maxHeight(node->right);

    if (balance > 1 && key < node->left->key)
        return rightRotate(node);

    if (balance < -1 && key > node->right->key)
        return leftRotate(node);

    if (balance > 1 && key > node->left->key)
    {
        node->left = leftRotate(node->left);
        return rightRotate(node);
    }

    if (balance < -1 && key < node->right->key)
    {
        node->right = rightRotate(node->right);
        return leftRotate(node);
    }

    return node;
}
struct node* search(struct node* root, int key)
{
    if (root == NULL || root->key == key)
       return root;

    if (root->key < key)
       return search(root->right, key);

    return search(root->left, key);
}
struct node * minkeyueNode(struct node* node)
{
    struct node* current = node;

    while (current && current->left != NULL)
        current = current->left;

    return current;
}
// unduriig butsaana
int height(node *N){
	if (N == NULL)
		return 0;
		//cout<<"\nondor ni "<<N->height;
	return N->height;
}
int getBalance(node *N){
	if (N == NULL)
		return 0;
	return height(N->left) - height(N->right);
}
struct node* Delete(struct node *root, int key) {
	if(root == NULL)
        return root;
	else if(key < root->key){
        root->left = Delete(root->left,key);
	}
	else if (key > root->key){
        root->right = Delete(root->right,key);
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
			struct node *temp = minkeyueNode(root->right);
			root->key = temp->key;
			root->right=Delete(root->right,temp->key);
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

void draw(struct node* node, int urgun, int undur, int r, int nemelt, int flag)
{
    if (node != NULL)
    {
        node->x = urgun;
        node->y = undur + 50;
        char hevleh[50];
        if (node->left != NULL)
            draw(node->left, node->x - nemelt, node->y, r, nemelt / 2, -1);
        if (node->right != NULL)
            draw(node->right, node->x + nemelt, node->y, r, nemelt / 2, 1);
        arc(urgun, undur, 0, 360, r);
        sprintf(hevleh, "%d", node->key);
        outtextxy(urgun - 8, undur - 10, hevleh);
        if (flag == 1)
        {
            line((urgun - nemelt * 2) + r, undur - 50, urgun, undur - r);
        }
        else if(flag == -1)
        {
            line((urgun + nemelt * 2) - r, undur - 50, urgun, undur - r);
        }
    }
}

int main()
{
    struct node *root = NULL;
    struct node *hevleh = new struct node;

    int shalgah, uildel, radius, fullWidth = 1200, fullHeight = 650, i, complete = 1, height;

    mSize = 31;
    height = ceil(log2(mSize + 1)) - 1;
    for(i = 0; i < height; i++)
        complete = complete * 2;
    radius = fullHeight / (complete * 2);
    initwindow(fullWidth, fullHeight);

    cout << "Max node = 32" << endl;
    while(1)
    {
        cout << "1: insert, 2: delete, 3: search, 4: print" << endl;
        cin >> shalgah;
        error = 0;
        hevleh->key = -1;

        switch(shalgah)
        {
        case 1:
            cout << "Nemeh toogoo oruulna uu: ";
            cin >> uildel;
            if (rSize == mSize)
            {
                cout << "Aldaa: " << error_msg[2] << endl;
            }
            else
            {
                root = insert(root, uildel);
                rSize++;
                cleardevice();
                draw(root, fullWidth / 2, radius, radius, 300, 0);
            }
            break;
        case 2:
            if (root == NULL)
            {
                cout << "Aldaa: " << error_msg[1] << endl;
            }
            else
            {
                cout << "Ustgah toogoog oruulna uu: ";
                cin >> uildel;
                Delete(root, uildel);
                rSize--;
                cleardevice();
                draw(root, fullWidth / 2, radius, radius, 300, 0);
            }
            break;
        case 3:
            if (root == NULL)
            {
                cout << "Aldaa: " << error_msg[1] << endl;
            }
            else
            {
                cout << "Haih toogoo oruulna uu:";
                cin >> uildel;
                hevleh = search(root, uildel);
                if (hevleh->key == -1)
                    cout << "Too oldsongui" << endl;
                else
                    cout << hevleh << "too oldloo";
            }
            break;
        case 4:
            if (root == NULL)
            {
                cout << "Aldaa: " << error_msg[1] << endl;
            }
            else
            {
                inorder(root);
            }
            break;
        default:
            break;
        }
    }
    delete hevleh;
}
