//WAP to find simple interest
#include<stdio.h>
//global section
int main()
{
	int p,r,t,si;	//to creat variable
	
	printf("Enter value of principal amount:");	//to get the amount
	scanf("%d",&p);		//to print the amount
	printf("Enter value of interest rate:");
	scanf("%d",&r);	
	printf("Enter value of time:");
	scanf("%d",&t);
	
	si=(p*r*t)/100;	//simple interest calculation
	
	printf("your simple interest is:%d",si);	//print simple interest 
	
	return 0;
}
