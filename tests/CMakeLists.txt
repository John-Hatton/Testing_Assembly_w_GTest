project(Google_Tests)

# adding the Google_Tests_run target
add_executable(ASM_Tests ASM_Tests.cpp)


# This step is crutial to see your ASM code from GTEST
# linking ASM_Tests with ASM-Demo_lib which will be tested
target_link_libraries(ASM_Tests ASM-Demo_lib)

# We also link with the GTest stuff!
target_link_libraries(ASM_Tests gtest gtest_main)