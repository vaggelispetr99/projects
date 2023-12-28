#include <iostream>
#include "Department.h"

using std::cout;
using std::endl;

int main()
{
    Department engineering("Softech", "engineering", 50, 2000000.00); 
    Department operations("Softech", "ops", 23, 500000.00);
    Department hr("Softech", "hr", 4, 150000.00);

    engineering.show();
    operations.show();
    hr.show();

    Department engineering_ops = engineering + operations; 

    engineering_ops.show();

    Department engineering_ops_hr = engineering + operations + hr; 

    engineering_ops_hr.show();

    Department engineering_minus_ops_ = engineering - operations; 

    engineering_minus_ops_.show();
}


