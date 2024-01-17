//8. Write a program to calculate sum of 5 subjects & find the percentage.Subject marks entered by user.
import 'dart:io';
void main()
{
  double s1,s2,s3,s4,s5,total,pr;

  print("Enter mark for subject English:");
  s1=double.parse(stdin.readLineSync().toString());

  print("Enter mark for subject Physics:");
  s2=double.parse(stdin.readLineSync().toString());

  print("Enter mark for subject Chemistry:");
  s3=double.parse(stdin.readLineSync().toString());

  print("Enter mark for subject Maths:");
  s4=double.parse(stdin.readLineSync().toString());

  print("Enter mark for subject Computer:");
  s5=double.parse(stdin.readLineSync().toString());

  total=s1+s2+s3+s4+s5;

  pr=total/5;

  print("Total marks : $total");
  print("Percentage : $pr");

}
