//WAP to convert years into days and days into years
#include<stdio.h>
//global section
int main()
{
	float day,year;	//creat variable
	{
		printf("Enter the number of years:");	//for get the value
		scanf("%f",&year);	//for store the value
	
		day=year*365;	//logic to convert years into days
	
		printf("\nday:%.1f",day);		//print answer
	}
	{
		printf("\n\n\nEnter the number of days:");	//for get the value
		scanf("%f",&day);	//for store the value
	
		year=day/365;	//logic to convert days into years
	
		printf("\nyear:%.1f",year);	//print answer
	}
	return 0;
}
