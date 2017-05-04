set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

cmake_minimum_required(VERSION 3.0)

project(cxx_go CXX C Go)

include(cmake/golang.cmake)
include(cmake/flags.cmake)

find_package(CUDA QUIET)

add_subdirectory(src)
