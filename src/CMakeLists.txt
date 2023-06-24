# Get list of all source files with given pattern
file(GLOB_RECURSE example_sources ${PROJECT_SOURCE_DIR}/src/*.cpp)

# iterate each source file to create library file individually
add_library(example_lib SHARED ${example_sources})