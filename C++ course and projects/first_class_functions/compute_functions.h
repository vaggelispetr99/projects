#pragma once

#include <iostream>

double add(double first_num, double second_num) {
  std::cout << "Performing addition..." << std::endl;
  return first_num + second_num;  
}

double subtract(double first_num, double second_num) {
  std::cout << "Performing subtraction..." << std::endl;
  return first_num - second_num;
}

double multiply(double first_num, double second_num) {
  std::cout << "Performing multiplication..." << std::endl;
  return first_num * second_num;
}

double divide(double first_num, double second_num) {
  std::cout << "Performing division..." << std::endl;
  return first_num / second_num;
}
