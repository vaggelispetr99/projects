#include <iostream>
#include "Department.h"

using std::cout;
using std::endl;

int main()
{
    Department engineering("Softech", "engineering", 5, 250000); 
    Department operations("Softech", "ops", 10, 300000.00);

    engineering.show();
    Department expanded_engineering = ++engineering;
    //engineering.operator++(); //alternative for ++engineering;

    cout << "*************** After pre-increment ***************" << endl << endl ;
    engineering.show();
    expanded_engineering.show();

    operations.show();
    Department expanded_operations_2 = operations++;
    
    //engineering.operator++(12345); //alternative for operations++

    cout << "*************** After post-increment ***************" << endl << endl ;
    operations.show();
    expanded_operations_2.show();

    ++operations = engineering;
    operations.show();
    engineering.show();
}


