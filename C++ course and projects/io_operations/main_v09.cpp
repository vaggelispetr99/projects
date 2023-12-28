#include <iostream>
#include <fstream>

using std::ifstream;
using std::ofstream;
using std::cout;
using std::endl;
using std::string;

int main()
{
  ifstream input_file_stream("quotes_file.txt");
  ofstream output_file_stream("another_quotes_file.txt");

  if (!input_file_stream) {
    cout << "The file quotes_file.txt could not be opened for reading" << endl;
    return 1;
  }

  if (!output_file_stream) {
    cout << "The file another_quotes_file.txt could not be opened for writing" << endl;
    return 1;
  }

  while (true) {
    char ch = input_file_stream.get();

    // char ch;
                                  // alternative of line 19
    // input_file_stream.get(ch);

    if (input_file_stream.eof()) {
      break;
    }
    output_file_stream.put(ch);
    //cout << ch << "|";
  }

  cout << "*****File reading completed*****" << endl;

  return 0;
}