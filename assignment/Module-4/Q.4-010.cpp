//10.Write a program to concatenate the two strings using Operator Overloading.

#include<iostream>
#include<string.h>

using namespace std;

class concat
{
public:
    // Constructor
    char k[20];
    
    void get(char str[20])
    {
        strcpy(k, str);
    }

    concat operator+(concat &c2)
    {
        concat c3;
        cout << endl
             << "Concatination : " << k << c2.k;	// Displaying the result
        return c3;
    }
};

int main()
{
    char s1[20], s2[20]; 
    cout << "Enter string 1 : ";
    cin >> s1;
    cout << "Enter string 2 : ";
    cin >> s2;
    concat obj1, obj2, obj3; 
    obj1.get(s1);            
    obj2.get(s2);           
    obj3 = obj1 + obj2;	// Concatenating strings using operator overloading     
}
