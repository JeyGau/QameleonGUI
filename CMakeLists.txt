cmake_minimum_required(VERSION 3.14)

project(QameleonGUI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(qameleon_DIR "${CMAKE_SOURCE_DIR}/libs/qameleon/cmake")

message(STATUS "qameleon_DIR: ${qameleon_DIR}")

# Find the required Qt6 packages
find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)
find_package(qameleon REQUIRED COMPONENTS controls hotreload)

# Add the QML resources to the executable
add_executable(QameleonGUI src/main.cpp src/qml.qrc)

# Link to QtQuick and Controls libraries
target_link_libraries(QameleonGUI
    PRIVATE Qt6::Quick Qt6::QuickControls2
    PRIVATE qameleon::controls qameleon::hotreload
)

install(TARGETS QameleonGUI)
