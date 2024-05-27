//Swap the two variable without using 3rd variable.
#include<stdio.h>
//global section
int main()
{
	int a,b;	//creat variable
	printf("Enter the value of first variable:");	//for get the value
	scanf("%d",&a);		//for store the value
	printf("Enter the value of second variable:");
	scanf("%d",&b);
	
	a=a+b;	// logic of swapping 
	b=a-b;		
	a=a-b;
	
	printf("\nAfter swapping value of first variable:%d",a);	//print answer
	printf("\nAfter swapping value of second variable:%d",b);
	
	return 0;
}
