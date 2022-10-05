//
// Created by snake on 10/4/2022.
//


#include <gtest/gtest.h>


#include "../source/library/library.hpp"


TEST(fooBar_Test, Demonstrate_Whether_FooBar_Is_Valid)
{
    long x = fooBar();

    EXPECT_EQ(x, 31);
}