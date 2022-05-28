cmake_minimum_required(VERSION 3.10)

project(Engine VERSION 1.0)

find_package(OpenGL REQUIRED)

find_package(SFML REQUIRED
    COMPONENTS
    graphics system window audio
)

if(NOT IMGUI_DIR)
  set(IMGUI_DIR "" CACHE PATH "imgui top-level directory")
  message(FATAL_ERROR "ImGui directory not found. Set IMGUI_DIR to imgui's top-level path (containing 'imgui.h' and other files).\n")
endif()

# This uses FindImGui.cmake provided in ImGui-SFML repo for now
find_package(ImGui 1.80 REQUIRED)

# these headers will be installed alongside ImGui-SFML
set(IMGUI_PUBLIC_HEADERS
  ${IMGUI_INCLUDE_DIR}/imconfig.h
  ${IMGUI_INCLUDE_DIR}/imgui.h
  ${IMGUI_INCLUDE_DIR}/imgui_internal.h # not actually public, but users might need it
  ${IMGUI_INCLUDE_DIR}/imstb_rectpack.h
  ${IMGUI_INCLUDE_DIR}/imstb_textedit.h
  ${IMGUI_INCLUDE_DIR}/imstb_truetype.h
  ${IMGUI_INCLUDE_DIR}/misc/cpp/imgui_stdlib.h
)

add_executable(Engine Engine.cpp Gui.cpp Ball.cpp Brick.cpp imgui.cpp imgui_draw.cpp imgui_tables.cpp imgui_widgets.cpp imgui_demo.cpp imgui-SFML.cpp)

target_link_libraries(Engine sfml-graphics sfml-window sfml-system)

install(TARGETS Engine)