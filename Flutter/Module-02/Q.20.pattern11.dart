/*
Create Below Pattern:
  1
  0 1
  1 0 1
  0 1 0 1
  1 0 1 0 1

 */
import 'dart:io';
void main()
{
  for(int i=1; i<=5; i++)
  {
    for (int j=1; j<=i; j++)
    {
      stdout.write((i+j+1)%2);
      /*if((i+j)%2==0)
        {
          stdout.write(1);
        }
      else
        {
          stdout.write(0);
        }*/
    }
    print(" ");
  }
}