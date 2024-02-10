/* 3. Create a class person having members name and age. Derive a class
student having member percentage. Derive another class teacher
having member salary. Write necessary member function to initialize,
read and write data. Write also Main function (Multiple Inheritance) */

#include <iostream>
#include <string>

using namespace std;

class Person {
public:
    Person(const string& name, int age) : name(name), age(age) {}

    void read_data() {
        cout << "Enter Name: ";
        cin >> name;
        cout << "Enter Age: ";
        cin >> age;
    }

    void display_data() const {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
    }

protected:
    string name;
    int age;
};

class Student : public Person {
public:
    Student(const string& name, int age) : Person(name, age), percentage(0.0) {}

    void set_percentage(double percentage) {
        this->percentage = percentage;
    }

    void read_data() {
        Person::read_data();
        cout << "Enter Percentage: ";
        cin >> percentage;
    }

    void display_data() const {
        Person::display_data();
        cout << "Percentage: " << percentage << "%" << endl;
    }

private:
    double percentage;
};

class Teacher : public Person {
public:
    Teacher(const string& name, int age) : Person(name, age), salary(0.0) {}

    void set_salary(double salary) {
        this->salary = salary;
    }

    void read_data() {
        Person::read_data();
        cout << "Enter Salary: ";
        cin >> salary;
    }

    void display_data() const {
        Person::display_data();
        cout << "Salary: $" << salary << endl;
    }

private:
    double salary;
};

int main() {
    Student student("Student1", 20);
    student.read_data();
    student.display_data();

    cout << "\n";

    Teacher teacher("Teacher1", 35);
    teacher.read_data();
    teacher.display_data();

    return 0;
}
