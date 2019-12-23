#include <iostream>
#include <string>

#include "division.h"
#include "jobDescription.h"
#include "child.h"
#include "employee.h"
#include "spouse.h"

using namespace std;

int main() {
	Division div1("div 1"), div2;
	div2.setDivisionName("div 2");
	
	JobDescription job1("job 1"), job2( "job 2"), job21;
	job21.setDescription("job 2.1");
	
	Employee emp1("bat", "ek1", 20, "num1", "title", 1, 1, 2011), emp2(&div2, &job2);
	
	emp1.setDivision(&div1);
	emp1.addJob(&job1);
	
	emp2.setName("dorj");
	emp2.setSSNum("el2");
	emp2.setAge(21);
	emp2.setCompanyID("num1");
	emp2.setTitle("title2");
	emp2.setStartDate(12, 31, 2012);
	emp2.addJob(&job21);
	
	Spouse s1("batmaa", "ss1", 19 , 3, 7, 2010), s2("dorjmaa", "ss2", 20 , 11, 20, 2015);
	emp1.setSpouse(&s1);
	emp2.setSpouse(&s2);
	
	Child b1("bat1", "ekk1", 4, "tobot"), b2("bat2", "ekk2", 3, "barbie"), b3("bat3", "ekk3", 6, "lego"), 
	        a1("dorj1", "ell1", 5, "mega"), a2("dorj2", "ell2", 2, "winks");
	
	emp1.addChild(&b1);
	emp1.addChild(&b2);
	emp1.addChild(&b3);
	
	emp2.addChild(&a1);
	emp2.addChild(&a2);
	
	emp1.print();
	emp2.print();
	
	return 0;
}
