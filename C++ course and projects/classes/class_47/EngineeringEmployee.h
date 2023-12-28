#pragma once
#include <string>
#include "FulltimeEmployee.h"

class EngineeringEmployee : public FulltimeEmployee {

  private:
    int num_stock_awards;
    float stock_price;

  public:
    EngineeringEmployee(std::string name, float base_salary, float bonus_percent, 
        int num_stock_awards, float stock_price);

    float get_stock_compensation() const override final;
};
