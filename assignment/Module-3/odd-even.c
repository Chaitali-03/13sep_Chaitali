//WAP to find number is even or odd using ternary operator
#include<stdio.h>
//global section
 int main()
 {
 	int number;	//creat the variable
 	printf("\n Enter the value: ");	//to get the value
 	scanf("%d",&number); //To get the number

 	if(number == 0)	//condition
 	{
 		printf("\n%d is a neutral number.",number);	//print message
	 }
 	else if(number %2 != 0) //condition
 	{
 		printf("\n%d is a odd number.",number);		//print message
	}
	else
	{
		printf("\n%d is a even number.",number);	//print message
	}
	return 0;	 
 }
