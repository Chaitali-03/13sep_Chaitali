//d.Write a program you have to find the factorial of given number.
import 'dart:io';
void main()
{
  int i,fact=1,num;

  print("Enter a number: ");
  num=int.parse(stdin.readLineSync().toString());

  for(i=1;i<=num;i++)	//condition
    {
      fact=fact*i;    //formula for calculate factorial
    }
  print("Factorial of $num is: $fact");
}