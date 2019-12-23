#include<iostream>
#include <vector>
using namespace std;
//person yronhii class uusgene
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
//ajiltnii ajilj ehelsen date hadgalna
struct date{
	int day;
	int month;
	int year;
};
//ehner8 nohoriin medeelliig hadgalna
class Spouse : public Person{
	private:
		struct date AnniversaryDate;
	public:
		Spouse(){
			this->AnniversaryDate.day = 11;
			this->AnniversaryDate.month = 11;
			this->AnniversaryDate.year = 2000;
		}
		struct date getAnniversaryDate(){
			return this->AnniversaryDate;
		}
		void setAnniversaryDate(struct date newDate){
			this->AnniversaryDate = newDate;
		}
};
//huuhdiin medeelel hadgalna
class Child : public Person{
	private:
		string FavoriteToy;
	public:
		Child(){
			FavoriteToy = "";
		}
		string getFavoriteToy(){
			return FavoriteToy;
		}
		void setFavoriteToy(string newToy){
			FavoriteToy = newToy;
		}
};
//heltesiin medeelel aguulna
class Division{
	private:
		string DivisionName;
	public:
		Division(){
			DivisionName = "";
		}
		Division(string div){
			this->DivisionName = div;
		}
		string getDivisionName(){
			return this->DivisionName;
		}
		void setDivisionName(string newName){
			this->DivisionName = newName;
		}
};
//Ajliin todorhoiloltnii medeelel
class JobDescription{
	private:
		string Description;
	public:
		JobDescription(){
			Description = "";
		}
		JobDescription(string desc){
			Description = desc;
		}
		string getDescription(){
			return this->Description;
		}
		void setDescription(string newD){
			this->Description = newD;
		}
};
//ajiltnii medeelel hadgalna
class Employee : public Person{
	private:
		string CompanyID;
		string Title;
		struct date StartDate;
		//burdel haritsaa uusgej ogson
		Spouse *sp;
		vector<Child>chld;
		Division dv;
		vector<JobDescription> jd;
	public:
	    //compani id
		string getCompanyID(){
			return CompanyID;
		}
		//
		string getTitle(){
			return Title;
		}
		//ajild orsn ognoo
		struct date getStartDate(){
			return StartDate;
		}
		//ajliin todorhoilolt oruulah
		void setJD(JobDescription dev){
			jd.push_back(dev);
		}
		//heltes oruulah
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

main(){
    JobDescription job[4];
	string c;
	int d;
	struct date Date;
	//uusgesen job objectond utga hiine
	for(int i = 0;i<4;i++){
        cout<<"Ajliin bairnii todorhoiloltoo oruulna uu\n";
		cin>>c;
		job[i].setDescription(c);
	}
	Division df[3];
	//uusgesen df objectond utga hiine
	for(int i = 0;i<3;i++){
		cout<<"Heltesiin neree oruulna uu\n";
		cin>>c;
		df[i].setDivisionName(c);
	}
	Employee emp[1];
	//uusgesen emp objectond utga oruulna
	for(int i = 0;i<1;i++){
		cout<<"Ajiltnii ner"<<endl;
		cin>>c;
		emp[i].setName(c);
		cout<<"Ajilltnii nas"<<endl;
		cin>>d;
		emp[i].setAge(d);
		cout<<"SiSiNum"<<endl;
		cin>>c;
		emp[i].setSSNum(c);
		cout<<"deer oruulsan Division-s songo"<<endl;
		cout<<"1 2 3"<<endl;
		cin>>d;
		emp[i].setDivision(df[d-1]);
		cout<<"jobdescription too"<<endl;
		cin>>d;
		for(;d>0;d--){
			cout<<"Jobdescription"<<endl;
			cin>>c;
			for(int p = 0;p<4;p++){
				if(job[p].getDescription()==c){
					emp[i].setJD(job[p]);
					break;
				}
			}
		}
		cout<<"Spouse 1 0"<<endl;
		cin>>d;
		//ehner nohortei esehiig shalgana
		if(d==1){
			Spouse sps;
			cout<<"nas \n";
			cin>>d;
			sps.setAge(d);
			cout<<"ner \n";
			cin>>c;
			sps.setName(c);
			emp[i].setSpouse(sps);
		}
		cout<<"huuhdiin too"<<endl;
		cin>>d;
		//huuhdiin medeelel oruulna
		for(;d>0;d--){
			Child chld;
			cout<<"ner"<<endl;
			cin>>c;
			chld.setName(c);
			emp[i].setChild(chld);
			}
        cout<<"Ajilj ehelsen ognoo day, month, year\n";
		cin>>Date.day>>Date.month>>Date.year;
		emp[i].setStartDate(Date);
		cout<<"title"<<endl;
		cin>>c;
		emp[i].setTitle(c);
		}

	emp[0].printdata();
}
