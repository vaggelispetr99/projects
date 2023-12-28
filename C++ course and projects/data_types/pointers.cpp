#include <iostream>

using std::cout;
using std::endl;

int main(){
    int* example = nullptr; //example for nullptr
    int balance = 1000;
    int* balance_ptr = &balance;

    cout << "Int: " << balance << endl;
    cout << "Pointer: " << balance_ptr << endl;
    cout << "Int through Pointer: " << *balance_ptr << endl;

    *balance_ptr = 2000;
    cout << "Int: " << balance << endl;
    cout << "Pointer: " << balance_ptr << endl;
    cout << "Int through Pointer: " << *balance_ptr << endl;
}