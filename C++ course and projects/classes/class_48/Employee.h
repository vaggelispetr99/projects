#pragma once
#include <string>

class Employee {

  protected:
    Employee() = default;

  public:
    std::string virtual get_employee_type() const = 0;

    std::string virtual get_name() const = 0;

    float virtual get_salary() const = 0;

    float virtual get_stock_compensation() const = 0;

    float virtual get_total_compensation() const = 0;
};

