#include <iostream>


#include "Browser.h"
#include "BrowserException.h"
#include "InvalidInputException.h"
#include "NavigationException.h"

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main()
{
  Browser firefox;
  try {

    int num_urls = 0;
    string url;

    while (num_urls < 3) {
      cout << "Please enter a URL: ";
      cin >> url;
      
      firefox.open_url(url);
      cout << "Opened url: " << url << endl;

      num_urls++;
    }

    cout << "How far back to navigate?: ";
    int times;
    cin >> times;

    string final_url_navigated_to = firefox.back(times);
    cout << "Navigation successful, final URL: " << final_url_navigated_to << endl;
  } catch (InvalidInputException ex) {

    cout << ex.what() << endl;
    cout << "Input was not valid (InvalidInputException thrown)" << endl;
  } catch (NavigationException ex) {

    cout << ex.what() << endl;
    cout << "Navigation NOT successful (NavigationException thrown)" << endl;
  } 
}
