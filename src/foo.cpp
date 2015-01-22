#include <iostream>

extern "C" {

void foo_cpp_function(int* a, int* b) {
  std::cout << "Hello a:" << *a << ", b:" << *b << std::endl;
}

} // extern "C"
