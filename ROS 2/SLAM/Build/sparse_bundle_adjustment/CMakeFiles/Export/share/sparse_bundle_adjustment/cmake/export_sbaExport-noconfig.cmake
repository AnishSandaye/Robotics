#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sparse_bundle_adjustment::sba" for configuration ""
set_property(TARGET sparse_bundle_adjustment::sba APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(sparse_bundle_adjustment::sba PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libsba.so"
  IMPORTED_SONAME_NOCONFIG "libsba.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS sparse_bundle_adjustment::sba )
list(APPEND _IMPORT_CHECK_FILES_FOR_sparse_bundle_adjustment::sba "${_IMPORT_PREFIX}/lib/libsba.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
