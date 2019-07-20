project(testland)
add_subdirectory(basic_tests)
add_subdirectory(googletest)
include_directories(googletest/googletest/include googletest/googlemock/include)