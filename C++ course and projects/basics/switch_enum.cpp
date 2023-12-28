#include <iostream>
#include <vector>
#include <algorithm>

using std::cout;
using std::cin;
using std::endl;
using std::vector;
using std::find;


enum myChoice { EASY = 1, MEDIUM = 2, HARD = 3 };

int main(){

    int x;
    cin >> x;

    switch (x){
    case EASY:  // (can I just type case EASY?)
        cout << "You picked easy!";
        break;

    case MEDIUM:
        cout << "You picked medium!";
        break;

    case HARD: // ..... (the same thing as case 2 except on hard.)
        cout << "You picked hard!";
        break;
    default:
        cout << "default";
    }
    return 0;
}