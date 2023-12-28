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
  char char_buffer[200];
  while (true) {
    input_file_stream.getline(char_buffer, 200);

    if (input_file_stream.eof()) {
      break;
    }

    cout << char_buffer << endl;
    cout << "Count of characters read: " << input_file_stream.gcount() << endl;
  }

  cout << "*****File reading completed*****" << endl;

  return 0;
}