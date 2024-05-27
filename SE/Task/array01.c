//WAP to get value from the user and store it into array matrix.
#include<stdio.h>
//global section
int main()
{
	//	int matrix[3][3]={{1,2,3},{4,5,6},{7,8,9}};
	int matrix[3][3],i,j;	//creat an array
	for(i=0;i<3;i++)	
	{
		for(j=0;j<3;j++)
		{
		printf("Enter the value of array[%d][%d]:",i,j);	//for get the value from user
		scanf("%d",&matrix[i][j]);	//for store the value
	    }
	}
	printf("Matrix created using an array:\n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		printf("%d ",matrix[i][j]);	//for print matrix
		printf("\n");
	}
	return 0;
}


