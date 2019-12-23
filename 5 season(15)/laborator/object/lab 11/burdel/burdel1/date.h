
#include <cassert> //lets us use assertions in C ++
#include<iostream>
using namespace std;

#ifndef DATE_H
#define DATE_H
class Date
{
public:
    int month;
    int day;
    int year;
    Date();
    Date(int month,int day,int year);
    void display1();
    void display2();
    void increment();
    
    Date &operator=(const Date &T);
};

Date::Date()
{
    month = 1;//default month value
    day = 1;//default day value
    year = 2000;//default year value
}
//postcondition: a Date with a month, day and year has been created

//precondition: Date will check if any of the conditions have been violated
              
Date::Date(int Month,int Day,int Year)
{
    if((Month < 1||Month > 12)||(Day < 1||Day > 31)||(Year < 1900||Year > 2020))
    {
        std::cout<<"Invalid"<<std::endl;

    }
    else
    {
        month = Month;
        day = Day;
        year = Year;
    }
}
//postcondition: Date checked that the code does not violate any of the parameters

//precondition: Day will have been incremented by 1
void Date::increment()
{
    //month += 1;
    //assert(month >= 1 && month <= 12);
    day += 1;
    assert(day >= 1 && day <= 31);
    if(month == 2 && day == 28 || day == 29)
    {
      if(year % 4 || year % 400)
       {
	 std::cout<<"Thats a Leap Year"<<std::endl;
	 //month += 1;
	 day += 1 ;
	 //year++;
	 assert(day >= 1 && day <= 31);
	 assert(month >= 1 && month <= 12);
       }
     }
    
}
//postcondition: Day has been incremented by 1

void Date::display1()
{
    std::cout<<month<<'/'<<day<<'/'<<year;
}
//postcondition: Date has been displayed in number format

void Date::display2()
{
    string Month;
    switch(month)
    {
        case 1:
            Month="January";
            break;

        case 2:
            Month="February";
            break;

        case 3:
            Month="March";
            break;

        case 4:
            Month="April";
            break;

        case 5:
            Month="May";
            break;

        case 6:
            Month="June";
            break;

        case 7:
            Month="July";
            break;

        case 8:
            Month="August";
            break;

        case 9:
            Month="September";
            break;

        case 10:
            Month="October";
            break;

        case 11:
            Month="November";
            break;

        case 12:
            Month="December";
            break;
    }

    std::cout<<Month<<'/'<<day<<'/'<<year<<std::endl;
}

Date &Date::operator=(const Date &T) {
    month = T.month;
    day = T.day;
    year = T.year;
    return *this;
}

#endif //DATE_DATE
 
