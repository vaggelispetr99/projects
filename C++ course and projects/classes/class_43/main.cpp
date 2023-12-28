#include <iostream>
#include <memory>
#include "Employee.h"
#include "FulltimeEmployee.h"

using std::cout;
using std::endl;
using std::unique_ptr;
using std::make_unique;


void display_total_salary(const Employee& emp_ref) {
   cout << emp_ref.get_total_salary() << endl;
   cout << "--------------------------------" << endl;
}

void display_total_salary_by_vall(Employee emp_ref) {
   cout << emp_ref.get_total_salary() << endl;
   cout << "--------------------------------" << endl;
}

int main()
{
    Employee emp_joan {"parttime", "Joan", 20000};
    FulltimeEmployee emp_janice {"Janice", 50000, 5.5};
    Employee emp_janice_sliced = emp_janice;

    Employee* emp_vagg = new FulltimeEmployee {"Vagg", 1999, 6.5};

    unique_ptr<Employee> emp_chris = std::make_unique<FulltimeEmployee>("Chris", 85632, 8.3);

    cout << "------ Employee ------" << endl;
    display_total_salary(emp_joan);

    cout << "------ FulltimeEmployee ------" << endl;
    display_total_salary(emp_janice);

    cout << "------ FulltimeEmployee (sliced)------" << endl;
    display_total_salary(emp_janice_sliced);

    cout << "------ FulltimeEmployee pass by val (sliced)------" << endl;
    display_total_salary_by_vall(emp_janice);

    cout << "------ FulltimeEmployee raw pointer------" << endl;
    display_total_salary(*emp_vagg);

    cout << "------ FulltimeEmployee smart pointer------" << endl;
    display_total_salary(*emp_chris);   

    delete emp_vagg;
    emp_vagg = nullptr; 
}


