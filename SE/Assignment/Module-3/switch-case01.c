/* WAP to show
	1. Monday to Sunday using switch case
	2. Vowel or Consonant using switch case */
	
#include<stdio.h>
//global section
int main()
{
	int num;	//creat the variable
	printf("Enter number to know the seven days of the week:");		//for print the message
	scanf("%d",&num);	//to store the value
	
	switch(num)	//switch case for get user choice
	{
		case 1:
		printf("Sunday");
		break;
		
		case 2:
		printf("Monday");
		break;
		
		case 3:
		printf("Tuesday");
		break;
		
		case 4:
		printf("Wednesday");
		break;
		
		case 5:
		printf("Thursday");
		break;
		
		case 6:
		printf("Friday");
		break;
		
		case 7:
		printf("Saturday");
		break;
		
		default:
    	printf("\nInvalid input!");
    	break;
	}
	return 0;
}
