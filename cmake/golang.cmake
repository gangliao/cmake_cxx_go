set(GOPATH "${CMAKE_CURRENT_BINARY_DIR}/go")
file(MAKE_DIRECTORY ${GOPATH})

function(ExternalGoProject_Add TARG)
  add_custom_target(${TARG} env GOPATH=${GOPATH} ${CMAKE_Go_COMPILER} get ${ARGN})
endfunction(ExternalGoProject_Add)

function(add_go_executable NAME)
  get_filename_component(SRC_ABS ${CMAKE_CURRENT_SOURCE_DIR} ABSOLUTE)
  add_custom_target(${NAME})
  add_custom_command(TARGET ${NAME}
                    COMMAND env GOPATH=${GOPATH} ${CMAKE_Go_COMPILER} build
                    -o "${CMAKE_CURRENT_BINARY_DIR}/${NAME}"
                    ${CMAKE_GO_FLAGS}
                    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
                    DEPENDS file(GLOB ${SRC_ABS} "*.go"))
  foreach(DEP ${ARGN})
    add_dependencies(${NAME} ${DEP})
  endforeach()

  add_custom_target(${NAME}_go ALL DEPENDS ${NAME})
  install(PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/${NAME} DESTINATION bin)
endfunction(add_go_executable)

function(add_go_library NAME)
  get_filename_component(SRC_ABS ${CMAKE_CURRENT_SOURCE_DIR} ABSOLUTE)
  add_custom_target(${NAME})
  add_custom_command(TARGET ${NAME}
                    COMMAND env GOPATH=${GOPATH} ${CMAKE_Go_COMPILER} build
                    -o "${CMAKE_CURRENT_BINARY_DIR}/lib${NAME}.a"
                    ${CMAKE_GO_FLAGS}
                    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
                    DEPENDS file(GLOB ${SRC_ABS} "*.go"))
  foreach(DEP ${ARGN})
    add_dependencies(${NAME} ${DEP})
  endforeach()

  add_custom_target(${NAME}_go ALL DEPENDS ${NAME})
  install(PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/${NAME} DESTINATION bin)
endfunction(add_go_library)
