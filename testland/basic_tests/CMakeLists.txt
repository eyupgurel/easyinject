add_executable(run_basic_tests basic_check.cpp prime_tables.h sample1.cpp sample1.h sample1_unittest.cpp sample2.cpp sample2.h sample2_unittest.cpp bank_account_test.cpp)
target_link_libraries(run_basic_tests gtest gtest_main)
target_link_libraries(run_basic_tests programme)
