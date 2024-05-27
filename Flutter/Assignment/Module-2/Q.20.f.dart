//f.Write a program you have to print the table of given number.
import 'dart:io';
void main()
{
  int num,ans,i;

  print("Enter one number");
  num=int.parse(stdin.readLineSync().toString());

  for(i=1;i<=10;i++)
    {
      ans=num*i;
      print("$num * $i = $ans");
    }
}