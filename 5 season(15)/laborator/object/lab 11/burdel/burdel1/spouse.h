
#include<iostream>
#include "date.h"
#include "person.h"
#ifndef SPOUSE_H
#define SPOUSE_H

class Employee;

class Spouse : public Person{
	private:
		Employee * emp;
		Date anniversaryDate;
	public:
		
		Spouse();
		Spouse(string pname, string pssnum, int page, int m, int d, int y);
		~Spouse();
		
		Employee * getEmployee();
		Date getAnniversaryDate();
		void setEmployee(Employee * e);
		void setAnniversarDate(int m, int d, int y);
};

Spouse :: Spouse(){
	
}

Spouse :: Spouse(string pname, string pssnum, int page, int m , int d , int y)
 : Person (pname, pssnum, page){
	anniversaryDate = Date(m , d, y);
}

Spouse :: ~Spouse() {
	
}

Date Spouse :: getAnniversaryDate(){
	return anniversaryDate;
}

Employee * Spouse :: getEmployee(){
	return emp;
}

void Spouse :: setAnniversarDate(int m, int d, int y){
	anniversaryDate.month = m;
	anniversaryDate.day = d;
	anniversaryDate.year = y;
}

void Spouse :: setEmployee(Employee * e){
	emp = e;
}

#endif
