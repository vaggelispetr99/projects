#pragma once
#include <string>
#include "Employee.h"

class FulltimeEmployee : public Employee {

  private:
    float bonus_percent;

  public:
    FulltimeEmployee(std::string name, float salary, float bonus_percent);

    float get_bonus_percent() const;

    float get_total_salary() const;

    const FulltimeEmployee& increase_salary_and_return_this(); // Employee class is the base class of the FulltimeEmployee class and so we can return an reference (or a pointer) to the FulltimeEmployee besides Employee and dynamicall dispatch of functions still work (this is a virtual function) 
};
