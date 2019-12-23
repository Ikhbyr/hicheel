#include<iostream>
#include<string>
#include"person.h"
using namespace std;

#ifndef CHILD_H
#define CHILD_H
class Employee;

class Child : public Person {
	private:
		string favoriteToy;
		Employee *emp;
	public:
		Child();
		Child(string pname, string pssnum, int page, string favToy);
		~Child();
		
		string getFavoriteToy();
		Employee * getEmployee();
		void setFavoriteToy(string favToy);
		void setEmployee(Employee * e);
};


Child :: Child(){
	favoriteToy = " ";
}

Child :: Child(string pname, string pssnum, int page, string favToy)
		: Person(pname, pssnum, page){
			favoriteToy = favToy;		
		}
		
Child :: ~Child(){
	
}

string Child :: getFavoriteToy(){
	return favoriteToy;
}

Employee * Child :: getEmployee(){
	return emp;
}

void Child :: setFavoriteToy (string favToy){
	favoriteToy = favToy;
}

void Child :: setEmployee(Employee * e){
	emp = e;
}

#endif
