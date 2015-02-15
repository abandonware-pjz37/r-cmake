#include <iostream>

#include "foocpp_export.h" // FOOCPP_EXPORT

extern "C" {

FOOCPP_EXPORT void foo_cpp_function(int* a, int* b) {
  std::cout << "Hello a:" << *a << ", b:" << *b << std::endl;
}

} // extern "C"
