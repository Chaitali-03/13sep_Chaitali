/*
Create Below Pattern:
     *
    * *
   * * *
  * * * *
 * * * * *

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
      stdout.write("* ");
    }
    stdout.write("\n");
  }
}