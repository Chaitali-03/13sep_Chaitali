//4. Write a program to find the Area of Circle.

import 'dart:io';
void main()
{
  double pie=3.14,circle,redius;

  print("Enter the value of circle redius:");
  redius=double.parse(stdin.readLineSync().toString());

  circle=pie*redius*redius;

  print(circle);
}