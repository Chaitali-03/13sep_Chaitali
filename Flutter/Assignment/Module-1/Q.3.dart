//3. Write a program to make a square and cube of number.
import 'dart:io';
void main()
{
  int num,square,cube;

  print("Enter any number:");
  num=int.parse(stdin.readLineSync().toString());

  square=num*num;
  cube=num*num*num;

  print(square);
  print(cube);
}