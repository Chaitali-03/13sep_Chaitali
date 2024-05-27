//WAP to print pyramid as shown below
/*

*
 *
* *
 * *
* * *
 * *
* *
 *
*

*/

#include<stdio.h>
//global section
int main()
{
	int i,j;	//creat variable
	for(i=1;i<3;i++)	//condition
	{
		for(j=1;j<=i;j++)	//nested for loop
		{
			printf("* ");	//print message	
		}
		printf("\n");	//\n for new line
		for(j=1;j<=i;j++)
		{
			printf(" *");		
		}
		printf("\n");
	}	
	for(i=1;i<=3;i++)	//outer loop is used for row
	{
		for(j=3;j>=i;j--)	//inner loop is used for column
		{
			printf("* ");
		}
		printf("\n");
		for(j=2;j>=i;j--)
		{
			printf(" *");
		}
		printf("\n");
	}
	return 0;
}
