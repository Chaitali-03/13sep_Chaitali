/* Patterns:
	WAP to print pyramid as shown below
	
	1
	2  3
	4  5  6
	7  8  9  10
	11 12 13 14 15
	
*/

#include<stdio.h>
//global section
int main()
{
	int i,j,k=1;	//creat variable
	for(i=1;i<=4;i++)	//outer loop is used for row , condition
	{
		for(j=1;j<=i;j++)	//inner loop is used for column , nested for loop
		
		printf("%d  ",k++);	//print message, print double space	
		printf("\n");		//\n for new line
	}
	//This second outer for loop is for print single space 
	for(i=1;i<=1;i++)	//outer loop is used for row , condition
	{
		for(j=1;j<=5;j++)	//inner loop is used for column , nested for loop
		
		printf("%d ",k++);	//print message	
		printf("\n");		//\n for new line
	}
	return 0;
}
