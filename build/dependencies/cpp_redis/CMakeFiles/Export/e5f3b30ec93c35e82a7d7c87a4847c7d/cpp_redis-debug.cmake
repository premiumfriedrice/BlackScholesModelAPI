#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cpp_redis" for configuration "Debug"
set_property(TARGET cpp_redis APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(cpp_redis PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libcpp_redis.4.4.0.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libcpp_redis.4.4.0.dylib"
  )

list(APPEND _cmake_import_check_targets cpp_redis )
list(APPEND _cmake_import_check_files_for_cpp_redis "${_IMPORT_PREFIX}/lib/libcpp_redis.4.4.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
