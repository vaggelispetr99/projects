#pragma once

#include <string>

bool larger(const double& first_num, const double& second_num) {
  return first_num > second_num ? true : false;  
}

bool longer(const std::string& first_string, const std::string& second_string) {
  return first_string.length() > second_string.length() ? true : false;  
}

bool smaller(const double& first_num, const double& second_num) {
  return first_num < second_num ? true : false;  
}

bool shorter(const std::string& first_string, const std::string& second_string) {
  return first_string.length() < second_string.length() ? true : false;  
}
