//g.Write a program to print the number in reverse order.
import 'dart:io';
void main()
{
  int n, reverse=0, remainder;

  print("Enter a number:");
  n=int.parse(stdin.readLineSync().toString());

    while (n != 0)
    {
      remainder = n % 10;
      reverse = (reverse * 10) + remainder;
      n~/=10;
    }
    print("Reversed Number: $reverse");
}