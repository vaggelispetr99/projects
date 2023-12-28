#include <iostream>
#include <fstream>

using std::ifstream;
using std::cout;
using std::endl;
using std::string;

int main()
{
  ifstream input_file_stream("student_scores.txt");

  if (!input_file_stream) {
    cout << "The file quotes_file.txt could not be opened for reading" << endl;
    return 1;
  }
  float math_score, english_score, science_score;
  char char_buffer[30];
  while (true) {
    input_file_stream.get(char_buffer, 30, ':');

    if (input_file_stream.peek() == ':') {
      input_file_stream.ignore();
    }
  
    if (input_file_stream.peek() == '\n') {
      input_file_stream.ignore();
    }

    if (input_file_stream.eof()) {
      break;
    }

    input_file_stream >> math_score >> english_score >> science_score;
    cout << char_buffer << endl;
    cout << math_score << " " << english_score << " " << science_score << endl;
  }

  cout << "*****File reading completed*****" << endl;

  return 0;
}