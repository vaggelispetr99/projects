#pragma once
#include<string>
// prefer not to use 'using' statements

class BankAcoount{
    private:
        std::string name; //initialization list are necessary for const, references (&) and const references (const int &)
        float balance; //initialization list are necessary for const, references (&) and const references (const int &)
        float fee; 
    public:

        BankAcoount() = default;
        /*BankAcoount(){
            cout << "Default constr" << endl;
        }*/
        BankAcoount(float fee);
        BankAcoount(float fee, std::string name);
        BankAcoount(float fee, std::string name, float balance);   

        std::string get_name();

        float get_balance();

        //void set_name(std::string n);

        //void set_balance(float b);
        
};