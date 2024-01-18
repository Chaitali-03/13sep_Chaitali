//14. Write a program to find the Max number from the given three number using Ternary Operator.
import 'dart:io';
void main()
{
  int a,b,c;

  print("enter first number:");
  a=int.parse(stdin.readLineSync().toString());

  print("enter second number:");
  b=int.parse(stdin.readLineSync().toString());

  print("enter third number:");
  c=int.parse(stdin.readLineSync().toString());

  if(a>b)
  {
    (a>c) ? ( print("$a is max")) : ( print("$c is max"));
  }
  else
  {
    (b>c) ? (print("$b is max")) : (print("$c is max"));
  }
}