//7. Write a C++ Program to illustrates the use of Constructors in multilevel inheritance.
#include <iostream>
using namespace std;

class Grandparent {
public:
    Grandparent() {
        cout << "Grandparent Constructor" << endl;
    }
};

class Parent : public Grandparent {
public:
    Parent() {
        cout << "Parent Constructor" << endl;
    }
};

class Child : public Parent {
public:
    Child() {
        cout << "Child Constructor" << endl;
    }
};

int main() {
    Child myChild; // Creating an object of the Child class
    return 0;
}
