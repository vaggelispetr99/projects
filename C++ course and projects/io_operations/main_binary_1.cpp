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
  ofstream output_file_stream;

  output_file_stream.open("countries.dat", std::ios::out | std::ios::binary);

  if (!output_file_stream) {
    cout << "The file countries.dat could not be opened for writing" << endl;
    return 1;
  }

  vector<string> string_vector {"India", "United States of America", "Singapore", "Senegal"};

  for (auto& i : string_vector) {
    output_file_stream << i << endl;
  }

  output_file_stream.close();

  cout << "*****File writing completed*****" << endl;

  return 0;
}
