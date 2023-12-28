#include <cstdio>
#include <cstring>
#include <string>
//using namespace std;
#include <iostream>
using std::cout;
using std::endl;
using std::string;
main(){

    string c_plus_style_1 = "Hello vaggelis petr from athens ";
    string c_plus_style_2 {"attica greece"};
    string empty_string;
    cout << "c_plus_style_1: " << c_plus_style_1 << endl;
    cout << "c_plus_style_2: " << c_plus_style_2 << endl;
    cout << "c_plus_style_1_len: " << c_plus_style_1.length() << endl;
    cout << "c_plus_style_2_len: " << c_plus_style_2.length() << endl;
    
    c_plus_style_1.append(c_plus_style_2);
    cout << "c_plus_style_1: " << c_plus_style_1 << endl;
    cout << "c_plus_style_2: " << c_plus_style_2 << endl;

    string appending;
    appending.append("Hello ").append("Beautiful ").append("World ").append("People");
    cout << "appending: " << appending << endl;
    cout << "appending-length: " << appending.length() << endl;

    string first_word {appending.substr(0,10)};
    cout << "first_word: " << first_word << endl;
    cout << "first_word: " << appending.substr(11,20) << endl;
    cout << "first_word: " << appending.substr(14) << endl;

    string name_pet = "Peter";
    string name_al = "Alice";
    cout << "compare al to pet: " << name_al.compare(name_pet) << endl;
    cout << "compare pet to al: " << name_pet.compare(name_al) << endl;
    cout << "compare pet to pet: " << name_pet.compare(name_pet) << endl;

    cout << "Find \"Beautiful\": " << appending.find("Beautiful") << endl;
    cout << "Find \"World\": " << appending.find("World") << endl;
    cout << "Find \"t\": " << appending.find("T") << endl;
    return 0;
}