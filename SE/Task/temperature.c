//take Celsius from the user and convert it into to fahrenheit.
#include<stdio.h>
//global section
int main()
{
	float cel,far;	//creat variable
	printf("Enter temperatre in Celsius:");	//for get the value
	scanf("%f",&cel);	//for store the value
	
	far=(cel * 9/5) + 32;	//formula of convert Celsius to fahrenheit.
	
	printf("temperatre in fahrenheit is:%.1f",far);	//print answer
	
	return 0;
}
