#include <iostream>
#include <filesystem>

using std::cout;
using std::endl;
using std::string;

namespace fs = std::filesystem;

int main()
{
  fs::path current_path {"C:\\Users\\a864753\\OneDrive - Atos\\Desktop\\vs_code\\io_operations\\main_fs_3.cpp"};

  cout << "Does path exist?: " << std::boolalpha << fs::exists(current_path) << endl;

  cout << "Root name: " << current_path.root_name() << endl;
  cout << "Root directory: " << current_path.root_directory() << endl;

  cout << "Relative path: " << current_path.relative_path() << endl;
  cout << "Parent path: " << current_path.parent_path() << endl;

  cout << "File name: " << current_path.filename() << endl;
  cout << "Stem: " << current_path.stem() << endl;
  cout << "Extension: " << current_path.extension() << endl;

  return 0;
}
