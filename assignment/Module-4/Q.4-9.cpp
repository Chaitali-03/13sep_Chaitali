//9. Write a Program of Two 1D Matrix Addition using Operator Overloading.
#include <iostream>
using namespace std;

// Class representing a 1D matrix
class Matrix{
private:
    int size;
    int *data;

public:
    Matrix(int s) : size(s){
        data = new int[size];
    }

    Matrix operator +(Matrix obj){
        // Check if both matrices have the same size
        if(this->size != obj.size){
            cout<<"Matrices have different sizes. Addition not possible."<<endl;
            // Return an empty matrix
            return Matrix(0);
        }

        // Create a new matrix to store the result
        Matrix result(size);

        // Perform addition
        for (int i = 0; i < size; i++){
            result.data[i] = this->data[i] + obj.data[i];
        }
        return result;
    }

    // Function to input matrix elements
    void inputMatrix(){
        cout<<"Enter "<<size<<" elements : ";
        for(int i = 0; i < size; ++i){
            cin>>data[i];
        }
    }

    // Function to display matrix elements
    void displayMatrix(){
        cout<<"Matrix : ";
        for(int i = 0; i < size; ++i){
            cout<<data[i]<<" ";
        }
        cout<<endl;
    }
};

int main() {
    // Input size of matrices
    int size;
    cout<<"Enter size of matrices : ";
    cin>>size;

    // Create two matrices of the given size
    Matrix matrix1(size), matrix2(size);

    // Input elements for both matrices
    cout<<"Enter elements for first matrix"<<endl;
    matrix1.inputMatrix();
    cout<<"Enter elements for second matrix"<<endl;
    matrix2.inputMatrix();

    // Perform matrix addition using overloaded '+' operator
    Matrix result = matrix1 + matrix2;

    // Display the result matrix
    result.displayMatrix();
    return 0;
}
