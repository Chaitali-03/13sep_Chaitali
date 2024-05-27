//h.Write a program to find out the max from given number (E.g. No: -1562 Max number is 6).
import 'dart:io';
void main()
{
  int n, remainder, maxdigit=0;

  print("Enter a number:");
  n=int.parse(stdin.readLineSync().toString());

  while(n>0)
    {
      remainder = n%10;

      if(remainder>maxdigit)
        {
          maxdigit=remainder;
        }
      else
        {
          n=n~/10;
        }
    }
    print("Max number is: $maxdigit");
}

