#include<iostream>
#include<string>
#include<vector>
#include "date.h"

#include "person.h"
#include "spouse.h"
#include "child.h"
#include "jobDescription.h"
#include "division.h"

#ifndef EMPLOYEE_H
#define EMPLOYEE_H

using namespace std;

class Employee : public Person{
	private :
		string companyID;
		string title;
		Date startDate;
		
		Spouse *spouse;
		vector<Child *> children;
		Division *division;
		vector<JobDescription *> jobs;
	public :
		
		Employee();
		Employee(string pname, string pssnum, int page, string id, string s, int m, int d, int y);
		Employee(Division * div, JobDescription * job);
		~Employee();
		
		string getCompanyID();
		string getTitle();
		Date getStartDate();
		
		Division * getDivision();
		JobDescription ** getJobs();
		Spouse * getSpouse();
		Child** getChildren();
		
		void setCompanyID(string id);
		void setTitle(string s);
		void setStartDate(int m, int d, int y);
		
		void setDivision(Division * div);
		void addJob(JobDescription * job);
		void setSpouse(Spouse * sp);
		void addChild(Child * ch);
		
		void print();
};
Employee :: Employee(){
	companyID = " ";
	title = " ";
	
	Division div(" ");
	division = &div;
	
	JobDescription job(" ");
	jobs.push_back(&job);
	
	div.setEmployee(this);
	job.setEmployee(this);
	spouse = NULL;
	children.clear();
}

Employee :: Employee(string pname, string pssnum, int page, string id, string s, int m, int d, int y) 
	: Person (pname, pssnum, page){
		companyID =id;
		title = s;
		startDate.month = m;
		startDate.day = d;
		startDate.year = y;
		
		Division divv(" ");
		divv.setEmployee(this);	
		division = &divv;

		spouse = NULL;
		children.clear();
	}
	
Employee :: Employee(Division * div, JobDescription * job){
	companyID = " ";
	title = " ";
	div->setEmployee(this);
	job->setEmployee(this);
	division = div;
	jobs.push_back(job);
	
	spouse = NULL;
	children.clear();
}

Employee :: ~Employee(){
	
}

string Employee :: getCompanyID(){
	return companyID;
}

string Employee :: getTitle(){
	return title;
}

Date Employee :: getStartDate(){
	return startDate;
}

Division * Employee :: getDivision(){
	return division;
}
		
JobDescription ** Employee :: getJobs(){
	return jobs.data();
}

Spouse * Employee :: getSpouse(){
	return spouse;
}

Child** Employee :: getChildren(){
	return children.data();
}

void Employee :: setCompanyID(string id){
	companyID = id;
}

void Employee :: setTitle(string s){
	title = s;
}

void Employee :: setStartDate(int m, int d, int y){
	startDate.month = m;
	startDate.day = d;
	startDate.year = y;
}

void Employee :: setDivision(Division * div){
	div->setEmployee(this);
	division = div;
}

void Employee :: addJob(JobDescription * job){
	job->setEmployee(this);
	jobs.push_back(job);
}

void Employee :: setSpouse(Spouse * sp){
	sp->setEmployee(this);
	spouse = sp;
}

void Employee :: addChild(Child * ch){
	ch->setEmployee(this);
	children.push_back(ch);
}

void Employee :: print(){
	cout<< "name : " << this->getName() << "    ssnum : " << this->getSSNum() <<
	       "   age : " << this->getAge() << "\n\t companyID : " << this->getCompanyID() <<
		   "   start date : " ;
		    this->getStartDate().display1();
	cout  << "  title : " << this->getTitle() <<
		   "\n\t divition : " << this->division->getDivisionName();
	
	cout << "    jobs : {" ;   
	for(int i = 0 ; i < this->jobs.size(); i++) {
		cout << "\n\t\t\t\t\t";
		cout << this->jobs[i]->getDescription();
	}
	cout << " }   ";
	
	
	cout << "\n\t Spouse : " << this->spouse->getName() << "   spouse date : " ;
	this->spouse->getAnniversaryDate().display1();
	
	cout << "     Children : {";
	for(int i = 0 ; i < this->children.size(); i++) {
		cout << "\n\t\t\t\t\t\t\t\t";
		cout << this->children[i]->getName() << "   " << this->children[i]->getAge() << "    " << this->children[i]->getFavoriteToy();
	}
	cout << " }   ";
	
	cout << endl << endl;	    
}

#endif
