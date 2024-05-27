//5. Write a program to find the Area of Triangle.
import 'dart:io';
void main()
{
  double base,height,triangle;

  print("Enter the value of triangle base:");
  base=double.parse(stdin.readLineSync().toString());

  print("Enter the value of triangle height:");
  height=double.parse(stdin.readLineSync().toString());

  triangle=0.5*base*height;

  print(triangle);
}