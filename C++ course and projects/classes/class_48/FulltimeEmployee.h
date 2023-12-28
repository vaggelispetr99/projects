#pragma once
#include <string>
#include "Employee.h"

class FulltimeEmployee : public Employee {
  private:
    std::string employee_type;
    std::string name;
    float base_salary;
    float bonus_percent;

  public:
    FulltimeEmployee(std::string name, float base_salary, float bonus_percent);

    std::string get_employee_type() const override;

    std::string get_name() const override;

    float get_salary() const override;

    float get_stock_compensation() const override;

    float get_total_compensation() const override;
};
