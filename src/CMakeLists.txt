file(GLOB_RECURSE example_sources ${PROJECT_SOURCE_DIR}/src/*.cpp)
add_library(example_lib SHARED ${example_sources})