// WAP to show difference between Structure and Union
#include <stdio.h>
struct student {
  int rollno;
  char name[20];
  float marks;
};
union student1 {
  int rollno;
  char name[20];
  float marks;
};
void main() 
{
  struct student s1;
  s1.rollno = 1;
  strcpy(s1.name, "ayushi");
  s1.marks = 99.0;

  union student1 s2;
  s2.rollno = 2;
  strcpy(s2.name, "denisha");
  s2.marks = 93.0;

  printf("Structure data:\n");
  printf("Rollno: %d\n", s1.rollno);
  printf("Name: %s\n", s1.name);
  printf("Marks: %.2f\n", s1.marks);

  printf("\nUnion data:\n");
  printf("Rollno: %d\n", s2.rollno);
  printf("Name: %s\n", s2.name);
  printf("Marks: %.2f\n", s2.marks);

}
