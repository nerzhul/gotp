cmake_minimum_required(VERSION 3.18)
project(gotp)


set(CMAKE_CXX_STANDARD_REQUIRED 14)
set(PROJECT_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES})
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTKMM REQUIRED gtkmm-4.0)

target_link_libraries(${PROJECT_NAME}
    ${GTKMM_LIBRARY}
)