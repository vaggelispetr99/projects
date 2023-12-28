#include <iostream>
#include <stack>
#include <regex>
#include <exception>

#include "Browser.h"

using std::cout;
using std::endl;
using std::string;
using std::stack;
using std::regex;
using std::regex_match;
using std::invalid_argument;
using std::out_of_range;

void Browser::open_url(string url) {
    regex url_matcher {"((http|https)://)(www.)?[a-zA-Z0-9@:%._\\+~#?&//=]{2,256}\\.[a-z]{2,6}\\b([-a-zA-Z0-9@:%._\\+~#?&//=]*)"};
    
    if (regex_match(url, url_matcher)) {
        url_history.push(url);
    } else {
        throw invalid_argument("Could not navigate to malformed URL: " + url);
    }
}

string Browser::back(int times)
{
    if (times < 0) {
        throw invalid_argument("Input argument 'times' cannot be less than 0");
    }

    // Pop the current page from the URL history, the back button
    // always moves back from the current page
    if (!url_history.empty()) {
        url_history.pop();
    }

    string url_navigated_to {};

    for (int i = 0; i < times; i++) {

        if (url_history.empty()) {
            throw out_of_range("Could not navigate back, out of URL history range");
        }

        url_navigated_to = url_history.top();
        cout << "Navigating to: " << url_navigated_to << endl;

        url_history.pop();
    }

    return url_navigated_to;
}
