#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::find;
using std::string;


enum class myChoice { EASY = 3, MEDIUM, HARD};

int main(){

    int x;
    cin >> x;
    //myChoice task_status = static_cast<myChoice>(x);
    myChoice task_status = static_cast<myChoice>(x);

    switch (task_status){
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
