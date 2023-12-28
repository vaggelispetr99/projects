#include <string>
#include <iostream>

#include "ResourceManager.h"
#include "HeavyweightResource.h"

using std::string;
using std::cout;
using std::endl;

ResourceManager::ResourceManager(
    string name, string resource_connection_string) : name(name) {

    resource = new HeavyweightResource(resource_connection_string);

    cout << "Constructing resource manager: " << name << endl;
}

ResourceManager::ResourceManager(const ResourceManager& other) :
        name(other.name) {
    resource = new HeavyweightResource(*(other.resource));

    cout << "**Copy constructing resource manager: " << name << endl;
}

ResourceManager::ResourceManager(ResourceManager&& other) :
        name(other.name), resource(other.resource) {

    other.resource = nullptr;

    cout << "**Move constructing resource manager: " << name << endl;
}

ResourceManager& ResourceManager::operator=(ResourceManager rhs) {
    swap(rhs);

    cout << "Assigning resource manager: " << name << endl;

    return *this;
}

void ResourceManager::swap(ResourceManager& other) {
    std::swap(resource, other.resource);
    std::swap(name, other.name);
}

ResourceManager::~ResourceManager() {
    delete resource;
    //resource = nullptr;

    cout << "Destructing resource manager: " << name << endl;
}
