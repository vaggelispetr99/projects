#include<iostream>

using std::cout;
using std::endl;
using std::string;

class BankAcoount{
    private:
        string name {}; 
        float balance {0}; 
    public:

        BankAcoount() = default;
        /*BankAcoount(){
            cout << "Default constr" << endl;
        }*/

        BankAcoount(string n, float b){
            name = n;
            balance = b;

            cout << name << "   " << balance << endl;
        }

        string get_name(){
            return name;
        }

        float get_balance(){
            return balance;
        }

        void set_name(string n){
             name = n;
        }

        void set_balance(float b){
            balance = b;
        }
};

int main()
{
    BankAcoount vagg("Takis", 50.5698);
    BankAcoount danae{"Anna", 18000.56};
    BankAcoount george;
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
}
