//
// Created by snake on 10/4/2022.
//


#include <gtest/gtest.h>


#include "../source/library/library.hpp"


TEST(fooBar_Test, Demonstrate_Whether_FooBar_Is_Valid)
{
    long x = fooBar();

#ifndef DEBUG
    EXPECT_EQ(x, 29);
#endif

#ifdef DEBUG
    EXPECT_EQ(x, 31); // Remember, my DEBUG flag in ASM adds two. See my library.asm file for more...
#endif
}