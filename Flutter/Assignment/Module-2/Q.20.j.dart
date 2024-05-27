//j.Write a program you have to make a summation of first and last Digit.(E.g. 1234 ans:-5)
import 'dart:io';
void main()
{
  int num1,num2,firstdigit,lastdigit,summation;

  print("Enter number");
  num1=int.parse(stdin.readLineSync().toString());

  lastdigit=num1%10;

  while(num1>10)
    {
      num2=num1~/10;
      num1=num2;
    }
    firstdigit=num1;
    summation=firstdigit+lastdigit;

    print("summation of first and last digit is: $summation");
}