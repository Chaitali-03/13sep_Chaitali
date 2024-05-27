//WAP to make simple calculator (operation include Addition, Subtraction, Multiplication, Division, modulo)
//using switch case
#include<stdio.h>
//global section
int main()
{
	int a,b,add,sub,mul,mod,choice; //creat the variable
	float div;
	printf("enter value of a:"); //for print the message
	scanf("%d",&a);   //to store the value
	printf("enter value of b:");
	scanf("%d",&b);	
	
	printf("\n1.addition \n2.subtrection \n3.multiplication \n4.division \n5.modulo");
	printf("\nEnter your choice:");
	scanf("%d",&choice);
	
	switch(choice)	//switch case for get user choice
	{
		case 1:
		add=a+b; //addition
		printf("\naddition of a and b is: %d \n",add);     //print addition
		break;		
    	
    	case 2:
		sub=a-b; //subtrection
		printf("substraction of a and b is: %d \n",sub);   //print subtrection
		break;
		
		case 3:
		mul=a*b; //multiplication
		printf("multiplication of a and b is: %d \n",mul);  //print multiplication  
		break;
		
		case 4:
		div=(float)a/(float)b; //division
		printf("division of a and b is: %.1f \n",div);	    //print division
		break;
		
		case 5:
		mod=a%b; //modulo
		printf("modulo of a and b is: %d \n",mod);	     //print modulo
		break;
    	
    	default:
    	printf("\nInvalid input!");
    	break;
    	
	}
	
	return 0;
}

