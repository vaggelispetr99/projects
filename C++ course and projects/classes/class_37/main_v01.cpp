#include <iostream>
#include "Employee.h"
#include "FulltimeEmployee.h"
#include "ContractEmployee.h"

using std::cout;
using std::endl;

void display_total_salary(Employee* emp_ptr) {
   cout << emp_ptr->get_total_salary() << endl;
   cout << "----------------pointer----------------" << endl;

}

void display_total_salary(const Employee& emp_ref) {
   cout << emp_ref.get_total_salary() << endl;
   cout << "-----------------reference---------------" << endl;
}

int main()
{
    Employee emp_joan {"parttime", "Joan", 20000};
    FulltimeEmployee emp_janice {"Janice", 50000, 5.5};
    ContractEmployee emp_terence {"Terence", 60000, 10, 200};

    cout << "------ Employee ------" << endl;
    cout << emp_joan.get_total_salary() << endl;

    cout << "------ FulltimeEmployee ------" << endl;
    cout << emp_janice.get_total_salary() << endl;

    cout << "------ ContractEmployee ------" << endl;
    cout << emp_terence.get_total_salary() << endl;

    Employee* joan_ptr {&emp_joan};
    Employee* janice_ptr {&emp_janice};
    Employee* terence_ptr {&emp_terence};

    cout << "------ Employee ------" << endl;
    cout << joan_ptr->get_total_salary() << endl;

    cout << "------ FulltimeEmployee ------" << endl;
    cout << janice_ptr->get_total_salary() << endl;

    cout << "------ ContractEmployee ------" << endl;
    cout << terence_ptr->get_total_salary() << endl;

    Employee& joan_ref {emp_joan};
    Employee& janice_ref {emp_janice};
    Employee& terence_ref {emp_terence};

    cout << "------ Employee ------" << endl;
    cout << joan_ref.get_total_salary() << endl;

    cout << "------ FulltimeEmployee ------" << endl;
    cout << janice_ref.get_total_salary() << endl;

    cout << "------ ContractEmployee ------" << endl;
    cout << terence_ref.get_total_salary() << endl;

    cout << "------ Employee ------" << endl;
    display_total_salary(&emp_joan);

    cout << "------ FulltimeEmployee ------" << endl;
    display_total_salary(&emp_janice);

    cout << "------ ContractEmployee ------" << endl;
    display_total_salary(&emp_terence);

    cout << "------ Employee ------" << endl;
    display_total_salary(emp_joan);

    cout << "------ FulltimeEmployee ------" << endl;
    display_total_salary(emp_janice);

    cout << "------ ContractEmployee ------" << endl;
    display_total_salary(emp_terence);
}

