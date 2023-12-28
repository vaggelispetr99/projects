#include <cstdio>
#include <cstring>
#include <string>
//using namespace std;
#include <iostream>
using std::cout;
using std::endl;
using std::string;
main(){
    string start = "Start: ";
    string c_plus_style_1 = "Hello vaggelis petr from athens";
    string c_plus_style_2 {"attica greece"};
    cout << "c_plus_style_1: " << c_plus_style_1 << endl;
    c_plus_style_1[1] = 'B';
    c_plus_style_1[5] = 'X';
    cout << "c_plus_style_1: " << c_plus_style_1 << endl;

    cout << "c_plus: " << c_plus_style_1 + " " + c_plus_style_2 << endl;
    start += c_plus_style_1 + ' ' + c_plus_style_2;
    cout << "start: " << start << endl;

    string name_pet = "Peter";
    string name_al = "Alice";
    cout << "al > pet: " << (name_al > name_pet) << endl;
    cout << "pet > al: " << (name_pet > name_al) << endl;
    cout << "al >= pet: " << (name_al >= name_pet) << endl;
    cout << "pet >= al: " << (name_pet >= name_al) << endl;
    cout << "al == pet: " << (name_al == name_pet) << endl;
    cout << "pet != al: " << (name_pet != name_al) << endl;
    
    return 0;
}