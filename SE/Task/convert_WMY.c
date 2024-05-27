//Take the no of days from the user and convert it into no of (week,month,year).
#include<stdio.h>
//global section
int main()
{
	float day,week,month,year;	//creat variable
	
	printf("Enter the number of days:");	//for get the value
	scanf("%f",&day);	//for store the value
	
	week=day/7;		//logic to convert week from days
	month=day/30;	//logic to convert month from days
	year=day/365;	//logic to convert year from days
	
	printf("\nweek:%.1f",week);		//print answer
	printf("\nmonth:%.1f",month);
	printf("\nyear:%.1f",year);
	
	return 0;
}
