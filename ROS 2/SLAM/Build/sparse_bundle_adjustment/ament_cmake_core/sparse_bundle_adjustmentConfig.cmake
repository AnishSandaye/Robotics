# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_sparse_bundle_adjustment_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED sparse_bundle_adjustment_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(sparse_bundle_adjustment_FOUND FALSE)
  elseif(NOT sparse_bundle_adjustment_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(sparse_bundle_adjustment_FOUND FALSE)
  endif()
  return()
endif()
set(_sparse_bundle_adjustment_CONFIG_INCLUDED TRUE)

# output package information
if(NOT sparse_bundle_adjustment_FIND_QUIETLY)
  message(STATUS "Found sparse_bundle_adjustment: 0.0.1 (${sparse_bundle_adjustment_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'sparse_bundle_adjustment' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${sparse_bundle_adjustment_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(sparse_bundle_adjustment_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "ament_cmake_export_include_directories-extras.cmake;ament_cmake_export_interfaces-extras.cmake;ament_cmake_export_libraries-extras.cmake")
foreach(_extra ${_extras})
  include("${sparse_bundle_adjustment_DIR}/${_extra}")
endforeach()
