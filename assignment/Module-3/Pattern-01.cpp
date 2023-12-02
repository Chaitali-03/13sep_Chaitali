/* Patterns:
	WAP to print pyramid as shown below
	
	1
	1 0
	1 0 1
	1 0 1 0 
	1 0 1 0 1
	
*/

#include<stdio.h>
//global section
int main()
{
	int i,j;	//creat variable
	for(i=1;i<=5;i++)	//outer loop is used for row , condition
	{
		for(j=1;j<=i;j++)	//inner loop is used for column , nested for loop
		
		printf("%d ",j%2);	//print message	
		printf("\n");	//\n for new line
	}
	
	return 0;
}

