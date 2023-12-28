#include <iostream>
#include <fstream>
#include <vector>

using std::ifstream;
using std::ofstream;
using std::cout;
using std::endl;
using std::string;
using std::vector;


int main()
{
  ifstream input_file_stream;

  input_file_stream.open("names.txt", std::ios::in);

  if (!input_file_stream) {
    cout << "The file names.txt could not be opened for writing" << endl;
    return 1;
  }

  while (true) {
    string string_var;

    std::getline(input_file_stream, string_var);

    if (input_file_stream.eof()) {
      break;
    }

    cout << string_var << endl;
  }

  input_file_stream.close();
  
  cout << "*****File reading completed*****" << endl;

  return 0;
}