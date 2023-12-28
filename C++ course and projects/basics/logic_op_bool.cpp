#include <iostream>
#include <typeinfo>
//using namespace std;
using std::cout;
using std::endl;

int main()
{
    bool is_valid = true;
    bool b1 = 0;
    bool b2 = 515;
    bool b3 = -156;
    bool b4 = 152.365;
    cout << "Is this valid? " << is_valid << endl;
    cout << "Is this valid? " << b1 << endl;
    cout << "Is this valid? " << b2 << endl;
    cout << "Is this valid? " << b3 << endl;
    cout << "Is this valid? " << b4 << endl;

    bool first_cond = 10 > 5;
    bool sec_cond = 10 <= 5;

    int test = 1000;

    bool test_check = test == 0;
    cout << "Is this valid? " << first_cond << endl;
    cout << "Is this valid? " << sec_cond << endl;
    cout << "Is this valid? " << test_check << endl;

    bool res = (10 > 5) && (5 < 6);
    bool res_2 = (1 > 5) || (5 < 6);
    bool res_3 = !(5 < 6);

    cout << "Is this valid? " << res << endl;
    cout << "Is this valid? " << res_2 << endl;
    cout << "Is this valid? " << res_3 << endl;

    return 0;
}