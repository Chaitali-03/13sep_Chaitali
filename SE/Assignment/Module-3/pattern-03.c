/* Patterns:
	WAP to print pyramid as shown below
	
	      *
	    * * *
	  * * * * *
	* * * * * * *
  * * * * * * * * *
	
*/

#include<stdio.h>
//global section
int main()
{
	int i,j,k;	//creat variable
	for(i=0;i<=5;i++)	//outer loop is used for row , condition
	{
		for(k=6;k>=i;k--)
		
		printf("  ");
	}
	{
		for(j=0;j<=i;j++)
		
		printf("* ");
	}
	{
		for(j=1;j<=i;j++)	//inner loop is used for column , nested for loop
		
		printf("* ");	//print message	
		printf("\n");		//\n for new line
	}

	return 0;
}
