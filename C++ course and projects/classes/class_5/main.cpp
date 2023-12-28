#include<iostream>

#include "class_5.h"

using std::cout;
using std::endl;

int main()
{   float temp = 50.5698f;
    float temp1 = 18000.56f;
    BankAcoount vagg(50.5698f, "Takis");
    cout << &vagg << endl;
    BankAcoount danae{18000.56f, "Anna", 5896.3};
    cout << &danae << endl;
    //BankAcoount vagg(temp, "Takis");
    //BankAcoount danae{temp1, "Anna", 5896.3};
    BankAcoount george(882.56f);
    //BankAcoount chris;
    cout << "Vagg Details" <<endl;
    //vagg.set_name("Vagg");
    //vagg.set_balance(1000);
    cout << vagg.get_name() << endl;
    cout << vagg.get_balance() << endl;

    cout << "Danae Details" <<endl;
    //danae.set_name("Danae");
    //danae.set_balance(500);
    cout << danae.get_name() << endl;
    cout << danae.get_balance() << endl;

    cout << "George Details" <<endl;
    cout << george.get_name() << endl;
    cout << george.get_balance() << endl;
}