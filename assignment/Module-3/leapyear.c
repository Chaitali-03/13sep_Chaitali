//WAP to check if the given year is a leap year or not.
#include<stdio.h>
//global section
int main()
{
	int year;	//creat variable
	printf("Enter year:");		//for get the value	
	scanf("%d",&year);	//for store the value
	
	if(year%4==0)	//condition
	{
		printf("%d is a leap year.",year);	//print answer
	}
	else
	{
		printf("%d is not a leap year.",year);	//print answer
	}
	return 0;
}
