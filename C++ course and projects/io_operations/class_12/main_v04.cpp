#include <iostream>
#include <exception>

#include "Browser.h"
#include "BrowserException.h"
#include "InvalidInputException.h"
#include "NavigationException.h"

using std::cin;
using std::cout;
using std::endl;
using std::string;


void manage_navigation(Browser& browser, string url) {
  try {

      browser.open_url(url);
      cout << "Opened url: " << url << endl;
  } catch (BrowserException& ex) {

    cout << "Exception while opening url" << endl;

    //throw ex; // causes object slicing as copy the exception from the catch argument
    throw; //rethrow correct the exception
  }
}

void manage_back_navigation(Browser& browser, int times) {
  try {

    string final_url_navigated_to = browser.back(times);
    cout << "Navigation successful, final URL: " << final_url_navigated_to << endl;    
  } catch (BrowserException& ex) {

    cout << "Navigation backward failed" << endl;
    //throw ex; // causes object slicing as copy the exception from the catch argument
    throw; //rethrow correct the exception
  }
}

int main()
{
  Browser firefox;

  int num_urls = 0;
  string url;

  try {
    while (num_urls < 3) {
      cout << "Please enter a URL: ";
      cin >> url;
      
      manage_navigation(firefox, url);

      num_urls++;
    }

    cout << "How far back to navigate?: ";
    int times;
    cin >> times;

    manage_back_navigation(firefox, times);

  } catch (std::exception& ex) {
    cout << "A bad exception occurred: " << ex.what() << endl;
  }
}
