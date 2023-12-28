#include <string>
#include <iostream>

#include "HeavyweightResource.h"

using std::string;
using std::cout;
using std::endl;

HeavyweightResource::HeavyweightResource(string connection_string) :
    connection_string(connection_string) {

    cout << "Constructing resource: " << connection_string << endl;
}

HeavyweightResource::~HeavyweightResource() {
    cout << "Destructing resource: " << connection_string << endl;
}
