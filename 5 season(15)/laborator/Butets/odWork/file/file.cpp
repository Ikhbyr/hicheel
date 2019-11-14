#include<iostream>
#include <fstream>
#include <cstdlib>
#include <string.h>
using namespace std;

main(){
    fstream file("file.txt");
    string a;
    char b[1];
    cout<<"file-s unshij awah\n";
    while(file>>a){
        cout<<a<<" ";
    }
    ofstream bichih;
    bichih.open("file.txt");
    bichih<<"SEAS";
    bichih.close();
    file.close();
}
