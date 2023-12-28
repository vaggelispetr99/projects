#include <iostream>
#include "Employee.h"
#include "FulltimeEmployee.h"
#include "ContractEmployee.h"

using std::cout;
using std::endl;


int main()
{
    Employee emp_joan {"parttime", "Joan", 20000};
    FulltimeEmployee emp_janice {"Janice", 50000, 5.5};
    ContractEmployee emp_terence {"Terence", 60000, 10, 200};

    Employee* joan_ptr {&emp_joan};
    Employee* janice_ptr {&emp_janice};
    Employee* terence_ptr {&emp_terence};

    cout << "------ Employee ------" << endl;
    joan_ptr->display_total_salary();

    cout << "------ FulltimeEmployee ------" << endl;
    janice_ptr->display_total_salary();

    cout << "------ ContractEmployee ------" << endl;
    terence_ptr->display_total_salary();

    Employee& joan_ref {emp_joan};
    Employee& janice_ref {emp_janice};
    Employee& terence_ref {emp_terence};

    cout << "------ Employee ------" << endl;
    joan_ref.display_total_salary();

    cout << "------ FulltimeEmployee ------" << endl;
    janice_ref.display_total_salary();

    cout << "------ ContractEmployee ------" << endl;
    terence_ref.display_total_salary();
}


