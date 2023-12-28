#include <iostream>
#include <string>

#include "ResourceManager.h"

using std::cout;
using std::endl;
using std::string;

int main()
{
  ResourceManager mysql_rm {"mysql"};  

  mysql_rm.create_resource("mysql_conn_1");
  cout << mysql_rm << endl;

  mysql_rm.create_resource("mysql_conn_2");
  cout << mysql_rm << endl;

  ResourceManager mysql_rm_copy {mysql_rm};

  {
    ResourceManager another_mysql_rm {"another_mysql"};
    another_mysql_rm.create_resource("another_mysql_conn");

    another_mysql_rm = mysql_rm;
  }

  ResourceManager mysql_rm_copy_2 {std::move(mysql_rm)};

  ResourceManager another_mysql_rm_2 {"another_mysql_2"};
  another_mysql_rm_2.create_resource("another_mysql_conn_2");

  another_mysql_rm_2 = std::move(mysql_rm_copy_2);
  cout << "-------End of program - destructors---------" << endl;
}