#pragma once
#include <string>
#include <iostream>

#include "HeavyweightResource.h"

class ResourceManager {

  private:
    std::string name;
    HeavyweightResource* resource;

  public:

    ResourceManager(std::string name, std::string resource_connection_string);

    std::string get_name() const {
      return name;
    }

    ResourceManager(const ResourceManager& other);

    ResourceManager(ResourceManager&& other);

    ResourceManager& operator=(ResourceManager& rhs);

    ResourceManager& operator=(ResourceManager&& rhs);

    void swap(ResourceManager& other);

    ~ResourceManager();

    friend std::ostream& operator<<(std::ostream& stream, const ResourceManager& rm);
};

inline std::ostream& operator<<(std::ostream& stream, const ResourceManager& rm) {

  std::cout << std::endl << "***************************" << std::endl;
  stream << "Name: " << rm.get_name() << std::endl;
  
  stream << *(rm.resource) << std::endl;

  std::cout << "***************************" << std::endl;

  return stream;
}
