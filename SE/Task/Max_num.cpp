//WAP to find maximum number from given three number
#include<stdio.h>
//global section
int main()
{ 
	int a,b,c;	//creat the variable
	
	printf("enter three nunmber:"); //to get the value
	scanf("%d %d %d",&a,&b,&c);		//to store the value
	
	if(a>b)		//condition
	{ 
		if(a>c)
		{
			printf("\n%d is max",a);
		}
		else
		{
			printf("\n%d is max",c);
		}
	}
	else
	{
		if(b>c)
		{
			printf("\n%d is max",b);
		}
		else
		{
			printf("\n%d is max",c);
		}
	}
	return 0;
}
