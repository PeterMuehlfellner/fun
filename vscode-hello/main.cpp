#include <iostream>
#include <string>
#include <sstream>

std::string get_version_string(int major, int minor, int patch) {
  std::ostringstream ss;
  ss << major << '.' << minor << '.' << patch;
  return ss.str();
}

int main(int argc, char** argv) {
#ifdef _MSC_VER
    auto compiler_name = "MSVC";
    auto compiler_version = std::to_string(_MSC_VER);
#elif __clang__
    auto compiler_name = "clang";
    auto compiler_version = get_version_string(__clang_major__, __clang_minor__, __clang_patchlevel__);
#elif __GNUC__
    auto compiler_name = "gcc";
    auto compiler_version = get_version_string(__GNUC__, __GNUC_MINOR__, __GNUC_PATCHLEVEL__);
#else
    auto compiler_name = "WTF";
    auto compiler_version =  "???";
#endif

  std::cout << "Hello, " << compiler_name << "(" << compiler_version << ").\n";
}