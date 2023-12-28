#include <iostream>
#include <fstream>
#include <vector>

using std::ifstream;
using std::ofstream;
using std::string;
using std::cout;
using std::endl;
using std::vector;

int main()
{
  ifstream input_file_stream;

  input_file_stream.open("countries.dat", std::ios::in | std::ios::binary);

  if (!input_file_stream) {
    cout << "The file countries.dat could not be opened for reading" << endl;
    return 1;
  }

  for (int i = 0; i < 4; i++) {
    string country;

    std::getline(input_file_stream, country);

    cout << country << endl;
  }

  input_file_stream.close();

  cout << "*****File reading completed*****" << endl;

  return 0;
}
