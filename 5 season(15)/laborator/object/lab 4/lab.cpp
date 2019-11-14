#include<iostream>
#include<string.h>
using namespace std;
//Ajilchin class todorhoiloh
class employee {
    //private handaltiin tuvshintei gishuun ogogdol bolon function
    private:
    int id;
    char name[20];
    char tushaal[20];
    float time;
    float zah_salary();
    public:
    float salary();
    bool increase_time(float i);
    //parametrtei baiguulagch function
    Employee(int id, char name[], char tushaal[], int time){
        id=id;
    	int count=0;
    	//name-d sanah oi nuutsulj baina.
    	for(int i=0;i<strlen(name);i++){
    		count++;
		}
    	name=new char(count);
    	strcpy(name,name);
    	count=0;
    	//tushaal-d sanah oi nuutsulj baina.
    	for(int i=0;i<strlen(tushaal);i++){
    		count++;
		}
    	tushaal=new char(count);
    	strcpy(tushaal,tushaal);
    	time=time;
    }
    //Baiguulagch fuction todorhoiloh
    employee(){
        id=1;
        time=0;
        strcpy(name,"");
        strcpy(tushaal,"zahiral");
    }
    //Ustgagch function todorhoiloh
    ~employee(){
        cout<<"\n Sanah oi choloologdloo";
        delete[] name;
		delete[] tushaal;
    }
    //utga oruuulah
    void setId(int id2) { id=id2; }
	void setName(char name1[]) {
    	strcpy(name,name1);
	}
	void settushaal(char tushaal1[]) {
    	strcpy(tushaal,tushaal1);
	}
	void setTime(int time1) {
	    time=time1;
    }
    //Utga butsaah
	int getId() {
	    return id;
    }
	char* getName() {
	    return name;
    }
	char* gettushaal() {
	    return tushaal;
    }
	int getTime() {
	    return time;
    }
};
void print(employee *emp, int i){
    cout<<emp[i].getId()<<" "<<emp[i].getName()<<" "<<emp[i].gettushaal()<<" "<<emp[i].getTime()<<" "<<emp[i].salary()<<endl;
}
main(){
    int i, n=3,j,bair;
    //Array uusgeh
    employee emp[n];
    //Noots object uusgeh
    employee temp;
    //Utga oruulah heseg
    for(i=0; i<n;i++){
        cout<<i+1<<"-r hun:\n"<<"id: name: tushaal: time: \n";
       int id, time;
 	   char* name=new char[20];
       char* tushaal=new char[10];
       cin>>id>>name>>tushaal>>time;
       emp[i].setId(id);
       emp[i].setName(name);
       emp[i].settushaal(tushaal);
       emp[i].setTime(time);
    }
    //Bubble sort tsalingaar erembleh
    for(i=0; i<n-1;i++){
        for(j=i;j<n-i-1;j++){
            if(emp[j].salary()>emp[j+1].salary()){
                temp=emp[j];
                emp[j]=emp[j+1];
                emp[j+1]=temp;
            }
        }
    }
    //Erembelsnee hevleh
    for(i=0; i<n;i++){
        cout<<"\t"<<i+1<<"-r ajiltan\n";
        print(emp,i);
    }
}
float employee::salary(){
    int res=strcmp(tushaal,"zahiral");
    if(res==0){
        return time*20000+zah_salary();
    }else{
        return time*20000;
    }
}
float employee::zah_salary(){
    return 30000*time;
}
bool employee::increase_time(float i){
    time=time+i;
    if(time>=0 && time<=24){
        true;
    }
    false;
}
