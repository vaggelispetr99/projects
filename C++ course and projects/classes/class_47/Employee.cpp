#include <string>
#include <iostream>

#include "Employee.h"

using std::string;
using std::cout;
using std::endl;

Employee::Employee(string employee_type, string name) :
        employee_type(employee_type), name(name) {
}

string Employee::get_employee_type() const {
    return employee_type;
}

string Employee::get_name() const {
    return name;
}

float Employee::get_total_compensation() const {
    return get_salary() + get_stock_compensation();
}
