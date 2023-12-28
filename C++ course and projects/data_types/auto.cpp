#include <iostream>
#include <typeinfo>
//using namespace std;
using std::cout;
using std::endl;

int main()
{
    auto fl{100.6454131031F};
    cout << "Float is: " << typeid(fl).name() << endl;
    auto db(9.807);
    cout << "Double is: " << typeid(db).name() << endl;
    auto lng = 6.6260704e-74L;
    cout << "Long is: " << typeid(lng).name() << endl;
    auto integ = 1000;
    cout << "Int is: " <<  typeid(integ).name() << endl;
    auto string_var = "Hello world there";
    cout << "string_var is: " << typeid(string_var).name() << endl;
    auto char_var = 'a';
    cout << "char_var is: " <<  typeid(char_var).name() << endl;
    auto long_var = 2'000'000'000'000;
    cout << "long_var is: " << typeid(long_var).name() << endl;
    auto result = ((integ * long_var) + db)/fl;
    cout << "result is: " << typeid(result).name() << endl;

    return 0;
} 