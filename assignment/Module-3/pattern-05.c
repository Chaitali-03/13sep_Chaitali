/* Patterns:
	WAP to print pyramid as shown below
	
	A
	A B
	A B C
	A B C D
	A B C D E
	
*/

#include<stdio.h>
//global section
int main()
{
	int i,j;	//creat variable
	char k=65;	//for ascii value
	for(i=0;i<5;i++)	//outer loop is used for row , condition
	{
		for(j=0;j<=i;j++)	//inner loop is used for column , nested for loop
		{
		printf("%c ",k + j);	//print message	
		}	
	printf("\n");		//\n for new line
	} 
	return 0;
}
