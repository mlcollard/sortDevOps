# @file CMakeLists.txt
# 
# CMake files for functional decomposition examples

cmake_minimum_required(VERSION 3.10)

# project info
project(sortDevOps)

# force release debug since used for demonstration
set(CMAKE_BUILD_TYPE Debug)

# C++17 standard
set(CMAKE_CXX_STANDARD 17)

# Application is based on .cpp file only
add_executable(sort sort.cpp)

# run
add_custom_target(run COMMENT "Run example sort"
                       COMMAND ./sort c b a
                       DEPENDS sort)

# test file
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/output "a b c \n")

# test
add_custom_target(test COMMENT "Test sort"
                       COMMAND ./sort c b a | diff output -
                       COMMAND ./sort a b c | diff output -
                       COMMAND ./sort b a c | diff output -
                       COMMAND ./sort b c a | diff output -
                       COMMAND ./sort a c b | diff output -
                       COMMAND ./sort c a b | diff output -
                       DEPENDS sort)
