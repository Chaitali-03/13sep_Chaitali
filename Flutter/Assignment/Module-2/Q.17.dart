//17. Write Program use switch statement. Display Monday to Sunday.
import 'dart:io';
void main()
{
  int num;

  print("Enter number to know the seven days of the week:");
  num=int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1:
      print("Sunday");
      break;

    case 2:
      print("Monday");
      break;

    case 3:
      print("Tuesday");
      break;

    case 4:
      print("Wednesday");
      break;

    case 5:
      print("Thursday");
      break;

    case 6:
      print("Friday");
      break;

    case 7:
      print("Saturday");
      break;

    default:
      print("\nInvalid input!");
      break;
  }
}