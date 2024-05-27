//WAP to find previous and next year age from given age
#include<stdio.h>
//global section
int main()
{
	int age,prev,next;	//creat the variable
	
	printf("enter your current age:");	//to get the value
	scanf("%d",&age);	//to store the value
	
	prev = --age;	//unary operator (decrement) 
	next = ++age;	//unary operator (increment) 
	next = ++age;
	
	printf("your prev year age is %d \n",prev);	//print previous year age
	printf("your next year age is %d \n",next);	//print next year age
	
	return 0;
	
}
