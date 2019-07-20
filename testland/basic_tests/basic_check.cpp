//
// Created by egl on 7/20/19.
//

#include <gtest/gtest.h>

TEST(basic_check,test_eq){
    EXPECT_EQ(1,1);
}
TEST(basic_check,test_neq){
    EXPECT_NE(1,0);
}

//The only function: simply multiplies a number by 2
double timesTwo(double x){
    return x*2;
}


TEST(testTimesTwo, integerTests){
    EXPECT_EQ(0, timesTwo(0));
    EXPECT_EQ(2, timesTwo(1));
    EXPECT_EQ(246, timesTwo(123));
}

int vmain(int argc, char* argv[]){
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}