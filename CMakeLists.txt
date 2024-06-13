cmake_minimum_required(VERSION 3.29.0)
project(BlackScholesModelCPP VERSION 0.1.0)

include(CTest)
enable_testing()

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

set(INCLUDE_PATHS boost_1_85_0 dependencies/cpp_redis/includes dependencies/Crow/include cpp_redis /opt/homebrew/Cellar/asio/1.30.2/include usr/local/include)

add_executable(BlackScholesModelCPP main.cpp)

target_include_directories(BlackScholesModelCPP PUBLIC ${INCLUDE_PATHS})

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
target_link_libraries(BlackScholesModelCPP PRIVATE Threads::Threads)