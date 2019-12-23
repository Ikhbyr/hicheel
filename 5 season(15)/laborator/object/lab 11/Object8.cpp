#include<iostream>
#include <string>
#include <vector>
using namespace std;
struct date{
	int day;
	int month;
	int year;
};
class Person{
	public:
		string Name;
		string SSNum;
		int Age;
		Person(){
			Name = "name";
			SSNum = "11";
			Age = 16;
		}
		string getName(){
			return Name;
		}
		string getSSNum(){
			return SSNum;
		}
		int getAge(){
			return Age;
		}
		void setName(string newName){
			Name = newName;
		}
		void setSSNum(string newSSNum){
			SSNum = newSSNum;
		}
		void setAge(int newAge){
			Age = newAge;
		}
};
class Spouse : public Person{
	private:
		struct date AnniversaryDate;
	public:
		Spouse(){
			AnniversaryDate.day = 11;
			AnniversaryDate.month = 11;
			AnniversaryDate.year = 11;
		}
		struct date getAnniversaryDate(){
			return AnniversaryDate;
		}
		void setAnniversaryDate(struct date newDate){
			AnniversaryDate = newDate;
		}
};
class Child : public Person{
	private:
		string FavoriteToy;
	public:
		Child(){
			FavoriteToy = "null";
		}
		string getFavoriteToy(){
			return FavoriteToy;
		}
		void setFavoriteToy(string newToy){
			FavoriteToy = newToy;
		}
};
class Division{
	private:
		string DivisionName;
	public:
		Division(){
			DivisionName = "null";
		}
		Division(string divs){
			DivisionName = divs;
		}
		string getDivisionName(){
			return DivisionName;
		}
		void setDivisionName(string newName){
			DivisionName = newName;
		}
};
class JobDescription{
	private:
		string Description;
	public:
		JobDescription(){
			Description = "null";
		}
		JobDescription(string desc){
			Description = desc;
		}
		string getDescription(){
			return Description;
		}
		void setDescription(string newD){
			Description = newD;
		}
};
class Employee : public Person{
	private:
		string CompanyID;
		string Title;
		struct date StartDate;
		Spouse *sp;
		vector<Child>chld;
		Division dv;
		vector<JobDescription> jd;
	public:
		string getCompanyID(){
			return CompanyID;
		}
		string getTitle(){
			return Title;
		}
		struct date getStartDate(){
			return StartDate;
		}
		void setJD(JobDescription dev){
			jd.push_back(dev);
		}
		void setDivision(Division dev){
			this->dv = dev;
		}
		void setSpouse(Spouse dev){
			this->sp = &dev;
		}
		void setChild(Child dev){
			chld.push_back(dev);
		}
		void setStartDate(struct date newDate){
			StartDate = newDate;
		}
		void setTitle(string newTitle){
			Title = newTitle;
		}
		void printdata(){
			cout<<this->Age<<" "<<getCompanyID()<<" "<<Name<<" "<<StartDate.day<<" "<<StartDate.month<<" "<<StartDate.year<<dv.getDivisionName()<<endl;
			cout<<sp->getName();
			cout<<"huuhed"<<endl;
			for(int i = 0;i<chld.size();i++){
				Child nf = chld[i];
				cout<<nf.getName()<<endl;
			}
			cout<<"Jobdesc"<<endl;
			for(int i = 0;i<jd.size();i++){
				JobDescription nf = jd[i];
				cout<<nf.getDescription()<<endl;
			}
		}
};
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
