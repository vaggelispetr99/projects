#pragma once
#include <string>

class Student {
  private:
    std::string name;

  public:
    Student(std::string name);

    std::string get_name() const;

    float virtual compute_tuition() const = 0;
};
