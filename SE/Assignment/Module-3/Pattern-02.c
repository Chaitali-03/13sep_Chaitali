/* Patterns:
	WAP to print pyramid as shown below
	
	A
	B C
	D E F
	G H I J
	K L M N O
	
*/

#include<stdio.h>
//global section
int main()
{
	int i,j;	//creat variable
	char k=65;	//for ascii value
	for(i=1;i<=5;i++)	//outer loop is used for row , condition
	{
		for(j=1;j<=i;j++)	//inner loop is used for column , nested for loop
		
		printf("%c ",k++);	//print message	
		printf("\n");		//\n for new line
	}

	return 0;
}
