//10.Write a program to concatenate the two strings using Operator Overloading.
#include <iostream>
#include <cstring>

using namespace std;

class Concatenator
{
private:
    char *str;

public:
    // Constructor
    Concatenator(const char *s = "") 
	{
        str = new char[strlen(s) + 1];
        strcpy(str, s);
    }

    // Overloading + operator for string concatenation
    Concatenator operator+(const Concatenator &other) const 
	{
        Concatenator result;
        result.str = new char[strlen(str) + strlen(other.str) + 1];
        strcpy(result.str, str);
        strcat(result.str, other.str);
        return result;
    }

    // Display the concatenated string
    void display() const 
	{
        cout << str << endl;
    }

    // Destructor
    ~Concatenator() 
	{
        delete[] str;
    }
};

int main() 
{
    // Creating two Concatenator objects (strings)
    Concatenator string1("Hello, ");
    Concatenator string2("world!");

    // Concatenating strings using operator overloading
    Concatenator resultString = string1 + string2;

    // Displaying the result
    cout << "Concatenated String: ";
    resultString.display();

    return 0;
}
