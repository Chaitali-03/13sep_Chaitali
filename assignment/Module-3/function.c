//Write a program to find out the max number from given array using function
#include<stdio.h>
//global section
int main() 
{
  int n,i,arr[50];
  printf("Enter the length of array (under 50) : ");
  scanf("%d", &n);

  for (i = 0; i < n; i++) 
  {
    printf("Enter number %d : ", i + 1);
    scanf("%d", &arr[i]);
  }

  for (i = 1; i < n; i++) 
  {
    if (arr[0] < arr[i]) 
	{
      arr[0] = arr[i];
    }
  }
  printf("Largest element = %d", arr[0]);
  return 0;
}
