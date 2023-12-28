#include <iostream>
#include <fstream>
#include <vector>

using std::ifstream;
using std::ofstream;
using std::cout;
using std::endl;
using std::string;
using std::vector;

int main()
{
  ofstream output_file_stream;

  output_file_stream.open("names_new.txt", std::ios::app);

  if (!output_file_stream) {
    cout << "The file names.txt could not be opened for writing" << endl;
    return 1;
  }
  cout << output_file_stream.tellp() << endl;

  output_file_stream.seekp(25, std::ios::cur);
  cout << output_file_stream.tellp() << endl;

  vector<string> string_vector {"George Lafayette", 
                                "Edward Saviano", 
                                "Olga Smith"};

  for (auto& i : string_vector) {
    output_file_stream << i << endl;
  }

  output_file_stream.close();

  cout << "*****File writing completed*****" << endl;

  return 0;
}
