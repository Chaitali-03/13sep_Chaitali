//Write a program to make Simple calculator (to make addition, subtraction, multiplication, division and modulo)
#include<stdio.h>
//global section
int main()
{
	int a,b,add,sub,mul,mod; //creat the variable
	float div;
	printf("enter value of a:"); //for print the message
	scanf("%d",&a);   //to store the value
	printf("enter value of b:");
	scanf("%d",&b);	
	
	add=a+b; //addition
	sub=a-b; //subtrection
	mul=a*b; //multiplication
	div=(float)a/(float)b; //division
	mod=a%b; //modulo
		
	printf("\naddition of a and b is: %d \n",add);     //print addition
	printf("substraction of a and b is: %d \n",sub);   //print subtrection
	printf("multiplication of a and b is: %d \n",mul);  //print multiplication  
	printf("division of a and b is: %.1f \n",div);	    //print division
	printf("modulo of a and b is: %d \n",mod);	     //print modulo
	
	return 0;
}

