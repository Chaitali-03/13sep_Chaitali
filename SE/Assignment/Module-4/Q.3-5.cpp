// Write a C++ program to create a class called Triangle that has private member variables for the lengths of its three sides. Implement member functions to determine if the triangle is equilateral, isosceles, or scalene.

#include <iostream>
using namespace std;

class Triangle
{
  private: double side1;
  double side2;
  double side3;

  public:
    // Constructor
    Triangle(double s1, double s2, double s3): side1(s1),side2(s2),side3(s3) {}

  // Member function to determine the type of triangle
  void determineType() 
  {
    if (side1 == side2 && side2 == side3) 
	{
      cout << "Equilateral Triangle" << endl;
    }
	 else if (side1 == side2 || side1 == side3 || side2 == side3) 
	{
      cout << "Isosceles Triangle" << endl;
    } 
	 else 
	{
      cout << "Scalene Triangle" << endl;
    }
  }
};

int main() 
{
  // Create a triangle object
  double s1, s2, s3;
  cout << "Input the lengths of the three sides of the triangle:\n";
  cout << "Side1: ";
  cin >> s1;
  cout << "Side2: ";
  cin >> s2;
  cout << "Side3: ";
  cin >> s3;

  Triangle triangle(s1, s2, s3);

  // Determine the type of triangle
  triangle.determineType();

  return 0;
}

