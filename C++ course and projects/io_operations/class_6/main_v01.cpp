#include <iostream>
#include <exception>

#include "Browser.h"

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::invalid_argument;
using std::out_of_range;


int main()
{
  Browser firefox;
  try {
    firefox.open_url("https://www.cnn.com");
    firefox.open_url("https://www.nyt.com");
    firefox.open_url("https://www.bloomberg.com");
    firefox.open_url("https://www.wsj.com");

    cout << "How far back to navigate?: ";
    int times;
    cin >> times;

    string final_url_navigated_to = firefox.back(times);
    cout << "Navigation successful, final URL: " << final_url_navigated_to << endl;
  } catch (invalid_argument& inv_arg_ex) {

    cout << inv_arg_ex.what() << endl;
    cout << "Navigation NOT successful (invalid_argument exception)" << endl;
  } catch (out_of_range& out_of_range_ex) {

    cout << out_of_range_ex.what() << endl;
    cout << "Navigation backward NOT successful (out_of_range_exception)" << endl;
  }
}
