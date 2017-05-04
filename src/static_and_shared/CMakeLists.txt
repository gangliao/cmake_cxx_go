add_go_library(adder STATIC)

add_executable(main main.cxx)
target_link_libraries(main ${CMAKE_CURRENT_BINARY_DIR}/libadder.a)
