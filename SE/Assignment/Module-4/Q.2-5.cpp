// Write a C++ program to create a class called Rectangle that has private member variables for length and width. Implement member functions to calculate the rectangle's area and perimeter.

#include <iostream>
using namespace std;
class Rectangle
{
  private: double length;
  double width;

  public:
    // Constructor
    Rectangle(double len, double wid): length(len),
  width(wid) {}

  // Member function to calculate the area
  double calculateArea() 
  {
    return length * width;
  }

  // Member function to calculate the perimeter
  double calculatePerimeter()
  {
    return 2 * (length + width);
  }
};

int main()
{

  double length, width;
  cout << "Input the length of the rectangler: ";
  cin >> length;
  cout << "Input the width of the rectangle: ";
  cin >> width;

  // Create a rectangle object
  Rectangle rectangle(length, width);

  // Calculate and display the area
  double area = rectangle.calculateArea();
  cout << "\nArea: " << area << endl;

  // Calculate and display the perimeter
  double perimeter = rectangle.calculatePerimeter();
  cout << "Perimeter: " << perimeter << endl;

  return 0;
}

