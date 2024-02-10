/*1. Assume a class cricketer is declared. Declare a derived class batsman
from cricketer. Data member of batsman. Total runs, Average runs and
best performance. Member functions input data, calculate average
runs, Displaydata.(Single Inheritance)*/
#include <iostream>
#include <string>

using namespace std;

class Cricketer {
public:
    Cricketer(const string& name, int age) : name(name), age(age) {}

protected:
    string name;
    int age;
};

class Batsman : public Cricketer {
public:
    Batsman(const string& name, int age) : Cricketer(name, age), total_runs(0), average_runs(0), best_performance(0) {}

    void input_data(int total_runs, int best_performance) {
        this->total_runs = total_runs;
        this->best_performance = best_performance;
        calculate_average_runs();
    }

    void calculate_average_runs() {
        if (total_runs != 0) {
            average_runs = static_cast<double>(total_runs) / 5; // Assuming 5 matches for simplicity
        }
    }

    void display_data() {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
        cout << "Total Runs: " << total_runs << endl;
        cout << "Average Runs: " << average_runs << endl;
        cout << "Best Performance: " << best_performance << endl;
    }

private:
    int total_runs;
    double average_runs;
    int best_performance;
};

// Example Usage
int main() {
    Batsman batsman1("Player1", 25);
    batsman1.input_data(250, 100);
    batsman1.display_data();

    return 0;
}
