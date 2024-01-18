//19. Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must Be Menu Driven)
import 'dart:io';
void main()
{
  int r,l,b,h,base,rectangle,choice;
  double pie=3.14, circle,triangle;

  print("1.find area of circle \n2.find area of rectangle \n3.find area of triangle");

  print("Enter your choice:");
  choice =int.parse(stdin.readLineSync().toString());

  switch(choice)
  {
    case 1:
      print("\nEnter the value of circle redis:");
      r =int.parse(stdin.readLineSync().toString());

      circle = pie * r * r;

      print("The area of circle is:$circle");
      break;

    case 2:
      print("\nEnter the value of rectangle length:");
      l =int.parse(stdin.readLineSync().toString());
      print("Enter the value of rectangle breadth:");
      b =int.parse(stdin.readLineSync().toString());

      rectangle=l*b;

      print("The area of rectangle is:$rectangle");
      break;

    case 3:
      print("\nEnter the value of triangle base:");
      base =int.parse(stdin.readLineSync().toString());
      print("Enter the value of triangle height:");
      h =int.parse(stdin.readLineSync().toString());

      triangle=0.5*base*h;

      print("The area of triangle is:$triangle");
      break;

    default:
      print("\nInvalid input!");
      break;

  }

}
