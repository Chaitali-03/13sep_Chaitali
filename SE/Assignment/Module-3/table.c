#include<stdio.h>
#include<conio.h>
void main()
{
	int num,ans,i;

  printf("Enter one number");
  scanf("%d",&num);

  for(i=1;i<=10;i++)
    {
      ans=num*i;
      printf("%d * %d = %d",num,i,ans);
      printf("\n");
    }
    
}
