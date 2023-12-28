#include <iostream>
#include <fstream>

using std::ifstream;
using std::cout;
using std::endl;
using std::string;


int main()
{
  ifstream input_file_stream("quotes_file.txt");

  if (!input_file_stream) {
    cout << "The file quotes_file.txt could not be opened for reading" << endl;
    return 1;
  }

  string buffer;

  cout << "Initial position: " << input_file_stream.tellg() << endl;

  input_file_stream.seekg(11);
  cout << "Current position: " << input_file_stream.tellg() << endl;

  char ch = input_file_stream.get();
  cout << "Character of read: " << ch << endl;
  cout << "Position after read: " << input_file_stream.tellg() << endl;

  cout << "*****File reading completed*****" << endl;

  return 0;
}
