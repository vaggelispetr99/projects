#pragma once
#include<string>
// prefer not to use 'using' statements

class BankAcoount{
    private:
        std::string name {}; 
        float balance {0}; 
    public:

        BankAcoount() = default;
        /*BankAcoount(){
            cout << "Default constr" << endl;
        }*/

        BankAcoount(std::string n, float b = 300);   

        std::string get_name();

        float get_balance();

        void set_name(std::string n);

        void set_balance(float b);
};