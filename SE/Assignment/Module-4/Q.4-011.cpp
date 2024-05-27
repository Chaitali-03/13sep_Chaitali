/* 11.Write a program to calculate the area of circle, rectangle and triangle using Function Overloading.
Rectangle: Area * breadth
Triangle: ½ *Area*
breadthCircle: Pi * Area*Area */

#include <iostream>
#include <cmath>

using namespace std;

const double PI = 3.14;

// Function to calculate the area of a rectangle
double calculateArea(double length, double breadth) {
    return length * breadth;
}

// Function to calculate the area of a triangle
double calculateArea(double base, double height, char) {
    return 0.5 * base * height;
}

// Function to calculate the area of a circle
double calculateArea(double radius) {
    return PI * pow(radius, 2);
}

int main() {
    double rectangleArea = calculateArea(5.0, 3.0);
    cout << "Area of Rectangle: " << rectangleArea << endl;

    double triangleArea = calculateArea(4.0, 6.0, ' ');
    cout << "Area of Triangle: " << triangleArea << endl;

    double circleArea = calculateArea(2.5);
    cout << "Area of Circle: " << circleArea << endl;

    return 0;
}
