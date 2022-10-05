#CMakeLists.txt for Project

cmake_minimum_required(VERSION 3.14)

project(Testing_Assembly_w_GTest)


set(CMAKE_CXX_STANDARD 20)


add_subdirectory(source)


#include_directories(${Testing_Assembly_w_GTest_SOURCE_DIR}/include)


#
##
#
########
#
##
#

####################
#					#
#    Google Test	#
#					#
####################



include(FetchContent)
FetchContent_Declare(
        googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG release-1.12.1 # most recent version 9/2022 Check GITHUB!
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)