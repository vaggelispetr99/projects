#include <string>
#include <iostream>

#include "EngineeringEmployee.h"

using std::string;
using std::cout;
using std::endl;

EngineeringEmployee::EngineeringEmployee(string name, float base_salary, 
        float bonus_percent, int num_stock_awards, float stock_price) :
    FulltimeEmployee(name, base_salary, bonus_percent), 
    num_stock_awards(num_stock_awards),
    stock_price(stock_price) {
}

float EngineeringEmployee::get_stock_compensation() const {
    return num_stock_awards * stock_price;
}
