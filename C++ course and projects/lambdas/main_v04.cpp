
#include <iostream>
#include <vector>
#include <exception>

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::exception;

template <typename T, typename Comparison>
const T find_max_or_min(vector<T> values, Comparison compare) {
    if (values.empty()) {
      throw exception();
    }

    T max_or_min = values.at(0);

    for (const T& val : values) {
      if (compare(val, max_or_min)) {
        max_or_min = val;
      }
    }                 

    return max_or_min;
}

int main()
{
  vector<double> double_vector {100.34, 23.98, 98.45, 56.34, -9.56, 112.45};

  cout << "Double------------" <<  endl;
  cout << "Maximum value is: " 
       << find_max_or_min(double_vector, 
                          [] (const double& a, const double& b) { return a > b;}) << endl;
  cout << "Minimum value is: " 
       << find_max_or_min(double_vector, 
                          [] (const double& a, const double& b) { return a < b;}) << endl;
  
  vector<string> string_vector {
    "Rosalind", "John", "Tim", "Igor", "Geraldine"
  };

  cout << "String------------" <<  endl;
  cout << "Longest string is: " 
       << find_max_or_min(string_vector, 
                          [] (const string& a, const string& b) {
                                return a.length() > b.length();
                          }) << endl;
  cout << "Shortest string is: " 
       << find_max_or_min(string_vector, 
                          [] (const string& a, const string& b) {
                                return a.length() < b.length();
                          }) << endl;
}


