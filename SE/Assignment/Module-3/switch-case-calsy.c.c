// WAP of Addition, Subtraction, Multiplication and Division using Switch case.(Must Be Menu Driven)
#include <stdio.h>
//global section
int main() 
{
  char op;
  int one, two;
  printf("Enter an operator (+, -, *, /): ");
  scanf("%c", &op);
  printf("Enter two numbers: ");
  scanf("%d %d", &one , &two);

  switch (op) {
    case '+':
      printf("%d + %d = %d", one, two, one + two);
      break;
    case '-':
      printf("%d - %d = %d", one, two, one - two);
      break;
    case '*':
      printf("%d * %d = %d", one, two, one * two);
      break;
    case '/':
      printf("%d / %d = %d", one, two, one / two);
      break;
    case '%':
      printf("%d % %d = %d", one, two , one % two);
    default:
      printf("Error! operator is not correct");
  }
  return 0;
}
