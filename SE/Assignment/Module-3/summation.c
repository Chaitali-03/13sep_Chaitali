//Write a program make a summation of given number (E.g., 1523 Ans: -11).

#include <stdio.h>

int main()
{
	int num,lastdigit = 0;
	
	printf("enter any number:");
	scanf("%d",&num);
	
	while(num>0)
	{
		lastdigit = lastdigit + num%10;
	
		num=num/10;
	}	
	printf("summation of given number is :%d",lastdigit);
	
	return 0;
}
