cmake_minimum_required(VERSION 3.10)
project(MyProject)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Find all cpp files in this directory
file(GLOB SOURCES "*.cpp")

# Print them (optional debug)
message(STATUS "Source files: ${SOURCES}")

# Build executable from all cpp files
add_executable(my_app ${SOURCES})
