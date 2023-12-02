//WAP to print Fibonacci series up to given numbers
#include <stdio.h>
//global section
int main()
{
  int t1 = 0, t2 = 1, nextTerm = 0, n;	//creat the variable 
  printf("Enter a positive number: ");	//to get the value  
  scanf("%d", &n);	//to store the value

  // displays the first two terms which is always 0 and 1
  printf("Fibonacci Series: %d, %d, ", t1, t2);
  nextTerm = t1 + t2;

  while (nextTerm <= n)	//condition
    {
	    printf("%d, ", nextTerm);
	    //logic for calculate and print fibonacci series
	    t1 = t2;
	    t2 = nextTerm;
  	  nextTerm = t1 + t2;
	}

  return 0;
}
