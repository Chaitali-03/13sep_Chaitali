/*
Create Below Pattern:
     1
    21
   321
  4321
 54321

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
    for(j=i;j>=1;j--)
    {
      stdout.write(j);
    }
    stdout.write("\n");
  }
}