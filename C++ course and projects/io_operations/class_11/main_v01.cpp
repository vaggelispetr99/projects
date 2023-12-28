#include <iostream>

#include "Browser.h"
#include "BrowserException.h"
#include "InvalidInputException.h"
#include "NavigationException.h"

using std::cin;
using std::cout;
using std::endl;
using std::string;


void manage_navigation(Browser& browser, string url) noexcept { //If you set a fuction as noexcept then it should not throw an exception that is not handled inside this function 
  try {

      browser.open_url(url);
      cout << "Opened url: " << url << endl;
  } catch (...) {

    cout << "Exception while opening url" << endl;
  }
}

void manage_back_navigation(Browser& browser, int times) noexcept { //If you set a fuction as noexcept then it should not throw an exception that is not handled inside this function
  try {

    string final_url_navigated_to = browser.back(times);
    cout << "Navigation successful, final URL: " << final_url_navigated_to << endl;    
  } catch (...) {

    cout << "Navigation backward failed" << endl;
  }
}

int main()
{
  Browser firefox;

  int num_urls = 0;
  string url;

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
}
