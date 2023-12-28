#include<iostream>

using std::cout;
using std::endl;
using std::string;

class BankAcoount{
    public:
        string name {}; // By default private
        float balance {0}; // By default private
};

int main()
{
    BankAcoount vagg;
    BankAcoount danae;
    cout << "Vagg Details" <<endl;
    vagg.name = "Vagg";
    vagg.balance = 1000;
    cout << vagg.name << endl;
    cout << vagg.balance << endl;

    cout << "Danae Details" <<endl;
    danae.name = "Danae";
    danae.balance = 500;
    cout << danae.name << endl;
    cout << danae.balance << endl;
}
