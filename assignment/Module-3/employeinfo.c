// Write a program of structure employee that provides the following information print and display empno, empname, address and age 
#include <stdio.h>
struct employee 
{
    int empno;
    char empname[20];
    char address[50];
    int age;
};
void main() 
{
    struct employee emp;

    printf("Enter employee number: ");
    scanf("%d", &emp.empno);

    printf("Enter employee name: ");
    scanf("%s", emp.empname);

    printf("Enter employee address: ");
    scanf("%s", emp.address);

    printf("Enter employee age: ");
    scanf("%d", &emp.age);

    printf("Employee details:\n");
    printf("Empno: %d\n", emp.empno);
    printf("Empname: %s\n", emp.empname);
    printf("Address: %s\n", emp.address);
    printf("Age: %d\n", emp.age);

}