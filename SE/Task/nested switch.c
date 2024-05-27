//WAP nested switch case for beauty product list:
#include<stdio.h>
//global section
int main()
{
	int choice,select;	//creat the variable
	
	printf("\n1.Skin care \n2.Makeup \n3.Hair products");
	printf("\nEnter your choice:");	//to get the value
	scanf("%d",&choice);	//to store the value
	
	switch(choice)	//switch case for get user choice
	{
		case 1:
		printf("\n1.Moisturizer \n2.Face mask \n3.Face wash");
		printf("\nselect your products:");
		scanf("%d",&select);
		
		switch(select)	//Nested switch case for get user choice
		{
			case 1:
			printf("\nMoisturizer");	// For print value 
			break;
			
			case 2:
			printf("\nFace mask");
			break;
			
			case 3:
			printf("\nFace wash");
			break;
			
			default:
    	 	printf("\nInvalid input!");
    		break;
		}
		break;	
		
		case 2:
		printf("\n1.Foundation \n2.Eye liner \n3.Lipstick");
		printf("\nselect your products:");
		scanf("%d",&select);
		
		switch(select)
		{
			case 1:
			printf("\nFoundation");
			break;
			
			case 2:
			printf("\nEye liner");
			break;
			
			case 3:
			printf("\nLipstick");
			break;
			
			default:
    		printf("\nInvalid input!");
    		break;
		}
		break;	
		
		case 3:
		printf("\n1.Shampoo \n2.Conditioner \n3.Serum");
		printf("\nselect your products:");
		scanf("%d",&select);
		
		switch(select)
		{
			case 1:
			printf("\nShampoo");
			break;
			
			case 2:
			printf("\nConditioner");
			break;
			
			case 3:
			printf("\nSerum");
			break;
			
			default:
    		printf("\nInvalid input!");
    		break;
		}
		break;
		
		default:
    	printf("\nInvalid input!");
    	break;
	}
	return 0;
}
