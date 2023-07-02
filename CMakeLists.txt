cmake_minimum_required(VERSION 3.8)

set(project_name GoogltTestExample)
set(version 2023.6)

project(${project_name} 
    VERSION ${version} 
    LANGUAGES C CXX
)

enable_testing()

# both source files and test files 
# will try to include header files from this directory
include_directories(${PROJECT_SOURCE_DIR}/include)

# export compile commands
set(CMAKE_EXPORT_COMPILE_COMMANDS on)

# google test
add_subdirectory(googletest)

# src files
add_subdirectory(src)

# test files
add_subdirectory(test)