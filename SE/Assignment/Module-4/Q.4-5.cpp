/*5. Assume that the test results of a batch of students are stored in three
different classes. Class Students are storing the roll number. Class Test
stores the marks obtained in two subjects and class result contains the
total marks obtained in the test. The class result can inherit the details
of the marks obtained in the test and roll number of students.
(Multilevel Inheritance) */

#include <iostream>
using namespace std;
class Student
{
protected:
    int rollNum;
public:
    void input_roll_number()
	{
        cout<<"Enter roll number : ";
        cin>>rollNum;
    }
};

class Test : public Student
{
protected:
    float sub1Marks;
    float sub2Marks;
public:
    void input_marks(){
        cout<<"Enter marks for subject 1 : ";
        cin>>sub1Marks;
        cout<<"Enter marks for subject 2 : ";
        cin>>sub2Marks;
    }
};

class Result : public Test{
private:
    float totalMarks;
public:
    void calculate_total_marks(){
        totalMarks = sub1Marks + sub2Marks;
    }

    void display_result()
	{
        cout<<"Roll Number : "<<rollNum<<endl;
        cout<<"Subject 1 Marks : "<<sub1Marks<<endl;
        cout<<"Subject 2 Marks : "<<sub2Marks<<endl;
        cout<<"Total Marks : "<<totalMarks<<endl;
    }
};

int main(){
    Result res;
    res.input_roll_number();
    res.input_marks();

    res.calculate_total_marks();
    res.display_result();
    return 0;
}
