#include <iostream>
#include <iomanip>
#include <cmath>
#include <string>

using std::cout;
using std::cin;
using std::endl;
using std::string;
using std::getline;

int main(){
    int num_a, num_b; 
    float num_c;
    cout << "Please enter an float: ";
    cin >> num_c ;
    cout << "Please enter an integer: ";
    cin >> num_a ;   
    cout << "Please enter an integer: ";
    cin >> num_b ;
    //newline charachter remains in buffer for input
    cin.ignore();
    cout << num_a << " + " << num_b << " = " << num_a + num_b << endl;

    cout << "Area of circle is: " << std::scientific << std::setprecision(3) 
         << std::numbers::pi * num_c * num_c << endl;

    string name, city; 
    cout << "Please enter a name: ";
    getline(cin, name);   
    cout << "Please enter acity: ";
    getline(cin, city);
    cout << "Hello " << name << " from " << city << "!" << endl;

    char first_char;
    cout << "Please enter the first char: ";
    //first_char = cin.get();
    cin.get(first_char);

    cout << "Entered: " << first_char << endl;

    string student_names[] = {"Vagg", "Danae", "George", "Chris", "Alex"};
    cout << std::setw(10) << std::left << student_names[0] 
         << std::setw(10) << std::left << student_names[1] << endl
         << std::setw(10) << std::left << student_names[2]
         << std::setw(10) << std::left << student_names[3] << endl
         << std::setw(10) << std::left << student_names[4] << endl;
    return 0;
}