#include <iostream>
#include "Department.h"

using std::cout;
using std::endl;

int main()
{
    Department engineering("Softech", "engineering", 100, 2500000.00); 
    Department operations("Softech", "ops", 23, 500000.00);
    Department hr("Softech", "hr", 4, 150000.00);

    engineering.show();
    operations.show();
    hr.show();

    (engineering += operations) += hr;

    engineering.show();
    operations.show();
    hr.show();

    engineering += operations;

    engineering.show();
    operations.show();
}


