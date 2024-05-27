//10. Write a Program to check the given number is Positive, Negative.
import 'dart:io';
void main()
{
  double num;

  print("Enter one number:");
  num=double.parse(stdin.readLineSync().toString());

  if(num>0)
  {
    print("Number is positive:");
  }
  else if (num==0)
  {
    print("number is Neutral:");
  }
  else
  {
    print("Number is positive:");
  }
}