#include <iostream>
#include "Car.h"

using std::cout;
using std::endl;

int main()
{
    Car honda_civic {"Honda", "Civic", 35000, "music system, heated seats", 3000};
    Car toyota_camry {"Toyota", "Camry", 32000, "music system, voice commands", 10000};

    cout << "------ Honda Civic ------" << endl;
    cout << "Vehicle price: " << honda_civic.Vehicle::get_price() << endl;
    cout << "Accessories price: " << honda_civic.Accessories::get_price() << endl;
    cout << "Vehicle taxes: " << honda_civic.Vehicle::taxes() << endl;

    cout << "------ Toyota Camry ------" << endl;
    cout << "Vehicle price: " << toyota_camry.Vehicle::get_price() << endl;
    cout << "Accessories price: " << toyota_camry.Accessories::get_price() << endl;
    cout << "Vehicle taxes: " << toyota_camry.Vehicle::taxes() << endl;
}

