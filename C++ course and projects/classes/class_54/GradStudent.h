#pragma once
#include <string>
#include "Student.h"
#include "UndergradStudent.h"

class GradStudent : public Student {
  
  private:
    bool teaching_assistantship;

  public:
    GradStudent(std::string name, bool teaching_assistantship);

    explicit GradStudent(const UndergradStudent& undergrad_student);

    bool has_teaching_assistantship() const;

    float compute_tuition() const override;
};
