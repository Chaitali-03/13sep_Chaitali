//i.Write a program make a summation of given number (E.g. 1523 ans :-11).
import 'dart:io';
void main()
{
  int num, lastdigit = 0;

  print("Enter number");
  num=int.parse(stdin.readLineSync().toString());

  while(num>0)
  {
    lastdigit = lastdigit + num%10;

    num=num~/10;
  }
  print("summation of given number is $lastdigit");

}