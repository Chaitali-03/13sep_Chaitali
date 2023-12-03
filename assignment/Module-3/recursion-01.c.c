//WAP to find reverse of string using recursion 
#include<stdio.h>
#include<string.h>
void reversestring(char str[], int start, int end) 
{
  if (start < end) 
  {
    char temp = str[start];
    str[start] = str[end];
    str[end] = temp;
    reversestring(str, start + 1, end - 1);
  }
}
int main() 
{
  char str[] = "Hello, World!";
  int len = strlen(str);

  reversestring(str, 0, len - 1);

  printf("The reversed string is: %s\n", str);

  return 0;
}
