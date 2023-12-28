#pragma once
#include <string>
#include "Student.h"

class GradStudent : public Student {
  
  private:
    bool teaching_assistantship;

  public:
    GradStudent(std::string name, bool teaching_assistantship);

    bool has_teaching_assistantship() const;

    float compute_tuition() const override;
};
