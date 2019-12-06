#include "gtest/gtest.h"
#include "lib_a.hpp"

TEST(_a, arg)
{
    int res;
    res = lib_v();
    ASSERT_EQ(res, 5);
}
