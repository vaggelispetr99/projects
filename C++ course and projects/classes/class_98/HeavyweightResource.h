#pragma once
#include <string>
#include <iostream>

class HeavyweightResource {
  private:
    std::string connection_string;

  public:

    HeavyweightResource(std::string connection_string);

    std::string get_connection_string() const {
      return connection_string;
    }

    ~HeavyweightResource();
};

inline std::ostream& operator<<(std::ostream& stream, const HeavyweightResource& resource) {
  stream << "Resource connection string: " << resource.get_connection_string() << std::endl;

  return stream;
}
