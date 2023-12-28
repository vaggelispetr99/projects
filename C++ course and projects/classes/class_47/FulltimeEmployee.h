#pragma once
#include <string>
#include "Employee.h"

class FulltimeEmployee : public Employee {

  private:
    float base_salary;
    float bonus_percent;

  public:
    FulltimeEmployee(std::string name, float base_salary, float bonus_percent);

    float get_salary() const override;

    float get_stock_compensation() const override;
};
