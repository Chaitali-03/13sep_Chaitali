//WAP to get value from the user and store it into array.
#include<stdio.h>
//global section
int main()
{
	int array[5],i;	//creat an array
	printf("enter five value:");	//for print the message
	scanf("%d %d %d %d %d",&array[0],&array[1],&array[2],&array[3],&array[4]);	//to store the value
	for(i=0;i<5;i++)	
	{
		printf("\narray[%d]=%d",i,array[i]);	//for print an array value
	}
	return 0;
}
