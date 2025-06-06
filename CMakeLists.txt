cmake_minimum_required(VERSION 3.14)

project(QameleonGUI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find the required Qt6 packages
find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

# Find qameleon package (will search standard locations)
find_package(qameleon REQUIRED COMPONENTS controls hotreload)

# Add the QML resources to the executable
add_executable(QameleonGUI src/main.cpp src/qml.qrc)

# Link to QtQuick and Controls libraries
target_link_libraries(QameleonGUI
    PRIVATE Qt6::Quick Qt6::QuickControls2
    qameleon::controls qameleon::hotreload
)

# Set QML import path for the application
set_target_properties(QameleonGUI PROPERTIES
    QML_IMPORT_PATH "/usr/local/qml"
)

install(TARGETS QameleonGUI)