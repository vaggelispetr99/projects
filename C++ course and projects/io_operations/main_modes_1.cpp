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

  output_file_stream.open("names_new.txt", std::ios::out);

  if (!output_file_stream) {
    cout << "The file names.txt could not be opened for writing" << endl;
    return 1;
  }

  vector<string> string_vector {"Emily Robinson", 
                                "Nancy Drew", 
                                "Ned Parker", 
                                "Richard Edmundson"};

  for (auto& i : string_vector) {
    output_file_stream << i << '\n';
    std::flush(output_file_stream);
  }

  output_file_stream.close();

  cout << "*****File writing completed*****" << endl;

  return 0;
}
