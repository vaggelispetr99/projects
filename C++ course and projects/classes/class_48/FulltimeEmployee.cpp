#include <string>
#include <iostream>

#include "FulltimeEmployee.h"

using std::string;
using std::cout;
using std::endl;

FulltimeEmployee::FulltimeEmployee(string name, float base_salary, float bonus_percent) :
    employee_type("fulltime"), name(name), 
    base_salary(base_salary), bonus_percent(bonus_percent) {
}

string FulltimeEmployee::get_employee_type() const {
    return employee_type;
}

string FulltimeEmployee::get_name() const {
    return name;
}

float FulltimeEmployee::get_salary() const {
    return  base_salary + base_salary * bonus_percent * 0.01;
}

float FulltimeEmployee::get_stock_compensation() const {
    return 0;
}

float FulltimeEmployee::get_total_compensation() const {
    return get_salary() + get_stock_compensation();
}
