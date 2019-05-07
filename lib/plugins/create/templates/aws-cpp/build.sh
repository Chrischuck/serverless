cmake_minimum_required(VERSION 3.5)
set(CMAKE_CXX_STANDARD 11)
project(hello LANGUAGES CXX)

find_package(aws-lambda-runtime REQUIRED)
add_executable(hello-wold "main.cpp")
target_link_libraries(cpp-proj PUBLIC AWS::aws-lambda-runtime)
aws_lambda_package_target(cpp-proj)