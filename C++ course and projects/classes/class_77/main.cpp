#include <iostream>
#include <string>
#include <vector>

#include "function_templates.h"

using std::cout;
using std::endl;
using std::string;
using std::vector;

int main()
{
  vector<string> names_vector {"Bob", "Harry", "John", "Jon", "Constance", "Julliene"};

  string lily = "Lily";
  vector<string> smaller_than_lily = smaller(names_vector, lily);

  for (auto& el : smaller_than_lily) {
    cout << el << endl;
  }

  vector<string> larger_than_lily = larger(names_vector, lily);

  for (auto& el : larger_than_lily) {
    cout << el << endl;
  }
  cout << "---------------------------------------------------" << endl;
  string large_string = "looooooooooooong string";
  string small_string = "short string";

  cout << "Larger: " << larger(large_string, small_string) << endl;
  cout << "Smaller: " << smaller(large_string, small_string) << endl;

  cout << "Larger (integers): " << larger(1120, 34) << endl;
  cout << "Smaller (doubles): " << smaller(5409.34, 567.29) << endl;

  cout << "---------------------------------------------------" << endl;
  
  int int_a = 876;
  int int_b = 2349;

  float float_a = 654.23;
  float float_b = 3213.11;

  cout << "Larger of 2349 and 876 is: " << *(larger(&int_a, &int_b)) << endl;

  cout << "Smaller of 3213.11 and 654.23 is: " << *(smaller(&float_a, &float_b)) << endl;


  return 0;
}
