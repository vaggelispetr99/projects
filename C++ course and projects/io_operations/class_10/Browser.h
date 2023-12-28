#pragma once

#include <stack>

class Browser {

private:
  std::stack<std::string> url_history;
  
public:
  void open_url(std::string url);

  std::string back(int times);
};
