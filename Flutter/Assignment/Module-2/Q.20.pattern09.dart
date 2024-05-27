/*
Create Below Pattern:
     1
    2 2
   3 3 3
  4 4 4 4
 5 5 5 5 5

 */
import 'dart:io';
void main()
{
  int i,j,k;
  for(i=1;i<=5;i++)
  {
    for(k=5;k>i;k--)
    {
      stdout.write(" ");
    }
    for(j=1;j<=i;j++)
    {
      stdout.write(i);
      stdout.write(" ");
    }
    stdout.write("\n");
  }
}