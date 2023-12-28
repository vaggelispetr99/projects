#include <iostream>
#include <string>
#include <vector>

#include "ResourceManager.h"

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::to_string;

ResourceManager create_resource_manager(string name, string connection_string) {
  ResourceManager rm {name, connection_string};

  cout << "Returning ResourceManager by value" << endl;
  return rm;
}


int main()
{
  ResourceManager rm = create_resource_manager(
    "ResourceManager", "ConnectionString");

  ResourceManager another_rm = create_resource_manager(
      "AnotherResourceManager", "AnotherConnectionString");

  rm = std::move(another_rm);

  cout << rm << endl;
  cout << "-------End of program - destructors---------" << endl;
}
