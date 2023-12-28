#include <iostream>
#include <stack>
#include <regex>

#include "Browser.h"
#include "BrowserException.h"
#include "InvalidInputException.h"
#include "MalformedUrlException.h"
#include "NavigationException.h"

using std::cout;
using std::endl;
using std::string;
using std::stack;
using std::regex;
using std::regex_match;

void Browser::open_url(string url) {
    regex url_matcher {"((http|https)://)(www.)?[a-zA-Z0-9@:%._\\+~#?&//=]{2,256}\\.[a-z]{2,6}\\b([-a-zA-Z0-9@:%._\\+~#?&//=]*)"};
    
    if (regex_match(url, url_matcher)) {
        url_history.push(url);

        if (url_history.size() > 4) {
            throw BrowserException("History size limited on this browser");
        }
    } else {
        throw MalformedUrlException("Could not navigate to malformed URL: " + url);
    }
}

string Browser::back(int times)
{
    if (times < 0) {
        throw InvalidInputException("Input argument 'times' cannot be less than 0");
    }

    // Pop the current page from the URL history, the back button
    // always moves back from the current page
    if (!url_history.empty()) {
        url_history.pop();
    }
    
    string url_navigated_to {};

    for (int i = 0; i < times; i++) {

        if (url_history.empty()) {
            throw NavigationException("Could not navigate back, out of URL history range");
        }

        url_navigated_to = url_history.top();
        cout << "Navigating to: " << url_navigated_to << endl;

        url_history.pop();
    }

    return url_navigated_to;
}
