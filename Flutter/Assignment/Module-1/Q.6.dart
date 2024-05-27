//6. Write a program to find the simple Interest.
import 'dart:io';
void main()
{
  double p,r,t,si;

  print("Enter the value of principal amount:");
  p = double.parse(stdin.readLineSync().toString());

  print("Enter the value of interest rate:");
  r = double.parse(stdin.readLineSync().toString());

  print("Enter the value of time:");
  t = double.parse(stdin.readLineSync().toString());

  si=(p*r*t)/100;

  print("your simple interest is: $si");
}
