#include <iostream>
#include "AudioDevice.h"
#include "Speakers.h"

using std::cout;
using std::endl;

int main()
{
    AudioDevice ad {"Samsung", 99.99};
    Speakers sp {"Bose", 400, "15in x 10in  x 10in"};

    cout << "------------- Audio Device ----------------" << endl;
    cout << "Brand: " << ad.get_brand() 
         << " price: " << ad.get_price() << endl;

    cout << "------------- Speakers ----------------" << endl;
    cout << "Brand: " << sp.get_brand() 
         << " price Speakers: " << sp.get_price(9.99) << " price AudioDevice: " << sp.AudioDevice::get_price() << endl;
}

