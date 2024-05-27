//WAP to print factorial of given number
#include<stdio.h>  
int main()    
{    
 	int i,fact=1,number;   //creat the variable 
	printf("Enter a number: ");	//to get the value    
	scanf("%d",&number);    //to store the value
	{
    	for(i=1;i<=number;i++)	//condition
		{    
    	fact=fact*i;    //formula for calculate factorial
    	}    
    printf("Factorial of %d is: %d",number,fact);  //print answer  
	}
	return 0;  
}
