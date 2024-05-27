/* 8. Write a program to Mathematic operation like Addition, Subtraction,
Multiplication, Division Of two number using different parameters and
Function Overloading*/
#include <iostream>
using namespace std;

// Function to perform addition
int mathOperation(int a, int b){
    return a + b;
}

// Function to perform division
float mathOperation(float a, float b){
    if(b != 0){
    	return a / b;
	}
	else{
		return 0;
	}
}

// Function to perform subtraction
int mathOperation(int a, int b, int c){
    return a - b - c;
}

// Function to perform multiplication
int mathOperation(int a, int b, int c, int d){
    return a * b * c * d;
}

int main(){
    int result;
    float result1;

    // Perform addition
    result = mathOperation(3, 6);
    cout<<"Addition : "<<result<<endl;
	
	// Perform division
    result1 = mathOperation(50.0f, 2.0f);
    cout<<"Division : "<<result1<<endl;
    
	// Perform subtraction
    result = mathOperation(9, 3, 3);
    cout<<"Subtraction : "<<result<<endl;

    // Perform multiplication
    result = mathOperation(2, 2, 3, 3);
    cout<<"Multiplication : "<<result<<endl;
    return 0;
}
