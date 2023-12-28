#include <string>
#include <iostream>

#include "ResourceManager.h"
#include "HeavyweightResource.h"

using std::string;
using std::cout;
using std::endl;

ResourceManager::ResourceManager(string name) : name(name) {
    cout << "Constructing resource manager: " << name << endl;
}

void ResourceManager::create_resource(string connection_string) {
    resource.reset();
    resource = std::make_shared<HeavyweightResource>(connection_string);
}
