#include <cstdio>
#include <cstring>
#include <string>
//using namespace std;
#include <iostream>
using std::cout;
using std::endl;
using std::string;
main(){
    const char* c_style_1 = "Hello vaggelis petr from athens";
    //char* c_style_1 = (char*)"Hello vaggelis petr from athens";
    char c_style_2[60] = "Hello vaggelis petr from athens greece";
    cout << "c_style_1: " << c_style_1 << endl;
    cout << "c_style_2: " << c_style_1 << endl;

    string c_plus_style_1 = "Hello vaggelis petr from athens";
    string c_plus_style_2 {"Hello vaggelis petr from athens greece"};
    string empty_string;
    cout << "c_plus_style_1: " << c_plus_style_1 << endl;
    cout << "c_plus_style_2: " << c_plus_style_1 << endl;
    cout << "empty_string: " << empty_string << endl;
    
    const char* c_style_1_new = c_plus_style_1.c_str();
    //char* c_style_1 = (char*)"Hello vaggelis petr from athens";
    char* c_style_2_new = c_plus_style_2.data();
    cout << "c_style_1_new: " << c_style_1_new << endl;
    cout << "c_style_2_new: " << c_style_2_new << endl;

    string c_plus_plus = "Hello vaggelis petr from athens";

    string c_plus_plus_1 {c_plus_plus};

    string c_plus_plus_2 {c_plus_plus, 2, 11};

    string repeat_e(10, 'e');

    cout << "c_plus_plus: " << c_plus_plus << endl;
    cout << "c_plus_plus_1: " << c_plus_plus_1 << endl;
    cout << "c_plus_plus_2: " << c_plus_plus_2 << endl;
    cout << "repeat_e: " << repeat_e << endl;
}