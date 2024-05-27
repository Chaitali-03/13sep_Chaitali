// Write a C++ program to implement a class called Employee that has private member variables for name, employee ID, and salary. Include member functions to calculate and set salary based on employee performance. Using of constructor.

#include <iostream>
#include <string>
using namespace std;

class Employee 
{
  private: string name;
  int employeeId;
  double salary;

  public:
    // Constructor
    Employee(const string & empName, int empId, double empSalary): name(empName),employeeId(empId),salary(empSalary) {}

  // Member function to calculate salary based on performance
  void calculateSalary(double performanceRating) 
  {
    if (performanceRating >= 0.0 && performanceRating <= 1.4) 
	{
      salary *= performanceRating;
    }
	else 
	{
      cout << "Invalid performance rating. Salary remains unchanged." << endl;
    }
  }

  // Member function to set salary
  void setSalary(double empSalary) 
  {
    salary = empSalary;
  }

  // Member function to get employee name
  string getName() const 
  {
    return name;
  }

  // Member function to get employee ID
  int getEmployeeId() const 
  {
    return employeeId;
  }

  // Member function to get employee salary
  double getSalary() const 
  {
    return salary;
  }
};

int main() 
{
  // Create an employee object
  string empName;
  int empId;
  double empSalary;

  cout << "Input employee name: ";
  cin >> empName;

  cout << "Input employee ID: ";
  cin >> empId;

  cout << "Input employee salary: ";
  cin >> empSalary;

  Employee employee(empName, empId, empSalary);

  // Calculate and display initial salary
  cout << "Initial salary: " << employee.getSalary() << endl;

  // Perform salary calculation based on performance
  double performanceRating;
  cout << "Input performance rating (0.0-1.4): ";
  cin >> performanceRating;

  employee.calculateSalary(performanceRating);

  // Display updated salary
  cout << "Updated salary: " << employee.getSalary() << endl;

  return 0;
}

