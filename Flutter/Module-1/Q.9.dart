//9. Write a Program to show swap of two No's without using third variable.
import 'dart:io';
void main()
{
  double a,b;

  print("Enter the value of first variable:");
  a=double.parse(stdin.readLineSync().toString());

  print("Enter the value of second variable:");
  b=double.parse(stdin.readLineSync().toString());

  a=a+b;
  b=a-b;
  a=a-b;


  print("After swapping value of first variable: $a");
  print("After swapping value of second variable: $b");
}