cmake_minimum_required(VERSION 3.22)

# enable HIP for project
project(hello_devices LANGUAGES CXX HIP)

find_package(HIP REQUIRED)
find_package(MPI REQUIRED)

# Set all sources to be compiled with HIP compiler
set(SOURCE_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/hello_devices.cpp
)
# Set the language of kernel sources
set_source_files_properties(${SOURCE_FILES} PROPERTIES LANGUAGE HIP)

# Add the hello_devices executable for basic device discovery
add_executable (hello_devices
    ${SOURCE_FILES}
)
# Link in other libraries
target_link_libraries(hello_devices hipblas)

# Install the target
install(TARGETS hello_devices DESTINATION bin)

# cmake -B build
# cmake --build build
# ./build/hello_devices