cmake_minimum_required(VERSION 3.0.0)
project(GameEngine VERSION 0.1.0)

include(CTest)
enable_testing()
find_package(ASSIMP REQUIRED)
find_package(glm REQUIRED)
find_package(OpenGL)
find_package(glfw3 3.3)
add_executable(GameEngine main.cpp src/glad.c)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)


add_library(STB_IMAGE "stb_image.cpp")

include_directories(${ASSIMP_INCLUDE_DIRS}  ${GLM_INCLUDE_DIRECTORIES} include ${OpenGL_INCLUDE_DIRS} ${GLFW_INCLUDE_DIRS}) 
target_link_libraries(GameEngine ${ASSIMP_LIBRARIES} ${GLM_LIBRARIES} OpenGL::GL glfw STB_IMAGE)
