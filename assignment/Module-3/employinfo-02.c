// Write a program of structure for five employee that provides the following information -print and display empno, empname, address and age
#include<stdio.h>
struct employee 
{
  int empno;
  char empname[20];
  char address[30];
  int age;
};
void main() {
  struct employee emp[5];

  for (int i = 0; i < 5; i++) {
    printf("Enter employee number: ");
    scanf("%d", &emp[i].empno);
    printf("Enter employee name: ");
    scanf("%s", emp[i].empname);
    printf("Enter employee address: ");
    scanf("%s", emp[i].address);
    printf("Enter employee age: ");
    scanf("%d", &emp[i].age);
  }
  printf("Employee details:\n");
  for (int i = 0; i < 5; i++)
  {
    printf("Employee number: %d\n", emp[i].empno);
    printf("Employee name: %s\n", emp[i].empname);
    printf("Employee address: %s\n", emp[i].address);
    printf("Employee age: %d\n", emp[i].age);
  }
}