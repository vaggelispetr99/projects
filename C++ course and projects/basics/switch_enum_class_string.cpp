#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <map>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::find;
using std::string;
using std::map;


enum class myChoice { EASY = 3, MEDIUM, HARD};

int main(){

    map <string, myChoice> status_map;
    status_map["EASY"] = myChoice::EASY;
    status_map["MEDIUM"] = myChoice::MEDIUM;
    status_map["HARD"] = myChoice::HARD;
    string x;
    cin >> x;
    //myChoice task_status = static_cast<myChoice>(x);
    //myChoice task_status = static_cast<myChoice>(x);

    switch (status_map[x]){
    case myChoice::EASY:  // (can I just type case EASY?)
        cout << "You picked easy!";
        break;

    case myChoice::MEDIUM:
        cout << "You picked medium!";
        break;

    case myChoice::HARD: // ..... (the same thing as case 2 except on hard.)
        cout << "You picked hard!";
        break;
    default:
        cout << "default";
    }
    return 0;
}
