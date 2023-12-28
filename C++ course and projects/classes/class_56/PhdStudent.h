#pragma once
#include <string>
#include "GradStudent.h"

class PhdStudent : public GradStudent {
  
  private:
    bool research_assistantship;

  public:
    PhdStudent(std::string name, bool teaching_assistantship, 
               bool research_assistantship);

    bool has_research_assistantship() const;

    float compute_tuition() const override;
};
