cmake_minimum_required(VERSION 3.7)
project(test_environment)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        Assignment1Tests.cpp
        Assignment1Tests.h
        ExprTree.cpp
        ExprTree.h
        TreeNode.cpp
        TreeNode.h)

add_executable(test_environment ${SOURCE_FILES})