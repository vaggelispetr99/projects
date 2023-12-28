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
  string name_prefix = "ResourceManager-";
  string connection_string_prefix = "ConnectionString-";

  vector<ResourceManager> rm_vector;

  for (int i = 1; i < 10; i++) {

    string suffix = to_string(i);

    rm_vector.push_back(create_resource_manager(
        name_prefix + suffix, connection_string_prefix + suffix));
  }

  cout << "-------End of program - destructors---------" << endl;
}
