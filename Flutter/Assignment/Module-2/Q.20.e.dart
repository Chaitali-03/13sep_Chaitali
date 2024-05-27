//e.Write a program you have to print the Fibonacci series up to user given number.
import 'dart:io';
void main()
{
  int t1 = 0, t2 = 1, nextTerm = 0, n;
  
  print("Enter a positive number:");
  n=int.parse(stdin.readLineSync().toString());

  print("Fibonacci Series:\n$t1 \n$t2");
  nextTerm = t1 + t2;

  while (nextTerm <= n)
  {
    print("$nextTerm");
    t1 = t2;
    t2 = nextTerm;
    nextTerm = t1 + t2;
  }
}