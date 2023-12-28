#pragma once
#include<string>
// prefer not to use 'using' statements

class BankAcoount{
    private:
        const std::string name; //initialization list are necessary for const, references (&) and const references (const int &)
        const float balance; //initialization list are necessary for const, references (&) and const references (const int &)
        const float& fee; 
    public:

        BankAcoount() = default;
        /*BankAcoount(){
            cout << "Default constr" << endl;
        }*/

        BankAcoount(const float& f, std::string n, float b = 300);   

        std::string get_name();

        float get_balance();

        //void set_name(std::string n);

        //void set_balance(float b);
        
};