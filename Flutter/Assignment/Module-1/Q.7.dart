//7. Write a program to convert temperature from degree centigrade to Fahrenheit.
import 'dart:io';
void main()
{
  double cel,far;

  print("Enter temperatre in Celsius:");
  cel=double.parse(stdin.readLineSync().toString());

  far=(cel * 9/5) + 32;

  print("temperatre in fahrenheit is: $far");
}