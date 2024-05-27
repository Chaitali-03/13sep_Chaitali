//12.Write a program to swap the two numbers using friend function without using third variable.
#include <iostream>
using namespace std;
 
class Swap {
    int a, b;

public:
    // Define the parameterized constructor, for inputs

    Swap(int a, int b)
    {
        this->a = a;
        this->b = b;
    }
 
    // Declare the friend function to swap, take arguments as call by reference
    friend void swap(Swap&);
};
 
// Define the swap function outside class scope
void swap(Swap& s1)
{
    // Call by reference is used to passed object copy to the function
    cout << "\nBefore Swapping: " << s1.a << " " << s1.b;
    // Swap operations with Swap Class variables

    s1.a=s1.a+s1.b;	// logic of swapping 
	s1.b=s1.a-s1.b;		
	s1.a=s1.a-s1.b;

    cout << "\nAfter Swapping: " << s1.a << " " << s1.b;
}
 
// Driver Code

int main()
{
    // Declare and Initialize the Swap object
    Swap s(4, 6);
    swap(s);
    return 0;
}
