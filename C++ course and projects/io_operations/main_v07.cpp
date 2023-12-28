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

  input_file_stream.seekg(5, std::ios::cur);
  cout << "Current position: " << input_file_stream.tellg() << endl;

  std::getline(input_file_stream, buffer);
  cout << buffer << endl;
  cout << "Position after read: " << input_file_stream.tellg() << endl;

  input_file_stream.seekg(-20, std::ios::cur);
  cout << "Position after negative 20 seek: " << input_file_stream.tellg() << endl;

  std::getline(input_file_stream, buffer);
  cout << buffer << endl;

  cout << "*****File reading completed*****" << endl;

  return 0;
}
