//WAP to find area of circle, rectangle and triangle
#include<stdio.h>
//global section
int main()
{
	float pie=3.14, circle,triangle; 	//creat the variable
	int r,l,b,h,base,rectangle,choice;		//creat the variable
	
	printf("\n1.find area of circle \n2.find area of rectangle \n3.find area of triangle");
	printf("\nEnter your choice:");
	scanf("%d",&choice);
	switch(choice)	//switch case for get user choice
	{
		case 1:
		printf("\nEnter the value of circle redius:");	//to get the value
		scanf("%d",&r);		//to store the value
	
    	circle = pie * r * r;		//formula for calculare area
	
		printf("The area of circle is:%.2f",circle);	//print answer
		break;		
    	
    	case 2:
    	printf("\n\nEnenter the value of rectangle length:");
    	scanf("%d",&l);
    	printf("Enenter the value of rectangle breadth:");
    	scanf("%d",&b);
    	
    	rectangle=l*b;
    	
    	printf("The area of rectangle is:%d",rectangle);
    	break;
		
		case 3:
    	printf("\n\nEnenter the value of triangle base:");
    	scanf("%d",&base);
    	printf("Enenter the value of triangle height:");
    	scanf("%d",&h);
    	
    	triangle=0.5*base*h;
    	
    	printf("The area of triangle is:%.2f",triangle);
    	break;
    	
    	default:
    	printf("\nInvalid input!");
    	break;
    	
	}

	return 0;
}

