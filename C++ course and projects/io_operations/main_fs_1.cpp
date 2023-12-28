#include <iostream>
#include <filesystem>

using std::cout;
using std::endl;
using std::string;

namespace fs = std::filesystem;

int main()
{
  fs::path current_path {"C:\\Users\\a864753\\OneDrive - Atos\\Desktop"};
  //fs::path current_path {"/Users/a864753/OneDrive - Atos/Desktop"}; //alternative
  //fs::path current_path {"C:/Users/a864753/OneDrive - Atos/Desktop"}; //alternative

  cout << "Does path exist?: " << std::boolalpha << fs::exists(current_path) << endl;

  cout << "Root name: " << current_path.root_name() << endl;
  cout << "Root directory: " << current_path.root_directory() << endl;

  cout << "Relative path: " << current_path.relative_path() << endl;
  cout << "Parent path: " << current_path.parent_path() << endl;

  return 0;
}
