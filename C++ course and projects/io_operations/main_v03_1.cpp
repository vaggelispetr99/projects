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

  char char_buffer[20];
  while (true) {
    input_file_stream.get(char_buffer, 20);

    if (input_file_stream.eof()) {
      break;
    }

    if (input_file_stream.peek() == '\n') {
      input_file_stream.ignore();
    }

    cout << char_buffer << endl;
  }

  cout << "*****File reading completed*****" << endl;

  return 0;
}