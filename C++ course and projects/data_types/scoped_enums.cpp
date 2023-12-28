#include <iostream>

using std::cout;
using std::endl;
// unscoped enum
/*enum FillColor{
    RED,
    GREEN,
    BLUE
};*/

// scoped enums
enum class FillColorScope{
    RED,
    GREEN,
    BLUE
};

enum class OutlineColorScope{
    RED,
    YELLOW,
    BLACK
};

int main(){
    FillColorScope fill_color = FillColorScope::RED;
    OutlineColorScope alt_fill_color = OutlineColorScope::RED;

    //cout << "The fill colorspecified is: " << fill_color << endl;
    //cout << "The alternate fill colorspecified is: " << alt_fill_color << endl;

    if (fill_color==FillColorScope::RED && alt_fill_color==OutlineColorScope::RED)
        cout << "success" << endl;
}