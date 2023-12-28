#include <iostream>
#include "Employee.h"
#include "FulltimeEmployee.h"
#include "EngineeringEmployee.h"

using std::cout;
using std::endl;

void display_total_compensation(const Employee& emp_ref) { // only reference or pointer for Abstract class arguments in functions, as pass by value will call he copy contructor
   cout << emp_ref.get_total_compensation() << endl;
   cout << "--------------------------------" << endl;
}

int main()
{
    FulltimeEmployee emp_joe {"Joe", 50000, 7};
    EngineeringEmployee emp_nina {"Nina", 70000, 10, 30, 500};

    Employee& emp_joe_ref = emp_joe;

    cout << "------ FulltimeEmployee ------" << endl;
    cout << "Total compensation: " << emp_joe.get_total_compensation() << endl;

    cout << "------ EngineeringEmployee ------" << endl;
    cout << "Total compensation: " << emp_nina.get_total_compensation() << endl;

    cout << "------ Employee (FulltimeEmployee)------" << endl;
    display_total_compensation(emp_joe_ref);
}


