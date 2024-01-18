//15. Write a program to find the Max number from the given three number using Nested If.
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
    if(a>c)
    {
      print("$a is max");
    }
    else
    {
      print("$c is max");
    }
  }
  else
  {
    if(b>c)
    {
      print("$b is max");
    }
    else
    {
      print("$c is max");
    }
  }
}