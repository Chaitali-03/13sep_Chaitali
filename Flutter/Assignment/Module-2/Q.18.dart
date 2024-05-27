//18. Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be Menu Driven)
import 'dart:io';
void main()
{
  var op;
  int one, two,add,sub,mul,mod;
  double div;

  print("Enter an operator (+, -, *, /, %):");
  op = stdin.readLineSync().toString();

  print("enter first number:");
  one=int.parse(stdin.readLineSync().toString());

  print("enter second number:");
  two=int.parse(stdin.readLineSync().toString());

  add=one+two;
  sub=one-two;
  mul=one*two;
  div=one/two;
  mod=one%two;

  switch (op)
  {
    case '+':
      print("$one + $two = $add");
      break;
    case '-':
      print("$one - $two = $sub");
      break;
    case '*':
      print("$one * $two = $mul");
      break;
    case '/':
      print("$one / $two = $div");
      break;
    case '%':
      print("$one % $two = $mod");
    default:
      print("Error! operator is not correct");
  }
}