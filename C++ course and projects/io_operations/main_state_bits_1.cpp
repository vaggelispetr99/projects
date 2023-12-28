#include <iostream>
#include <fstream>
#include <vector>

using std::fstream;
using std::cout;
using std::cin;
using std::endl;
using std::string;

int main()
{
  fstream file_stream;

  file_stream.open("integers_3.txt", std::ios::in | std::ios::out);

  if (!file_stream) {
    cout << "The file integers.txt could not be opened for reading and writing" << endl;
    return 1;
  }

  while (true) {
    int num;
    file_stream >> num;

    if (file_stream.bad()) {
      cout << "A FATAL error occurred -- bailing!" << endl;
      break;
    }

    if (file_stream.good()) {
      cout << "Good bit set, stream is ok" << endl;
    } else if (file_stream.eof()) {
      cout << "End of file reached file reading complete" << endl;
      break;
    } else if (file_stream.fail()) {
      cout << "A non-fatal error occurred while reading -- recovering" << endl;

      // Clear the failbit
      file_stream.clear();

      // Do something to recover from the non-fatal error
      string ignored;
      std::getline(file_stream, ignored);

      file_stream.setstate(std::ios::badbit);

      continue;
    }

    cout << num << endl;
  }

  return 0;
}