cmake_minimum_required(VERSION 2.8)
project(RPCALC)

add_executable(rpcalc
    rpcalc.tab.c)

add_custom_command(
    OUTPUT ${CMAKE_SOURCE_DIR}/rpcalc.tab.c
    COMMAND bison ${CMAKE_SOURCE_DIR}/rpcalc.y -o ${CMAKE_SOURCE_DIR}/rpcalc.tab.c
    DEPENDS rpcalc.y)
