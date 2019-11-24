#include <iostream>
#include <math.h>
#define PI 3.14159265
using namespace std;
main(){
    int a=9, b=3,n;
    double x, ret, val;
    x = 0.9;
    val = 180.0 / PI;
    ret = acos(x) * val;
    cout<<"arccos "<<x<<" ni "<<ret<<"degree\n";
    x = 60.0;
    val = PI / 180.0;
    ret = cos( x*val );
    cout<<"cos "<<x<<" ni "<<ret<<"degree\n";
    cout<<a<<"-g "<<b<<"-iin zeregt dewshuuleh: "<<pow(a,b)<<endl;
    cout<<a<<" Yzguur: "<<sqrt(a)<<endl;
    x = 2.7;
    ret = log(x);
    cout<<"log("<<x<<") = "<<ret<<endl;
    x = 0.65;
    n = 3;
    ret = ldexp(x ,n);// x-g 2^n toogoor urjine
    cout<<x<<" * 2^"<<n<<" = "<<ret<<endl;
    int e;
    x=1024;
    ret= frexp(x, &e);
    /*x toonoos hamaaran ret ni 0,5-d
    haritsanguigaar oirhon baih tohioldliig
    awch e-g 2tiin zereg bolgoj uzdeg*/
    cout<<x<<" = "<<ret<<" * 2^"<<e<<endl;
    cout<<"The exponential value of "<<0<<" is "<<exp(0)<<endl;
    x=10000;
    ret = log10(x);
    cout<<"log10("<<x<<") = "<<ret<<endl;
    x = 8.123456;
    ret = modf(x, &val);
    cout<<x<<" butarhai ni "<<ret<<endl;
    cout<<x<<" buhel ni "<<val<<endl;
    x=2.3;
    cout<<x<<" -s ih buhel too ni "<<ceil(x)<<endl;
    x=2.8;
    cout<<x<<" -s baga buhel too ni "<<floor(x)<<endl;
    x=-324;
    cout<<x<<" eyreg too ni "<<fabs(x)<<endl;
}
