#include <iostream>
#include "Employee.h"
#include "FulltimeEmployee.h"
#include "EngineeringEmployee.h"

using std::cout;
using std::endl;


void display_total_salary(const Employee& emp_ref) {
   cout << emp_ref.get_total_salary() << endl;
   cout << "--------------------------------" << endl;
}

int main()
{
    Employee emp_joan {"parttime", "Joan", 20000};
    FulltimeEmployee emp_janice {"Janice", 50000, 5.5};
    EngineeringEmployee emp_nina {"Nina", 70000, 10, 30, 500};

    cout << "------ Employee ------" << endl;
    display_total_salary(emp_joan);

    cout << "------ FulltimeEmployee ------" << endl;
    display_total_salary(emp_janice);

    cout << "------ EngineeringEmployee ------" << endl;
    display_total_salary(emp_nina);
}


