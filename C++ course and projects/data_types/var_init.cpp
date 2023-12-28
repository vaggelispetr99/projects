#include <iostream>
#include <typeinfo>
//using namespace std;
using std::cout;
using std::endl;

int main()
{
    int balance; //Declaration
    //std::cout << "My account " << std::endl;
    cout << "My account balance is: $" << balance << endl;

    
    cout << "My account balance is: $" << balance << endl;

    int balance_2(500); //Declaration
    //std::cout << "My account " << std::endl;
    cout << "My account balance is: $" << balance_2 << endl;

    int balance_3(balance_2 - 200);
    cout << "My account balance is: $" << balance_3 << endl;

    int balance_4{800}; //Declaration
    //std::cout << "My account " << std::endl;
    cout << "My account balance is: $" << balance_4 << endl;

    int balance_5{balance_2 - 200};
    cout << "My account balance is: $" << balance_5 << endl;

    int balance_6 = 1000.45; //Declaration

    cout << "My account balance is: $" << balance_6 << endl;

    int balance_7(1000.45); //Declaration

    cout << "My account balance is: $" << balance_7 << endl;

    //int balance_8{1000.45}; //Declaration

    cout << "Binary 1010 is: " << 0b1010 << " in decimal" << endl;
    cout << "octal 23 is: " << 023 << " in decimal" << endl;
    cout << "hexadecimal 11a is: " << 0x11a << " in decimal" << endl;

    float fl = 100.6454131031F;
    cout << "Float is: " << fl << typeid(fl).name() << endl;
    double db = 9.807;
    cout << "Double is: " << db << typeid(db).name() << endl;
    long double lng = 6.6260704e-74L;
    cout << "Long is: " << lng << typeid(lng).name() << endl;
    return 0;
} 