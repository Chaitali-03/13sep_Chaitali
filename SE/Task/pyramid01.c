//WAP to print pyramid as shown below
/*
      1
    1 2 1
  1 2 3 2 1
1 2 3 4 3 2 1

*/

#include<stdio.h>
//global section
int main()
{
	int i,j,k;	//creat variable
	for(i=1;i<=4;i++)	//outer loop is used for row
	{
		for(k=3;k>=i;k--)	//inner loop is used for column
		{
			printf("  ");
		}
		for(j=1;j<=i;j++)	//condition
		{
			printf("%d ",j);	//print message	
		}
		for(j=i-1;j>=1;j--)
		{
			printf("%d ",j);	
		}
		printf("\n");	//\n for new line
	}
	return 0;
}
