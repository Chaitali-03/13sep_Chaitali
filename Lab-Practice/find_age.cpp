#include<stdio.h>
 
int main()
{
	int age,prev,next;
	
	printf("enter your current age:");
	scanf("%d",&age);
	
	prev = --age;
	next = ++age;
	next = ++age;
	
	printf("your prev year age is %d \n",prev);
	printf("your next year age is %d \n",next);
	
	return 0;
	
}
