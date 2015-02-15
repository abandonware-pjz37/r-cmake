cmake_minimum_required(VERSION 2.8.12)
project(RCMake)

include(GenerateExportHeader)
include_directories("${CMAKE_CURRENT_BINARY_DIR}") # foocpp_export.h

add_library(foocpp SHARED src/foo.cpp)
generate_export_header(foocpp)

install(TARGETS foocpp DESTINATION lib)
