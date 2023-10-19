//Take the meter and conver it into feet.
#include<stdio.h>
//global section
int main()
{
	float meter,feet;	//creat variable
	
	printf("Enter the value of meter:");	//for get the value
	scanf("%f",&meter);	//for store the value
	
	feet=meter*3.281;	//formula of convert meter to feet.
	
	printf("\nfeet:%.1f",feet);	//print answer
	
	return 0;
}

