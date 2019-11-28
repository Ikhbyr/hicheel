#include <iostream>
#include <stdlib.h>
using namespace std;
/*
    Matrix class
    int n - matrixiin muriin toog hadgalna
    int m - matrixiin baganii toog hadgalna
    values elementiin haygiig hadgalna
*/
class Matrix
{
private:
    int m, n;
    float **values;
public:
    Matrix(int m=1, int n=1);   //parametrtei baiguulagch
    void print();               //matrixiin elementuudiig hewleh gishuun functs
    void setValues(int row, int col, float x);  //gishuun utgiig onooj uguh set functs
    float getValues(int row, int col);      //tuhain nuden deh elementiin utgiig avch butsaah get functs
    int getRow();   //matrixiin moriin utgiig avch butsaana
    int getCol();   //matrixiin baganii utgiig butsaana
    int setRow();
    int setCol();


/*
    + operatoriig dahin todorhoilson
*/
    Matrix operator+(Matrix& b)
    {
        Matrix temp(n, m);
        for(int i = 0; i<n; i++)    //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                temp.setValues(i,j, getValues(i,j) + b.getValues(i,j));      //matrixiin element bvrt hargalzah b matrixiin element buriig nemj temp iin values hadgalna
            }
        }

        return temp;        //niilberiig hadgalj bui objectiig butsaana
    }

/*
    - operatoriig dahin todorhoilson
*/
    Matrix operator-(Matrix& b)
    {
        Matrix temp(n, m);
        for(int i = 0; i<n; i++)         //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                temp.setValues(i,j, getValues(i,j) - b.getValues(i,j));  //matrixiin element bvrt hargalzah b matrixiin element buriig hasch temp iin values hadgalna
            }
    }

        return temp;     //yalgawriig hadgalj bui objectiig butsaana
    }

/*
    * operatoriig dahin todorhoilson
*/
    Matrix operator*(Matrix& b)
    {
        Matrix temp(n, b.m);
        for(int i=0; i<n; i++)       //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j=0; j<b.m; j++)
            {
                for(int k=0; k<m; k++)
                {
                    temp.values[i][j] = temp.values[i][j] + values[i][k] * b.values[k][j];//ehnii matrixiin mur iin elementuudiig daraagiin matrixiin elementuudeer
                                                                        //urjuulj niilberiig hargalzah mur bagand hadgalna
                }
            }
        }

        return temp;        //urjveriig hadgalj bui objectiig butsaana
    }


/*
    = operatoriig dahin todorhoilson
*/
    operator=(const Matrix &b)
    {
        n = b.n;
        m = b.m;
        for(int i = 0; i<n; i++)         //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                values[i][j] = b.values[i][j];      //b matrixiin element buriig a matrixiin hargalzah nudend hadgalna
            }
        }
    }

/*
    + operatoriig dahin todorhoilson
*/
    Matrix operator+(float b) //M=M+12.5(float)
    {
        Matrix temp(n, m);
        for(int i = 0; i<n; i++)         //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                temp.setValues(i,j, this->getValues(i,j) + b);   //matrixiin element bur deer b bodit toog nemj temp hadgalna
            }
        }

        return temp;    //niilberiig hadgalj bui objectiig butsaana
    }

/*
    ++ operatoriig dahin todorhoilson
*/
    void operator++(void)
    {
        for(int i = 0; i<n; i++)         //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                setValues(i,j, getValues(i,j)+1);      //matrixiin element bur deerhi utgiig negeer nemegduulne
            }
        }
    }

/*
    -- operatoriig dahin todorhoilson

*/
    void operator--(void)
    {
        for(int i = 0; i<n; i++)         //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                setValues(i,j, getValues(i,j)-1);       //matrixiin element bur deerhi utgiig negeer horogduulna
            }
        }
    }


/*
    += operatoriig dahin todorhoilson

*/
    void operator+=(Matrix& b)
    {
        for(int i = 0; i<n; i++)         //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                setValues(i,j,getValues(i,j)+b.getValues(i,j));   //matrixiin element bvr deer hargalzah b matrixiin elementiig nemj hadgalna
            }
        }

    }

/*
    -= operatoriig dahin todorhoilson
*/
    void operator-=(Matrix& b)
    {
        for(int i = 0; i<n; i++)         //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j = 0; j<m; j++)
            {
                setValues(i,j,getValues(i,j)-b.getValues(i,j));      //matrixiin element bvrees hargalzah b matrixiin elementiig hasch hadgalna
            }
        }

    }

    float* operator[](int i)
    {
        return values[i];
    }

/*
    *= operatoriig dahin todorhoilson
*/
    void operator*=(Matrix &b)
    {
        Matrix temp(n, b.m);

        for(int i=0; i<n; i++)       //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j=0; j<b.m; j++)
            {
                temp.values[i][j] = 0;
                for(int k=0; k<m; k++)
                {
                    temp.values[i][j] = temp.values[i][j] + values[i][k] * b.values[k][j];  //ehnii matrixiin mur iin elementuudiig daraagiin matrixiin elementuudeer
                                                                        //urjuulj niilberiig hargalzah mur bagand hadgalna
                }
            }
        }

        for(int i = 0; i < n; ++i){
            delete [] this->values[i];
        }
        delete [] this->values;


        this -> values = new float *[n];
        for (int i = 0; i < n; ++i)
            this -> values[i]= new float[b.m];

       this->m = b.m;


        for(int i=0; i<n; i++)
        {
            for(int j=0; j<b.m; j++)
            {

                setValues(i,j,temp.getValues(i,j));           //tur object dahi elementuudiin utgiig this->matrixt huulna
            }
        }
    }
/*
    ~ operatoriig dahin todorhoilson
*/
    void operator~(void)
    {
        Matrix temp(m, n);
        for(int i=0; i<m; i++)       //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j=0; j<n; j++)
            {
                temp.setValues(i,j,getValues(j,i));       //elementuudiin bairlah nudiig solij temp objectiin husnegted hadgalna
            }
        }

        for(int i = 0; i < n; ++i){
            delete [] this->values[i];
        }
        delete [] this->values;


        this -> values = new float *[m];
        for (int i = 0; i < n; ++i)
            this -> values[i]= new float[n];

        int t;
        t = this->m;
        this->m = this->n;
        this->n=t;


        for(int i=0; i<n; i++)      //matrixiin gishuun burluu handah dawhar dawtalt
        {
            for(int j=0; j<m; j++)
            {
                setValues(i,j,temp.getValues(i,j));       //bairiig solison elementuudiig this->values t huulna
            }
        }
    }


    ~Matrix();      //ustgagch functs
};

/* Parametrtei baiguulagch
@param c - matrixiin baganii too
@param r - matrixiin muriin too
*/
Matrix::Matrix(int c, int r)
{
    m=c;
    n=r;
    values = new float *[n];        //matrixiin muriin hemjeegeer sanah oi nuutslunu
    for (int i = 0; i < n; ++i)
        values[i]= new float[m];    //matrixiin mur bur deh baganii hemjeegeer sanah oi nuutslunu
}

void Matrix::print()
{
    for(int i = 0; i < getCol(); i++)
    {
        for(int j = 0; j < getRow(); j++)
        {
            cout << values[i][j] << " ";        //matrixiin elementuudiig hewlene
        }
        cout << "\n";
    }
}

/*
    setValues() -  utga onooh functs
    @param int r -  muriin toog hadgalna
    @param int c - baganii toog hadgalna
    @param float x  - tuhain mur baganad hadgalah utgiig hadgalna
*/
void Matrix::setValues(int r, int c, float x)
{
    values[r][c] = x;       //r mur c baganad hadgalah utgiig hadgalna
}

/*
    getValues() -  mur bagana dahi elementiig butsaah
    @param int r -  muriin toog hadgalna
    @param int c - baganii toog hadgalna
*/
float Matrix::getValues(int r, int c)
{
    return values[r][c];       //r mur c bagana dahi utgiig butsaana
}
/*
    getCol() muriin toog butsaana
*/
int Matrix::getCol()
{
    return n;
}
/*
    getRow() baganii toog butsaana
*/
int Matrix::getRow()
{
    return m;
}


int Matrix::setRow()
{
    return m;
}


//Sanah oig chuluulnu
Matrix::~Matrix()
{

    for(int i = 0; i < n; ++i)
        delete [] values[i];
    delete [] values;
}




/*
    inputElement() garaas utga unshin objectod hadgalna
    @param int m - baganii dugaar
    @param int n - moriin dugaar
    @param Matrix &m - objectiin hayg
*/
void inputElement(int m, int n, Matrix &mat)
{
    int num;
    for (int i=0; i < n; i++)
    {
        for (int j=0; j < m; j++)
        {
            cin >> num;
            mat.setValues(i,j,num);     //matrixiin j bagana , i murund num utgiig hadgalna
        }
    }
}



int main()
{
    int m, n, cmd;

    cout<<"Operator list:" << endl
        << "\t1. +" << endl
        << "\t2. =" << endl
        << "\t3. *" << endl
        << "\t4. +" << endl
        << "\t5. -" << endl
        << "\t6. ++" << endl
        << "\t7. --" << endl
        << "\t8. +=" << endl
        << "\t9. -=" << endl
        << "\t10. *=" << endl
        << "\t11. ~" << endl
        << "\t12. [][]" << endl;

    while(1)
    {

        cout<< "cmd :  ";
        cin >> cmd;         //commandiig garaas unshina
        if(cmd==1)  //cmd utga 1 baival matrixiig nemeh uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;          //uusgeh matrix iin bagana bolon muriin toog garaas unshina

            Matrix a(m,n), b(m,n), c(m,n);      //object uusgene
            inputElement(m,n,a);                //a matrixiin elementiig garaas unshina
            cout<< "\tA matrix \n";
            a.print();                          //a matrixiin elementiig hewlene
            inputElement(m,n,b);                //b matrixiin elementiig garaas unshina
            cout<< "\tB matrix \n";
            b.print();                          //b matrixiin elementiig hewlene

            c = a+b;                            // a b matrixiin niilberig olno
            cout<< "\tC matrix \n";
            c.print();                          // c matrixiig hewlene
        }
        else if(cmd == 2)       //cmd utga 2 baival matrixd utga onooh uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;                   //uusgeh matrix iin bagana bolon muriin toog garaas unshina

            Matrix a(m,n), b(m,n);          //object uusgene
            inputElement(m,n,a);            //a matrixiin elementiig garaas unshina
            cout<< "\tA matrix \n";
            a.print();                      //a matrixiin elementiig hewlene
            b=a;                            //a matrixiig b matrixt huulna
            cout<< "\tB matrix \n";
            b.print();                      //b matrixiin elementiig hewlene
        }
        else if(cmd ==3)        //cmd utga 3 baival matrixiig urjih uildel hiine
        {
            int m1, n1;
            cout<< "A Bagana mor: \n";
            cin >> m >> n;
            cout<< "B Bagana mor: \n";
            cin >> m1 >> n1;
            if(m==n1)
            {
                Matrix a(m,n), b(m1,n1), c(m,n);
                inputElement(m,n,a);
                cout<< "\tA matrix \n";
                a.print();

                inputElement(m1,n1,b);
                cout<< "\tB matrix \n";
                b.print();

                c = a*b;                    // a b matrixiig hoorond ni urjuulj c matrixd utgiig onoono
                cout<< "\tC matrix \n";
                c.print();
            }
            else cout << "Vrjvvleh bolomjgui" <<endl;

        }
        else if(cmd ==4)        //cmd utga 4 baival matrix deer too nemeh uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();
            float num;
            cout<< "N too: \n";
            cin >> num;
            a = a+num;                  //a matrixd num bodit too nemne
            cout<< "\tA matrix \n";
            a.print();
        }
        else if(cmd == 5)       //cmd utga 5 baival matrixiig hasah uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n), b(m,n), c(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();

            inputElement(m,n,b);
            cout<< "\tB matrix \n";
            b.print();

            c = a-b;                    //a matrixaas b matrixiig hasch c matrixt utga onoono
            cout<< "\tC matrix \n";
            c.print();
        }
        else if(cmd == 6)       //cmd utga 6 baival matrixiin utgiig negeer nemegduuleh uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n), b(m,n), c(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();
            ++a;                        //a matrixiin elementuudiin utgiig negeer nemegduulne
            cout<< "\tA matrix \n";
            a.print();
        }
        else if(cmd == 7)       //cmd utga 7 baival matrixiin utgiig negeer horogduulah uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n), b(m,n), c(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();
            --a;                        //a matrixiin elementuudiin utgiig negeer horogduulna
            cout<< "\tA matrix \n";
            a.print();
        }
        else if(cmd == 8)       //cmd utga 8 baival matrixiig nemj ehnii matrixd utga onooh uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n), b(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();

            inputElement(m,n,b);
            cout<< "\tB matrix \n";
            b.print();

            a+=b;                       //a matrix deer b matrixiig nemne
            cout<< "\tA matrix \n";
            a.print();
        }
        else if(cmd == 9)       //cmd utga 9 baival matrixiig hasch ehnii matrixd utga onooh uildel hiine
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n), b(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();

            inputElement(m,n,b);
            cout<< "\tB matrix \n";
            b.print();

            a-=b;                       //a matrixaas b matrixiig hasna
            cout<< "\tA matrix \n";
            a.print();
        }
        else if(cmd == 10)      //cmd utga 10 baival matrixiig urjuulj ehnii matrixd utga onooh uildel hiine
        {
            int m1, n1;
            cout<< "A Bagana mor: \n";
            cin >> m >> n;
            cout<< "B Bagana mor: \n";
            cin >> m1 >> n1;
            if(m==n1)
            {
                Matrix a(m,n), b(m1,n1);
                inputElement(m,n,a);
                cout<< "\tA matrix \n";
                a.print();

                inputElement(m1,n1,b);
                cout<< "\tB matrix \n";
                b.print();

                a*=b;                       //a matrixiig b matrixaar urjuulj urjveriig a matrixd hadgalna
                cout<< "\tA matrix \n";
                a.print();
            }
            else cout << "Vrjvvleh bolomjgui" <<endl;
        }
        else if(cmd == 11)      //cmd utga 11 baival matrixiig horwuulne
        {
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();

            ~a;                         //a matrixiig horwuulne
            cout<< "\tA matrix \n";
            a.print();
        }
        else if(cmd == 12)
        {
            int i, j;
            cout<< "Bagana mor: \n";
            cin >> m >> n;

            Matrix a(m,n);
            inputElement(m,n,a);
            cout<< "\tA matrix \n";
            a.print();
            cin >> i >> j;
            cout << a[i][j]<<endl;
        }
    }
}
