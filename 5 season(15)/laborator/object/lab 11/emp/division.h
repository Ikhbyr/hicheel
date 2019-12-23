#include<iostream>
#include<string>

#ifndef DIVISION_H
#define DIVISION_H

using namespace std;

class Employee;

class Division {
	private:
		string divisionName;
		Employee * emp;
	public:
		Division();
		Division(string s);
		~Division();
		
		Employee * getEmployee();
		string getDivisionName();
		void setEmployee(Employee * e);
		void setDivisionName(string s);
};

Division :: Division(){
	divisionName = " ";
}

Division :: Division(string s){
	divisionName = s;
}

Division :: ~Division(){
	
}
		
string Division :: getDivisionName(){
	return divisionName;
}

Employee * Division :: getEmployee(){
	return emp;
}

void Division :: setDivisionName(string s){
	divisionName = s;
}

void Division :: setEmployee(Employee * e){
	emp = e;
}

#endif
