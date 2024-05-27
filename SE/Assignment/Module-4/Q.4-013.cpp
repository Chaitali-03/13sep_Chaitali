//13.Write a program to find the max number from given two numbersusing friend function.
#include<iostream>

class MaxFinder {
private:
    int num1, num2;

public:
    MaxFinder(int a, int b) : num1(a), num2(b) {}

    friend int findMax(MaxFinder obj);
};

int findMax(MaxFinder obj) {
    return (obj.num1 > obj.num2) ? obj.num1 : obj.num2;
}

int main() {
    int a, b;
    std::cout << "Enter two numbers: ";
    std::cin >> a >> b;

    MaxFinder numbers(a, b);
    int result = findMax(numbers);

    std::cout << "Maximum number is: " << result << std::endl;

    return 0;
}
