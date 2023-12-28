#include<iostream>

#include "class_3.h"

using std::cout;
using std::endl;

int main()
{
    BankAcoount vagg("Takis", 50.5698);
    BankAcoount danae{"Anna", 18000.56};
    BankAcoount george("George");
    BankAcoount chris;
    cout << "Vagg Details" <<endl;
    vagg.set_name("Vagg");
    vagg.set_balance(1000);
    cout << vagg.get_name() << endl;
    cout << vagg.get_balance() << endl;

    cout << "Danae Details" <<endl;
    danae.set_name("Danae");
    danae.set_balance(500);
    cout << danae.get_name() << endl;
    cout << danae.get_balance() << endl;

    cout << "George Details" <<endl;
    cout << george.get_name() << endl;
    cout << george.get_balance() << endl;

    cout << "Chris Details" <<endl;
    cout << chris.get_name() << endl;
    cout << chris.get_balance() << endl;
}