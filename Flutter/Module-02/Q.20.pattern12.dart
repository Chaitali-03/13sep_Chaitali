/*
Create Below Pattern:
  1
  4 4
  9 9 9
  16 16 16 16
  25 25 25 25 25

 */
import 'dart:io';
void main()
{
  for(int i=1; i<=5; i++)
  {
    for(int j=1; j<=i; j++)
    {
      //print("*");
      stdout.write(i*i);
      stdout.write(" ");
    }
    print(" ");
  }
}