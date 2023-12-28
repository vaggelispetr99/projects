#pragma once
#include <string>
#include "Student.h"

class UndergradStudent : public Student {
  
  private:
    std::string major;

  public:
    UndergradStudent(std::string name, std::string major);

    std::string get_major() const;

    float compute_tuition() const override;
};
