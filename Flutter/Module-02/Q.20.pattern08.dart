/*
Create Below Pattern:
     1
    1 2
   1 2 3
  1 2 3 4
 1 2 3 4 5

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
      stdout.write(j);
      stdout.write(" ");
    }
    stdout.write("\n");
  }
}