/**
* @author E.Nyamjantsan
* @date 10.04.2019
* @goal Shape eh class-s udamshsan TwoDShape class-s udamshsan Circle, Square, Triangle classuudiig baiguulj tedgeeriin talbai bolon perimeter-g oloh program.
**/

#include <iostream>
#include <cmath>

using namespace std;

//Eh class
class Shape {
    protected:
        string name;
    public:
        Shape()
		{
            name = "";
            cout << "Shape class constructor" << endl;
        }
        Shape(string name)
		{
            this -> name = name;
            cout << "Shape class parameterized constructor" << endl;
        }
        virtual ~Shape()
		{
            cout << "Shape class destructor" << endl;
        }
        // jinhene hiisver function
        virtual float Perimeter() = 0;
        // jinhene hiisver function
        virtual void print() = 0;
};

/**
* Shape eh class-s public-aar udamshsan class.
* @goal Eh class-s name huvisagchiig udamshuulj avna.
**/
class TwoDShape : public virtual Shape
{
    protected:
        float x1, x2, x3, x4;
        float y1, y2, y3, y4;
        float a, b;
    public:
        TwoDShape() : Shape()
		{
            x1 = 0;
            x2 = 0;
            x3 = 0;
            x4 = 0;
            y1 = 0;
            y2 = 0;
            y3 = 0;
            y4 = 0;
            a = 0;
            b = 0;
            cout << "TwoDShape class constructor" << endl;
        }

        ~TwoDShape()
		{
            cout << "TwoDShape class destructor" << endl;
        }

        TwoDShape(int x1, int x2, int x3, int x4, int y1, int y2, int y3, int y4, int a, int b) : Shape(name)
		{
            this -> x1 = x1;
            this -> x2 = x2;
            this -> x3 = x3;
            this -> x4 = x4;
            this -> y1 = y1;
            this -> y2 = y2;
            this -> y3 = y3;
            this -> y4 = y4;
            this -> a = a;
            this -> b = b;
            cout << "TwoDShape class parameterized constructor!" << endl;
        }
        float getX1();
        float getX2();
        float getX3();
        float getX4();
        float getY1();
        float getY2();
        float getY3();
        float getY4();
        float getA();
        float getB();
        string getName();
        void setX1(float x);
        void setX2(float x);
        void setX3(float x);
        void setX4(float x);
        void setY1(float x);
        void setY2(float x);
        void setY3(float x);
        void setY4(float x);
        void setA(float x);
        void setB(float x);
        void setName(string name);
        //jinhene hiisver function
        virtual float Area() = 0;

};

/**
* TwoDShape eh class-s public torloor udamshisan class.
* Tiimees protected bolon public handalttai gishuun ugugdul bolon function-uud handaltiin tuvshin uurchlugduhgui udamshina.
**/

class Circle : public virtual TwoDShape
{
    private:
        int r;
    public:
        Circle(int r) : TwoDShape(x1, x2, x3, x4, y1, y2, y3, y4, a, b)
		{
            this -> r = r;
            cout << "Circle class parameterized constructor" << endl;
        }
        Circle() : TwoDShape()
		{
            r = 0;
            cout << "Circle class constructor" << endl;
        }
        ~Circle()
		{
            cout << "Circle class destructor" << endl;
        }
        float getR();
        void setR(float x);
        // eh function-s udamshij irsen hiisver function
        float Perimeter();
        // eh function-s udamshij irsen hiisver function
        float Area();
        // eh function-s udamshij irsen hiisver function
        void print();
};

/**
TwoDShape eh class-s public torloor udamshisan class.
Tiimees protected bolon public handalttai gishuun ogogdol bolon function-uud handaltiin tuvshin oorchlogdohgui udamshina.
**/

class Square : public TwoDShape
{
    public:
        Square() : TwoDShape()
		{
            cout << "Square class constructor" << endl;
        }
        ~Square()
		{
            cout << "Square class destructor" << endl;
        }
        // eh function-s udamshij irsen hiisver function
        float Perimeter();
        // eh function-s udamshij irsen hiisver function
        float Area();
        // eh function-s udamshij irsen hiisver function
        void print();

};
/**
TwoDShape eh class-s public torloor udamshisan class.
Tiimees protected bolon public handalttai gishuun ogogdol bolon function-uud handaltiin tuvshin oorchlogdohgui udamshina.
**/
class Triangle : public TwoDShape
{
    public:
        Triangle() : TwoDShape()
		{

            cout << "Triangle class constructor!" << endl;
        }
        ~Triangle()
		{
            cout << "Triangle class destructor!" << endl;
        }
        // eh function-s udamshij irsen hiisver function
        float Perimeter();
        // eh function-s udamshij irsen hiisver function
        float Area();
        // eh function-s udamshij irsen hiisver function
        void print();
};

float TwoDShape::getX1()
{
    return this -> x1;
}

float TwoDShape :: getX2()
{
    return this -> x2;
}

float TwoDShape::getX3()
{
    return this -> x3;
}

float TwoDShape :: getX4()
{
    return this -> x4;
}

float TwoDShape :: getY1()
{
    return this -> y1;
}

float TwoDShape :: getY2()
{
    return this -> y2;
}

float TwoDShape :: getY3()
{
    return this -> y3;
}

float TwoDShape :: getY4()
{
    return this -> y4;
}

float TwoDShape :: getA()
{
    return this -> a;
}

float TwoDShape :: getB()
{
    return this -> b;
}

string TwoDShape :: getName()
{
    return this -> name;
}

void TwoDShape :: setX1(float x)
{
    this -> x1 = x;
}

void TwoDShape :: setX2(float x)
{
    this -> x2 = x;
}

void TwoDShape :: setX3(float x)
{
    this -> x3 = x;
}

void TwoDShape :: setX4(float x)
{
    this -> x4 = x;
}

void TwoDShape :: setY1(float x)
{
    this -> y1 = x;
}

void TwoDShape :: setY2(float x)
{
    this -> y2 = x;
}

void TwoDShape :: setY3(float x)
{
    this -> y3 = x;
}

void TwoDShape :: setY4(float x)
{
    this -> y4 = x;
}

void TwoDShape :: setA(float x)
{
    this -> a = x;
}

void TwoDShape :: setB(float x)
{
    this -> b = x;
}

void TwoDShape :: setName(string name)
{
    this -> name = name;
}

float Circle :: getR()
{
    return this -> r;
}

void Circle :: setR(float x)
{
    this -> r = x;
}

/**
@goal - toirgiin perimeter-g olood butsaana
@return - toirgiin perimeter
*/

float Circle :: Perimeter()
{
    return M_PI * r * 2;
}

/**
@goal - toirgiin talbaig-g olood butsaana
@return - toirgiin talbain utga
*/

float Circle :: Area()
{
    return M_PI * r * r;
}

/**
@goal - kvadratiin perimeter-g olood butsaana
@return - kvadratiin perimeter
*/

float Square :: Perimeter()
{
    return a * 4;
}
/**
@goal - kvadrat-n talbaig-g olood butsaana
@return - kvadrat-n talbain utga
*/
float Square :: Area()
{
    return a * a;
}
/**
@goal - gurvaljnii perimeter-g olood butsaana
@return - gurvaljnii perimeter
*/
float Triangle :: Perimeter()
{
    return a * 3;
}
/**
@goal - gurvaljnii talbaig-g olood butsaana
@return - gurvaljnii talbain utga
*/
float Triangle :: Area()
{
    return sqrt(3) * a * a / 4;
}
/**
@goal parametreer avsan objectuudiin gishuun ogogduudiig hevlene
@param Circle &toirog - Circle class-n toirog objectiin hayg
@param Square &kv - Square class-n kv objectiin hayg
@param Triangle &gurvaljin - Triangle class-n gurvaljin objectiin hayg
*/
void Circle :: print()
{
    cout << "Ner :" << getName() << endl;
    cout << "Toirgiin radius :" << getR() << endl;
    cout << "Talbai :" << Area() << endl;
    cout << "Perimeter :" << Perimeter() << endl;
    cout << "Toirgiin tuviin koordinat :" << endl;
    cout << "(" << getX1()<< "," << getY1() <<")" << endl;
    cout << endl;
}
void Triangle :: print()
{
    cout << "Ner :" << getName() << endl;
    cout << "Taliin urt :" << getA() << endl;
    cout << "Talbai :" << Area() << endl;
    cout << "Perimeter :" << Perimeter() << endl;
    cout << "Oroin koordinatuud :" << endl;
    cout << "(" <<  getX1()<< "," << getY1() << ")" << endl;
    cout << "(" <<  getX2()<< "," << getY2() << ")" << endl;
    cout << "(" <<  getX3()<< "," << getY3() << ")" << endl;
    cout << endl;
}
void Square :: print()
{
    cout << "Ner :" << getName() << endl;
    cout << "Taliin urt :" << getA() << endl;
    cout << "Talbai :" << Area() << endl;
    cout << "Perimeter :" << Perimeter() << endl;
    cout << "Oroin koordinatuud :" << endl;
    cout << "(" <<  getX1()<< "," << getY1() << ")" << endl;
    cout << "(" <<  getX2()<< "," << getY2() << ")" << endl;
    cout << "(" <<  getX3()<< "," << getY3() << ")" << endl;
    cout << "(" <<  getX4()<< "," << getY4() << ")" << endl;
}
/**
@goal   parametreer avsan haygan huvisagchdiig hoorond n utgiig n solino
@param  *a-haygan huvisagch
@param  *b-haygan huvisagch
**/
void swap(TwoDShape **a, TwoDShape **b)
{
    TwoDShape *temp = *b;
    *b = *a;
    *a = temp;
}
/**
@goal   parametreer avsan husnegtiin elementiig eremblene
@param  TwoDShape* a[] haygan object
@param  n elementiin too
**/
void SortByArea(TwoDShape* a[], int n)
{
    int i, j;
    for (i = 0; i < n-1; i++)
        for (j = 0; j < n - i - 1; j++)
            if (a[j] -> Area() > a[j + 1] -> Area())
                swap(a[j], a[j + 1]);

}

int main()
{
    string name;
    int c, t, i = 0,j = 0,f = 0, r = 0;
    float a, x, y;
    TwoDShape **pA;
    pA = new TwoDShape *[60];
    Triangle gurvaljin[20];
    Circle toirog[20];
    Square kv[20];
    while(true)
	{
        cout << "1: Circle\t 2: Square\t 3: Triangle\t 4: Print\t 5: Sort by Area\t 6: exit" << endl;
        cin >> t;
        switch(t)
		{
            case 1:
                cout << "Ner : " << endl;
                cin >> name;
                cout << "Toirgiin radius : "<< endl;
                cin >> a;
                cout << "Toirgiin tuviin koordinat x y : "<< endl;
                cin >> x >> y;
                toirog[i].setName(name);
                toirog[i].setR(a);
                toirog[i].setX1(x);
                toirog[i].setY1(y);
                pA[r] = &toirog[i];
                r++;
                i++;
                break;
            case 2:
                cout << "Ner : " << endl;
                cin >> name;
                cout << "Square-iin taliin urt :" << endl;
                cin >> a;
                cout << "Square-iin zuun deed oroin koordinat x y :" << endl;
                cin >> x >> y;
                kv[j].setName(name);
                kv[j].setA(a);
                kv[j].setX1(x);
                kv[j].setY1(y);
                x = x + a;
                kv[j].setX2(x);
                kv[j].setY2(y);
                y = y - a;
                kv[j].setX3(x);
                kv[j].setY3(y);
                x = x - a;
                kv[j].setX4(x);
                kv[j].setY4(y);
                pA[r] = &kv[j];
                r++;
                j++;
                break;
            case 3:
                cout << "Ner :" << endl;
                cin >> name;
                cout << "Guraljnii taliin urt :" << endl;
                cin >> a;
                cout << "Guraljnii deed oroin koordinat x y :" << endl;
                cin >> x >> y;
                gurvaljin[f].setName(name);
                gurvaljin[f].setA(a);
                gurvaljin[f].setX1(x);
                gurvaljin[f].setY1(y);
                x = x + a / 2;
                y = y - (sqrt(3) * a) / 2;
                gurvaljin[f].setX2(x);
                gurvaljin[f].setY2(y);
                x = x - a;
                gurvaljin[f].setX3(x);
                gurvaljin[f].setY3(y);
                pA[r] = &gurvaljin[f];
                r++;
                f++;
                break;
            case 4:
                for(c = 0; c < r; c++)
                    pA[c] -> print();
                break;
            case 5:
                SortByArea(pA, r);
                cout << "Success" << endl;
                break;
            default :
                return 0;
        }
    }
}
