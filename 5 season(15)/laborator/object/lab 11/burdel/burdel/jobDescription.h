#include<iostream>
#include<string>

using namespace std;

#ifndef JOBDESCRIPTION_H
#define JOBDESCRIPTION_H

class Employee;

class JobDescription {
	private:
		string description;
		Employee * emp;
	public:
		JobDescription();
		JobDescription(string s);
		~JobDescription();
		
		Employee * getEmployee();
		string getDescription();
		void setEmployee(Employee * e);
		void setDescription(string s);
};

JobDescription :: JobDescription(){
	description = " ";
}

JobDescription :: JobDescription(string s){
	description = s;
}
JobDescription :: ~JobDescription(){
	
}
		
string JobDescription :: getDescription(){
	return description;
}

Employee * JobDescription :: getEmployee(){
	return emp;
}

void JobDescription :: setDescription(string s){
	description = s;
}

void JobDescription :: setEmployee(Employee * e){
	emp = e;
}

#endif
