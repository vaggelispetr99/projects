#include <iostream>
#include "Department.h"

using std::cout;
using std::endl;

int main()
{
    Department engineering("Softech", "engineering", 100, 2500000.00); 
    Department operations("Softech", "ops", 23, 500000.00);

    // Department sales("Bigtech", "sales", 200, 1500000.00);

    engineering.show();
    operations.show();

    Department engineering_ops = engineering + operations;
    engineering_ops.show();

    engineering += operations;
    engineering.show();


    // engineering += sales;
}


