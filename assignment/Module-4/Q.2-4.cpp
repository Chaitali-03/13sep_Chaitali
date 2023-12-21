// Write a C++ program to implement a class called Circle that has private member variables for radius. Include member functions to calculate the circle's area and circumference.
#include <iostream>
#include <math.h>
using namespace std;

const double PI = 3.14;

class Circle {
  private: double radius;

  public:
    // Constructor
    Circle(double rad): radius(rad) {}

  // Member function to calculate the area
  double calculateArea() {
    return PI * radius * radius;
  }

  // Member function to calculate the circumference
  double calculateCircumference() {
    return 2 * PI * radius;
  }
};

int main() {
  // Create a circle object
  double radius;
  cout << "Input the radius of the circle: ";
  cin >> radius;
  Circle circle(radius);

  // Calculate and display the area
  double area = circle.calculateArea();
  cout << "Area: " << area << endl;

  // Calculate and display the circumference
  double circumference = circle.calculateCircumference();
  cout << "Circumference: " << circumference << endl;

  return 0;
}

