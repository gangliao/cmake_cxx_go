add_subdirectory(redis)
add_subdirectory(recordio)
add_subdirectory(static_and_shared)

if(${CUDA_FOUND})
  add_subdirectory(cuda)
endif()