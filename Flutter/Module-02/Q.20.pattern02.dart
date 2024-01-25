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
  for(int i=1; i<=5; i++)
  {
    for(int j=1; j<=i; j++)
    {
      //print("*");
      stdout.write(j);
    }
    print(" ");
  }
}