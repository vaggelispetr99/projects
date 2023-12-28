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

  input_file_stream.seekg(-45, std::ios::end);
  cout << "Position after negative 45 seek from end: " << input_file_stream.tellg() << endl;

  std::getline(input_file_stream, buffer);
  cout << buffer << endl;
  cout << "Position after read: " << input_file_stream.tellg() << endl;

  input_file_stream.seekg(52, std::ios::beg);
  cout << "Position after 52 seek from beginning: " << input_file_stream.tellg() << endl;

  std::getline(input_file_stream, buffer);
  cout << buffer << endl;

  cout << "*****File reading completed*****" << endl;

  return 0;
}
