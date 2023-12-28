#pragma once
#include <string>
#include "Employee.h"

class FulltimeEmployee final : public Employee { // Can not be used as base class anymore

  private:
    float bonus_percent;

  public:
    FulltimeEmployee(std::string name, float salary, float bonus_percent);

    float get_total_salary(float bonus = 8) const override; // not a good practise to have default values in virtual functions' arguments as they are statically dispatched

    ~FulltimeEmployee();
};
