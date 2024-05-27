//Write a C++ program to create a class called Person that has private member variables for name, age and country. Implement member functions to set and get the values of these variables.

#include <iostream>
#include <string>
using namespace std;

class Person 
{
  private: string name; string country;
  int age;

  public:
    // Setter functions
    void setName(const string & n) 
	{
      name = n;
    }
	void setAge(int a) 
    {
      age = a;
  	}
	void setCountry(const string & c) 
	{
      country = c;
  	}

  // Getter functions
  string getName() 
  {
    return name;
  }

  int getAge() 
  {
    return age;
  }

  string getCountry() 
  {
    return country;
  }
};

int main() 
{
  // Create a person object
  Person person;

  // Set the person's details
  person.setName("pranjal");
  person.setAge(21);
  person.setCountry("INDIA");

  // Get and display the person's details
  cout << "Name: " << person.getName() << endl;
  cout << "Age: " << person.getAge() << endl;
  cout << "Country: " << person.getCountry() << endl;

  return 0;
}

