#include<stdio.h>

int main()
{
	int a,b,add,sub,mul,mod;
	float div;
	printf("enter value of a:");
	scanf("%d",&a);   
	printf("enter value of b:");
	scanf("%d",&b);	
	
	add=a+b;
	sub=a-b;
	mul=a*b;
	div=(float)a/(float)b;
	mod=a%b;
		
	printf("\naddition of a and b is: %d \n",add);
	printf("substraction of a and b is: %d \n",sub);
	printf("multiplication of a and b is: %d \n",mul);
	printf("division of a and b is: %.1f \n",div);
	printf("modulo of a and b is: %d \n",mod);
	
	return 0;
}

