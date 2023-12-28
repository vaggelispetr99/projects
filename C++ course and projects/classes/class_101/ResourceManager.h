#pragma once
#include <string>
#include <iostream>
#include <memory>

#include "HeavyweightResource.h"

class ResourceManager {

  private:
    std::string name;
    std::shared_ptr<HeavyweightResource> resource;

  public:

    ResourceManager(std::string name);

    std::string get_name() const {
      return name;
    }

    void create_resource(std::string connection_string);

    friend std::ostream& operator<<(std::ostream& stream, const ResourceManager& rm);
};

inline std::ostream& operator<<(std::ostream& stream, const ResourceManager& rm) {

  std::cout << std::endl << "***************************" << std::endl;
  stream << "Name: " << rm.get_name() << std::endl;
  
  stream << *(rm.resource) << std::endl;

  std::cout << "***************************" << std::endl;

  return stream;
}
