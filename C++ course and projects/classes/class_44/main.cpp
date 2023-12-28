#include <iostream>
#include "Employee.h"
#include "FulltimeEmployee.h"
#include "ContractEmployee.h"

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
    ContractEmployee emp_terence {"Terence", 60000, 10, 200};

    cout << "------ Employee ------" << endl;
    display_total_salary(emp_joan.increase_salary_and_return_this());

    cout << "------ FulltimeEmployee ------" << endl;
    display_total_salary(emp_janice.increase_salary_and_return_this());

    cout << "------ ContractEmployee ------" << endl;
    display_total_salary(emp_terence.increase_salary_and_return_this());
}


