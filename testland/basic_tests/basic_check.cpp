//
// Created by egl on 7/20/19.
//

#include "gtest/gtest.h"

TEST(basic_check,test_eq){
    EXPECT_EQ(1,1);
}
TEST(basic_check,test_neq){
    EXPECT_NE(1,0);
}