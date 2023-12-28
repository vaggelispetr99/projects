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

int main()
{
   Employee emp_joan {"parttime", "Joan", 20000};
   FulltimeEmployee emp_janice {"Janice", 50000, 5.5};
   //Employee& emp_chris = emp_janice; 



   cout << "------ Employee ------" << endl;
   cout << emp_joan.get_total_salary() << endl;
   display_total_salary(emp_joan);

   cout << "------ FulltimeEmployee ------" << endl;
   cout << emp_janice.get_total_salary()<< endl;
   display_total_salary(emp_janice);
}


