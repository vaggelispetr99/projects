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

  rm = create_resource_manager(
      "AnotherResourceManager", "AnotherConnectionString");

  ResourceManager rm_2 = create_resource_manager(
    "ResourceManager_2", "ConnectionString_2");

  ResourceManager another_rm = create_resource_manager(
      "AnotherResourceManager_2", "AnotherConnectionString_2");

  rm_2 = std::move(another_rm);

  cout << rm << endl;
  cout << rm_2 << endl;
  cout << "-------End of program - destructors---------" << endl;
}
