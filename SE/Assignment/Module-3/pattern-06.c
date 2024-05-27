/* Patterns:
	WAP to print pyramid as shown below
	
	*
	* *
	* * *
	* * * *
	* * * * *
	* * * * * *
	* * * * *
	* * * *
	* * *
	* *
	*
	
*/

#include<stdio.h>
//global section
int main()
{
	int i,j;	//creat variable
	for(i=1;i<6;i++)	//condition
	{
		for(j=1;j<=i;j++)	//nested for loop
		{
			printf("* ");	//print message	
		}
		printf("\n");	//\n for new line
	}	
	for(i=1;i<=6;i++)	//outer loop is used for row
	{
		for(j=6;j>=i;j--)	//inner loop is used for column
		{
			printf("* ");
		}
		printf("\n");
	}
	return 0;
}

