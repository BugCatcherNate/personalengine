cmake_minimum_required(VERSION 3.0.0)
project(GameEngine VERSION 0.1.0)

include(CTest)
enable_testing()
find_package(ASSIMP REQUIRED)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)

include_directories( "include" )

add_executable(GameEngine main.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

include_directories(${ASSIMP_INCLUDE_DIRS}  ${GLM_INCLUDE_DIRECTORIES} ${glfw3_INCLUDE_DIRECTORIES})
target_link_libraries(GameEngine ${ASSIMP_LIBRARIES} ${GLM_LIBRARIES} ${glfw3_LIBRARIES} )
