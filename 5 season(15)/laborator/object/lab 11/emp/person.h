#include <iostream>
#include <string>
using namespace std;

#ifndef PERSON_H
#define PERSON_H

class Person {
	private :
		string name;
		string ssnum;
		int age;
	public:
		Person();
		Person(string pname, string pssnum, int page);
		~Person();
		string getName();
		string getSSNum();
		int getAge();
		void setName(string pname);
		void setSSNum(string pssnum);
		void setAge(int page);
};

Person :: Person() {
	name = " ";
	ssnum = " ";
	age = 0;
}

Person :: Person(string pname, string pssnum, int page) {
	name = pname;
	ssnum = pssnum;
	age = page;
}

Person :: ~Person(){
	
}

string Person :: getName() {
	return name;
}

string Person :: getSSNum(){
	return ssnum;
}

int Person :: getAge(){
	return age;
}

void Person :: setName(string pname){
	name = pname;
}

void Person :: setSSNum(string pssnum){
	ssnum = pssnum;
}

void Person :: setAge(int page){
	age = page;
}

#endif 
