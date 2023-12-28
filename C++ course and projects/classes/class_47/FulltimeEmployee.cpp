#include <string>
#include <iostream>

#include "FulltimeEmployee.h"

using std::string;
using std::cout;
using std::endl;

FulltimeEmployee::FulltimeEmployee(string name, float base_salary, float bonus_percent) :
    Employee("fulltime", name), base_salary(base_salary), bonus_percent(bonus_percent) {
}

float FulltimeEmployee::get_salary() const {
    cout << "FulltimeEmployee: get_salary() " << get_name()  << endl;

    return  base_salary + base_salary * bonus_percent * 0.01;
}

float FulltimeEmployee::get_stock_compensation() const {
    cout << "FulltimeEmployee: get_stock_compensation() " << get_name()  << endl;

    return 0;
}
