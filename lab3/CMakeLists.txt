cmake_minimum_required(VERSION 3.10)
project(lr3 C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=maybe-uninitialized")

add_executable(CreateProcess_exe CreateProcess.c)

add_executable(ChildProcess_exe ChildProcess.c)