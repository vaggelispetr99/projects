#include <iostream>
#include <stack>

#include "Browser.h"

using std::cout;
using std::cerr;
using std::endl;
using std::string;
using std::stack;

void Browser::open_url(string url) {
    url_history.push(url);
}

string Browser::back(int times)
{
    // Pop the current page from the URL history, the back button
    // always moves back from the current page
    if (!url_history.empty()) {
        url_history.pop();
    }

    string url_navigated_to {};
    string error_message = "Unable to navigate backward any further!";

    for (int i = 0; i < times; i++) {

        if (url_history.empty()) {
            throw error_message;
        }

        url_navigated_to = url_history.top();
        cout << "Navigating to: " << url_navigated_to << endl;

        url_history.pop();
    }

    return url_navigated_to;
}
