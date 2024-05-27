/* Looping programs:
	1. WAP to print 972 to 897 using for loop */
	
#include<stdio.h>
//global section
int main()
{
    int i;	//creat variable
    for(i = 972; i >= 897; --i)	//condition
    {
        printf("%d\n", i);	//print answer
    }
    return 0;
}
