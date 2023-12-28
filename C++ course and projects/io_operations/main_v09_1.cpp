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
  ofstream output_file_stream("another_one_quotes_file.txt");

  if (!input_file_stream) {
    cout << "The file quotes_file.txt could not be opened for reading" << endl;
    return 1;
  }

  if (!output_file_stream) {
    cout << "The file another_quotes_file.txt could not be opened for writing" << endl;
    return 1;
  }


    input_file_stream.seekg(0, input_file_stream.end);
    int file_length = input_file_stream.tellg();
    input_file_stream.seekg(0, input_file_stream.beg);

    char* buffer = new char[file_length];
    input_file_stream.read(buffer, file_length);
    output_file_stream.write(buffer, file_length);


  cout << "*****File reading and writing completed*****" << endl;
  delete [] buffer;
  buffer = nullptr;

  return 0;
}
