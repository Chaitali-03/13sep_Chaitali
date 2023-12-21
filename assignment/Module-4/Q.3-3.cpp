// Write a C++ program to create a class called Car that has private member variables for company, model, and year. Implement member functions to get and set these variables.

#include <iostream>
#include <string>
using namespace std;

class Car {
  private: string company;
  string model;
  int year;

  public:
    // Constructor
    Car(const string & comp,const string & mdl, int yr): company(comp), model(mdl), year(yr) {}

  // Getter functions
  string getCompany() {
    return company;
  }

  string getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  // Setter functions
  void setCompany(const string & comp) {
    company = comp;
  }

  void setModel(const string & mdl) {
    model = mdl;
  }

  void setYear(int yr) {
    year = yr;
  }
};

int main() {
  // Create a car object
  Car car("AUDI", "A6", 2023);

  // Get and display the car details
  cout << "Company: " << car.getCompany() << std::endl;
  cout << "Model: " << car.getModel() << std::endl;
  cout << "Year: " << car.getYear() << std::endl;

  // Set new values for the car
  car.setCompany("BMW");
  car.setModel("GT");
  car.setYear(2024);

  // Get and display the updated car details
  cout << "\nUpdated Company: " << car.getCompany() << std::endl;
  cout << "Updated Model: " << car.getModel() << std::endl;
  cout << "Updated Year: " << car.getYear() << std::endl;

  return 0;
}

