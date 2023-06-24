file(GLOB EXAMPLE_TEST_SOURCES "${PROJECT_SOURCE_DIR}/test/*Test.cpp")
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
    # # Add the test target separately and as part of "make check-tests".
    # add_executable(${bustub_test_name} EXCLUDE_FROM_ALL ${bustub_test_source})
    # add_dependencies(build-tests ${bustub_test_name})
    # add_dependencies(check-tests ${bustub_test_name})

    # target_link_libraries(${bustub_test_name} bustub_shared gtest gmock_main)

    # # Set test target properties and dependencies.
    # set_target_properties(${bustub_test_name}
    #     PROPERTIES
    #     RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/test"
    #     COMMAND ${bustub_test_name}
    # )

    # # Add the test under CTest.
    # add_test(${bustub_test_name} ${VALGRIND_BIN} ${VALGRIND_OPTIONS}
    # --suppressions=${VALGRIND_SUPPRESSIONS_FILE} ${CMAKE_BINARY_DIR}/test/${bustub_test_name}
    # --gtest_color=yes --gtest_output=xml:${CMAKE_BINARY_DIR}/test/unit_${test_name}.xml)
    # add_test(${bustub_test_name} ${CMAKE_BINARY_DIR}/test/${bustub_test_name} --gtest_color=yes
    #         --gtest_output=xml:${CMAKE_BINARY_DIR}/test/${bustub_test_name}.xml)
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
