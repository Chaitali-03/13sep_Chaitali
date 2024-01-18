/* Write a program user enter the 5 subjects mark. You have to make a
 total and find the percentage. percentage > 75 you have to print
 “Distinction” percentage > 60 and percentage <= 75 you have to
 print “First class” percentage >50 and percentage <= 60 you have to
 print “Second class” percentage > 35 and percentage <= 50 you have to
 print “Pass class” Otherwise print “Fail” */

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

  if(pr<35)
    {
      print("Fail");
    }
  else if((pr>=35) && (pr<=50))
    {
      print("pass class");
    }
  else if((pr>50) && (pr<=60))
    {
      print("second class");
    }
  else if((pr>60) && (pr<=75))
  {
    print("first class");
  }
  else
  {
    print("Distinction");
  }
}