//WAP to print number in reverse order e.g.: number = 64728 ---> reverse = 82746
#include <stdio.h>
//global section
int main()    
{    
int n, reverse=0, remainder;    //creat the variable 
printf("Enter a number: ");    //to get the value  
  scanf("%d", &n);    //to store the value
  while(n!=0)    //condition
  {    
  	//logic for print number in reverse order
     remainder=n%10;    
     reverse=reverse*10+remainder;    
     n/=10;    
  }    
  printf("Reversed Number: %d",reverse);    //print answer 
return 0;  
}
