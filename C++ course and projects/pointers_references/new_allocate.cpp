#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

int main(){
    
    double* double_ptr {}; //Initialized to nullptr the pointer
    double_ptr = new double; //Allocate memory for the pointer
    *double_ptr = 25.035;
    // or double_ptr = new double{25.035};
    //or double* double_ptr {new double{25.035}};
     //or double* double_ptr = new double(25.035);    cout << *double_ptr << endl;
    double* double_ptr_1 {new double{}};
    double* double_ptr_2 {};

    cout << double_ptr_1 << endl;
    cout << double_ptr_2 << endl;
    delete double_ptr;
    delete double_ptr_1;
    delete double_ptr_2;
    double_ptr = nullptr;
    double_ptr_1 = nullptr;
    double_ptr_2 = nullptr;
    return 0;
}