#include <iostream>
#include <filesystem>

using std::cout;
using std::endl;
using std::string;

namespace fs = std::filesystem;

int main()
{
  fs::path current_path = fs::current_path();

  // Concatenates paths using a path separator
  current_path /= "files";

  cout << "Path: " << current_path << endl;

  if (fs::exists(current_path) && fs::is_directory(current_path)) {

    for (const fs::directory_entry& entry : fs::directory_iterator(current_path)) {
      
      if (fs::is_directory(entry.path())) {
        cout << "Directory: " << entry.path().filename() << endl;
      } else if (fs::is_regular_file(entry.path())) {
        cout << "File: " << entry.path().filename() << " Size: " << entry.file_size() << endl;
      }
    }
  }

  fs::path integers_source_files = current_path / "integers.txt";
  cout << "integers_source_files: " << integers_source_files << endl;
  fs::path another_integers_dest_file = current_path / "integers_more.txt";
  cout << "another_integers_dest_file: " << another_integers_dest_file << endl;

  fs::path countries_file = current_path / "countries.dat";
  fs::path countries_file_new = current_path / "countries_new.dat";

  fs::copy_file(integers_source_files, another_integers_dest_file);
  fs::rename(countries_file, countries_file_new);
  fs::copy(countries_file_new, countries_file);
  fs::remove(countries_file_new);



  return 0;
}
