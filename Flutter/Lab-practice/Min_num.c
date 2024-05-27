//WAP to find minimum number from given three number
#include<stdio.h>
//global section
int main()
{ 
	int a,b,c;	//creat the variable
	
	printf("enter three nunmber:"); //to get the value
	scanf("%d %d %d",&a,&b,&c);		//to store the value
	
	if(a<b)		//condition
	{ 
		if(a<c)
		{
			printf("\n%d is min",a);
		}
		else
		{
			printf("\n%d is min",c);
		}
	}
	else
	{
		if(b<c)
		{
			printf("\n%d is min",b);
		}
		else
		{
			printf("\n%d is min",c);
		}
	}
	return 0;
}
