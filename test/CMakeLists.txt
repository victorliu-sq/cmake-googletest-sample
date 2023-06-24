# Get list of all test source files with given pattern
file(GLOB EXAMPLE_TEST_SOURCES "${PROJECT_SOURCE_DIR}/test/*Test.cpp")

# iterate each test source file to create test executable individually
foreach (example_test_source ${EXAMPLE_TEST_SOURCES})
    message(STATUS "Test source: ${example_test_source}")
    # Create a human readable name.
    get_filename_component(example_test_filename ${example_test_source} NAME)
    message(STATUS "Filename: ${example_test_filename}")

    string(REPLACE ".cpp" "" example_test_name ${example_test_filename})
        message(STATUS "Test Name: ${example_test_name}")

    add_executable(${example_test_name} ${example_test_source})

    target_link_libraries(${example_test_name} PUBLIC
        gtest_main
        example_lib
    )

    add_test(
        NAME ${example_test_name}
        COMMAND ${example_test_name}
        --gtest_color=yes
        --gtest_output=xml:${CMAKE_BINARY_DIR}/test/${This}.xml
    )
endforeach(bustub_test_source ${BUSTUB_TEST_SOURCES})

# set(This ExampleTests)
# set(This2 ExampleTests2)

# set(Sources
#     ExampleTest.cpp
# )

# set(Sources2 
#     Example2Test.cpp
# )

# add_executable(${This} ${Sources})

# add_executable(${This2} ${Sources2})


# target_link_libraries(${This} PUBLIC
#     gtest_main
#     example_lib
# )

# target_link_libraries(${This2} PUBLIC
#     gtest_main
#     example_lib
# )

# ##########################################
# # "make check-tests"
# ##########################################
# add_custom_target(build-tests COMMAND ${CMAKE_CTEST_COMMAND} --show-only)
# add_custom_target(check-tests COMMAND ${CMAKE_CTEST_COMMAND} --verbose)

# add_test(
#     NAME test1
#     COMMAND ${This}
#     --gtest_color=yes
#     --gtest_output=xml:${CMAKE_BINARY_DIR}/test/${This}.xml
# )

# add_test(
#     NAME test2
#     COMMAND ${This2}
#     --gtest_color=yes
#     --gtest_output=xml:${CMAKE_BINARY_DIR}/test/${This2}.xml
# )
