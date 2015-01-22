cmake_minimum_required(VERSION 2.8.12)
project(RCMake)

add_library(foocpp SHARED src/foo.cpp)

install(TARGETS foocpp DESTINATION lib)
