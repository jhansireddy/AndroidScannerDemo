# ===================================================================================
#  The OpenCV CMake configuration file
#
#             ** File generated automatically, do not modify **
#
#  Usage from an external project:
#    In your CMakeLists.txt, add these lines:
#
#    find_package(OpenCV REQUIRED)
#    include_directories(${OpenCV_INCLUDE_DIRS}) # Not needed for CMake >= 2.8.11
#    target_link_libraries(MY_TARGET_NAME ${OpenCV_LIBS})
#
#    Or you can search for specific OpenCV modules:
#
#    find_package(OpenCV REQUIRED core videoio)
#
#    If the module is found then OPENCV_<MODULE>_FOUND is set to TRUE.
#
#    This file will define the following variables:
#      - OpenCV_LIBS                     : The list of all imported targets for OpenCV modules.
#      - OpenCV_INCLUDE_DIRS             : The OpenCV include directories.
#      - OpenCV_COMPUTE_CAPABILITIES     : The version of compute capability.
#      - OpenCV_ANDROID_NATIVE_API_LEVEL : Minimum required level of Android API.
#      - OpenCV_VERSION                  : The version of this OpenCV build: "3.1.0"
#      - OpenCV_VERSION_MAJOR            : Major version part of OpenCV_VERSION: "3"
#      - OpenCV_VERSION_MINOR            : Minor version part of OpenCV_VERSION: "1"
#      - OpenCV_VERSION_PATCH            : Patch version part of OpenCV_VERSION: "0"
#      - OpenCV_VERSION_STATUS           : Development status of this build: ""
#
#    Advanced variables:
#      - OpenCV_SHARED                   : Use OpenCV as shared library
#      - OpenCV_CONFIG_PATH              : Path to this OpenCVConfig.cmake
#      - OpenCV_INSTALL_PATH             : OpenCV location (not set on Windows)
#      - OpenCV_LIB_COMPONENTS           : Present OpenCV modules list
#      - OpenCV_USE_MANGLED_PATHS        : Mangled OpenCV path flag
#      - OpenCV_MODULES_SUFFIX           : The suffix for OpenCVModules-XXX.cmake file
#
#    Deprecated variables:
#      - OpenCV_VERSION_TWEAK            : Always "0"
#
# ===================================================================================

# Search packages for host system instead of packages for target system.
# in case of cross compilation thess macro should be defined by toolchain file

if(NOT COMMAND find_host_package)
    macro(find_host_package)
        find_package(${ARGN})
    endmacro()
endif()

if(NOT COMMAND find_host_program)
    macro(find_host_program)
        find_program(${ARGN})
    endmacro()
endif()

if(NOT DEFINED OpenCV_MODULES_SUFFIX)
  if(ANDROID)
    string(REPLACE - _ OpenCV_MODULES_SUFFIX "_${ANDROID_NDK_ABI_NAME}")
  else()
    set(OpenCV_MODULES_SUFFIX "")
  endif()
endif()

if("FALSE" STREQUAL "TRUE") # value is defined by package builder (use STREQUAL to comply new CMake policy CMP0012)
  if(NOT TARGET ippicv)
    if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/non-existed-path")
      add_library(ippicv STATIC IMPORTED)
      set_target_properties(ippicv PROPERTIES
        IMPORTED_LINK_INTERFACE_LIBRARIES ""
        IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/non-existed-path"
      )
    endif()
  endif()
endif()

if(NOT TARGET opencv_core)
  # Extract directory name from full path of the file currently being processed.
  # Note that CMake 2.8.3 introduced CMAKE_CURRENT_LIST_DIR. We reimplement it
  # for older versions of CMake to support these as well.
  if(CMAKE_VERSION VERSION_LESS "2.8.3")
    get_filename_component(CMAKE_CURRENT_LIST_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
  endif()

  include(${CMAKE_CURRENT_LIST_DIR}/OpenCVModules${OpenCV_MODULES_SUFFIX}.cmake)
endif()

# TODO All things below should be reviewed. What is about of moving this code into related modules (special vars/hooks/files)

# Version Compute Capability from which OpenCV has been compiled is remembered
set(OpenCV_COMPUTE_CAPABILITIES "")

set(OpenCV_CUDA_VERSION )
set(OpenCV_USE_CUBLAS   )
set(OpenCV_USE_CUFFT    )
set(OpenCV_USE_NVCUVID  )

# Android API level from which OpenCV has been compiled is remembered
if(ANDROID)
  set(OpenCV_ANDROID_NATIVE_API_LEVEL 8)
else()
  set(OpenCV_ANDROID_NATIVE_API_LEVEL 8)
endif()

# Some additional settings are required if OpenCV is built as static libs
set(OpenCV_SHARED OFF)

# Enables mangled install paths, that help with side by side installs
set(OpenCV_USE_MANGLED_PATHS FALSE)

# Extract the directory where *this* file has been installed (determined at cmake run-time)
get_filename_component(OpenCV_CONFIG_PATH "${CMAKE_CURRENT_LIST_FILE}" PATH CACHE)

if(NOT WIN32 OR ANDROID)
  if(ANDROID)
    set(OpenCV_INSTALL_PATH "${OpenCV_CONFIG_PATH}/../../..")
  else()
    set(OpenCV_INSTALL_PATH "${OpenCV_CONFIG_PATH}/../..")
  endif()
  # Get the absolute path with no ../.. relative marks, to eliminate implicit linker warnings
  if(${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} VERSION_LESS 2.8)
    get_filename_component(OpenCV_INSTALL_PATH "${OpenCV_INSTALL_PATH}" ABSOLUTE)
  else()
    get_filename_component(OpenCV_INSTALL_PATH "${OpenCV_INSTALL_PATH}" REALPATH)
  endif()
endif()

# ======================================================
# Include directories to add to the user project:
# ======================================================

# Provide the include directories to the caller
set(OpenCV_INCLUDE_DIRS "${OpenCV_INSTALL_PATH}/sdk/native/jni/include/opencv;${OpenCV_INSTALL_PATH}/sdk/native/jni/include")

# ======================================================
# Link directories to add to the user project:
# ======================================================

# Provide the libs directories to the caller
set(OpenCV_LIB_DIR_OPT  CACHE PATH "Path where release OpenCV libraries are located")
set(OpenCV_LIB_DIR_DBG  CACHE PATH "Path where debug OpenCV libraries are located")
set(OpenCV_3RDPARTY_LIB_DIR_OPT "${OpenCV_INSTALL_PATH}/sdk/native/3rdparty/libs/mips" CACHE PATH "Path where release 3rdparty OpenCV dependencies are located")
set(OpenCV_3RDPARTY_LIB_DIR_DBG "${OpenCV_INSTALL_PATH}/sdk/native/3rdparty/libs/mips" CACHE PATH "Path where debug 3rdparty OpenCV dependencies are located")
mark_as_advanced(FORCE OpenCV_LIB_DIR_OPT OpenCV_LIB_DIR_DBG OpenCV_3RDPARTY_LIB_DIR_OPT OpenCV_3RDPARTY_LIB_DIR_DBG OpenCV_CONFIG_PATH)

# ======================================================
#  Version variables:
# ======================================================
SET(OpenCV_VERSION 3.1.0)
SET(OpenCV_VERSION_MAJOR  3)
SET(OpenCV_VERSION_MINOR  1)
SET(OpenCV_VERSION_PATCH  0)
SET(OpenCV_VERSION_TWEAK  0)
SET(OpenCV_VERSION_STATUS "")

# ====================================================================
# Link libraries: e.g. opencv_core;opencv_imgproc; etc...
# ====================================================================

SET(OpenCV_LIB_COMPONENTS opencv_videostab;opencv_videoio;opencv_video;opencv_superres;opencv_stitching;opencv_shape;opencv_photo;opencv_objdetect;opencv_ml;opencv_imgproc;opencv_imgcodecs;opencv_highgui;opencv_flann;opencv_features2d;opencv_core;opencv_calib3d;opencv_java)
list(REMOVE_ITEM OpenCV_LIB_COMPONENTS opencv_hal)
SET(OpenCV_WORLD_COMPONENTS )

# ==============================================================
#  Extra include directories, needed by OpenCV 2 new structure
# ==============================================================
SET(OpenCV2_INCLUDE_DIRS "")
if(OpenCV2_INCLUDE_DIRS)
  list(APPEND OpenCV_INCLUDE_DIRS ${OpenCV2_INCLUDE_DIRS})

  set(OpenCV_ADD_DEBUG_RELEASE FALSE)
  if(OpenCV_ADD_DEBUG_RELEASE)
    set(OpenCV_LIB_DIR_OPT "${OpenCV_LIB_DIR_OPT}/Release")
    set(OpenCV_LIB_DIR_DBG "${OpenCV_LIB_DIR_DBG}/Debug")
    set(OpenCV_3RDPARTY_LIB_DIR_OPT "${OpenCV_3RDPARTY_LIB_DIR_OPT}/Release")
    set(OpenCV_3RDPARTY_LIB_DIR_DBG "${OpenCV_3RDPARTY_LIB_DIR_DBG}/Debug")
  endif()
endif()

if(NOT CMAKE_VERSION VERSION_LESS "2.8.11")
  # Target property INTERFACE_INCLUDE_DIRECTORIES available since 2.8.11:
  # * http://www.cmake.org/cmake/help/v2.8.11/cmake.html#prop_tgt:INTERFACE_INCLUDE_DIRECTORIES
  foreach(__component ${OpenCV_LIB_COMPONENTS})
    if(TARGET ${__component})
      set_target_properties(
          ${__component}
          PROPERTIES
          INTERFACE_INCLUDE_DIRECTORIES "${OpenCV_INCLUDE_DIRS}"
      )
    endif()
  endforeach()
endif()

# ==============================================================
#  Check OpenCV availability
# ==============================================================
if(ANDROID AND OpenCV_ANDROID_NATIVE_API_LEVEL GREATER ANDROID_NATIVE_API_LEVEL)
  message(FATAL_ERROR "Minimum required by OpenCV API level is android-${OpenCV_ANDROID_NATIVE_API_LEVEL}")
  #always FATAL_ERROR because we can't say to the caller that OpenCV is not found
  #http://www.mail-archive.com/cmake@cmake.org/msg37831.html
  if(OpenCV_FIND_REQUIRED)
    message(FATAL_ERROR "Minimum required by OpenCV API level is android-${OpenCV_ANDROID_NATIVE_API_LEVEL}")
  elseif(NOT OpenCV_FIND_QUIETLY)
    message(WARNING "Minimum required by OpenCV API level is android-${OpenCV_ANDROID_NATIVE_API_LEVEL}")
  endif()
  set(OpenCV_FOUND "OpenCV_FOUND-NOTFOUND")
  return()#Android toolchain requires CMake > 2.6
endif()

# ==============================================================
#  Form list of modules (components) to find
# ==============================================================
if(NOT OpenCV_FIND_COMPONENTS)
  set(OpenCV_FIND_COMPONENTS ${OpenCV_LIB_COMPONENTS})
  list(REMOVE_ITEM OpenCV_FIND_COMPONENTS opencv_java)
  if(GTest_FOUND OR GTEST_FOUND)
    list(REMOVE_ITEM OpenCV_FIND_COMPONENTS opencv_ts)
  endif()
endif()

# expand short module names and see if requested components exist
set(OpenCV_FIND_COMPONENTS_ "")
foreach(__cvcomponent ${OpenCV_FIND_COMPONENTS})
  if(NOT __cvcomponent MATCHES "^opencv_")
    set(__cvcomponent opencv_${__cvcomponent})
  endif()
  list(FIND OpenCV_LIB_COMPONENTS ${__cvcomponent} __cvcomponentIdx)
  if(__cvcomponentIdx LESS 0)
    #requested component is not found...
    if(OpenCV_FIND_REQUIRED)
      message(FATAL_ERROR "${__cvcomponent} is required but was not found")
    elseif(NOT OpenCV_FIND_QUIETLY)
      message(WARNING "${__cvcomponent} is required but was not found")
    endif()
    #indicate that module is NOT found
    string(TOUPPER "${__cvcomponent}" __cvcomponentUP)
    set(${__cvcomponentUP}_FOUND "${__cvcomponentUP}_FOUND-NOTFOUND")
  else()
    list(APPEND OpenCV_FIND_COMPONENTS_ ${__cvcomponent})
    # Not using list(APPEND) here, because OpenCV_LIBS may not exist yet.
    # Also not clearing OpenCV_LIBS anywhere, so that multiple calls
    # to find_package(OpenCV) with different component lists add up.
    set(OpenCV_LIBS ${OpenCV_LIBS} "${__cvcomponent}")
    #indicate that module is found
    string(TOUPPER "${__cvcomponent}" __cvcomponentUP)
    set(${__cvcomponentUP}_FOUND 1)
  endif()
  if(OpenCV_SHARED AND ";${OpenCV_WORLD_COMPONENTS};" MATCHES ";${__cvcomponent};" AND NOT TARGET ${__cvcomponent})
    get_target_property(__implib_dbg opencv_world IMPORTED_IMPLIB_DEBUG)
    get_target_property(__implib_release opencv_world  IMPORTED_IMPLIB_RELEASE)
    get_target_property(__location_dbg opencv_world IMPORTED_LOCATION_DEBUG)
    get_target_property(__location_release opencv_world  IMPORTED_LOCATION_RELEASE)
    add_library(${__cvcomponent} SHARED IMPORTED)
    if(__location_dbg)
      set_property(TARGET ${__cvcomponent} APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
      set_target_properties(${__cvcomponent} PROPERTIES
        IMPORTED_IMPLIB_DEBUG "${__implib_dbg}"
        IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG ""
        IMPORTED_LOCATION_DEBUG "${__location_dbg}"
      )
    endif()
    if(__location_release)
      set_property(TARGET ${__cvcomponent} APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
      set_target_properties(${__cvcomponent} PROPERTIES
        IMPORTED_IMPLIB_RELEASE "${__implib_release}"
        IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
        IMPORTED_LOCATION_RELEASE "${__location_release}"
      )
    endif()
  endif()
endforeach()
set(OpenCV_FIND_COMPONENTS ${OpenCV_FIND_COMPONENTS_})

# ==============================================================
#  Resolve dependencies
# ==============================================================
if(OpenCV_USE_MANGLED_PATHS)
  set(OpenCV_LIB_SUFFIX ".${OpenCV_VERSION_MAJOR}.${OpenCV_VERSION_MINOR}.${OpenCV_VERSION_PATCH}")
else()
  set(OpenCV_LIB_SUFFIX "")
endif()

foreach(__opttype OPT DBG)
  SET(OpenCV_LIBS_${__opttype} "${OpenCV_LIBS}")
  SET(OpenCV_EXTRA_LIBS_${__opttype} "")

  # CUDA
  if(OpenCV_CUDA_VERSION)
    if(NOT CUDA_FOUND)
      find_host_package(CUDA ${OpenCV_CUDA_VERSION} EXACT REQUIRED)
    else()
      if(NOT CUDA_VERSION_STRING VERSION_EQUAL OpenCV_CUDA_VERSION)
        message(FATAL_ERROR "OpenCV static library was compiled with CUDA ${OpenCV_CUDA_VERSION} support. Please, use the same version or rebuild OpenCV with CUDA ${CUDA_VERSION_STRING}")
      endif()
    endif()

    set(OpenCV_CUDA_LIBS_ABSPATH ${CUDA_LIBRARIES})

    if(${CUDA_VERSION} VERSION_LESS "5.5")
      list(APPEND OpenCV_CUDA_LIBS_ABSPATH ${CUDA_npp_LIBRARY})
    else()
      find_cuda_helper_libs(nppc)
      find_cuda_helper_libs(nppi)
      find_cuda_helper_libs(npps)
      list(APPEND OpenCV_CUDA_LIBS_ABSPATH ${CUDA_nppc_LIBRARY} ${CUDA_nppi_LIBRARY} ${CUDA_npps_LIBRARY})
    endif()

    if(OpenCV_USE_CUBLAS)
      list(APPEND OpenCV_CUDA_LIBS_ABSPATH ${CUDA_CUBLAS_LIBRARIES})
    endif()

    if(OpenCV_USE_CUFFT)
      list(APPEND OpenCV_CUDA_LIBS_ABSPATH ${CUDA_CUFFT_LIBRARIES})
    endif()

    if(OpenCV_USE_NVCUVID)
      list(APPEND OpenCV_CUDA_LIBS_ABSPATH ${CUDA_nvcuvid_LIBRARIES})
    endif()

    if(WIN32)
      list(APPEND OpenCV_CUDA_LIBS_ABSPATH ${CUDA_nvcuvenc_LIBRARIES})
    endif()

    set(OpenCV_CUDA_LIBS_RELPATH "")
    foreach(l ${OpenCV_CUDA_LIBS_ABSPATH})
      get_filename_component(_tmp ${l} PATH)
      if(NOT ${_tmp} MATCHES "-Wl.*")
          list(APPEND OpenCV_CUDA_LIBS_RELPATH ${_tmp})
      endif()
    endforeach()

    list(REMOVE_DUPLICATES OpenCV_CUDA_LIBS_RELPATH)
    link_directories(${OpenCV_CUDA_LIBS_RELPATH})
  endif()
endforeach()

# ==============================================================
# Compatibility stuff
# ==============================================================
if(CMAKE_BUILD_TYPE MATCHES "Debug")
  SET(OpenCV_LIB_DIR ${OpenCV_LIB_DIR_DBG} ${OpenCV_3RDPARTY_LIB_DIR_DBG})
else()
  SET(OpenCV_LIB_DIR ${OpenCV_LIB_DIR_OPT} ${OpenCV_3RDPARTY_LIB_DIR_OPT})
endif()
set(OpenCV_LIBRARIES ${OpenCV_LIBS})

if(CMAKE_CROSSCOMPILING AND OpenCV_SHARED AND (CMAKE_SYSTEM_NAME MATCHES "Linux"))
  foreach(dir ${OpenCV_LIB_DIR})
    set(CMAKE_EXE_LINKER_FLAGS    "${CMAKE_EXE_LINKER_FLAGS}    -Wl,-rpath-link,${dir}")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -Wl,-rpath-link,${dir}")
    set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} -Wl,-rpath-link,${dir}")
  endforeach()
endif()



#
# Some macroses for samples
#
macro(ocv_check_dependencies)
  set(OCV_DEPENDENCIES_FOUND TRUE)
  foreach(d ${ARGN})
    if(NOT TARGET ${d})
      message(WARNING "OpenCV: Can't resolve dependency: ${d}")
      set(OCV_DEPENDENCIES_FOUND FALSE)
      break()
    endif()
  endforeach()
endmacro()

# adds include directories in such way that directories from the OpenCV source tree go first
function(ocv_include_directories)
  set(__add_before "")
  file(TO_CMAKE_PATH "${OpenCV_DIR}" __baseDir)
  foreach(dir ${ARGN})
    get_filename_component(__abs_dir "${dir}" ABSOLUTE)
    if("${__abs_dir}" MATCHES "^${__baseDir}")
      list(APPEND __add_before "${dir}")
    else()
      include_directories(AFTER SYSTEM "${dir}")
    endif()
  endforeach()
  include_directories(BEFORE ${__add_before})
endfunction()

macro(ocv_include_modules)
  include_directories(BEFORE "${OpenCV_INCLUDE_DIRS}")
endmacro()

macro(ocv_include_modules_recurse)
  include_directories(BEFORE "${OpenCV_INCLUDE_DIRS}")
endmacro()

macro(ocv_target_link_libraries)
  target_link_libraries(${ARGN})
endmacro()

# remove all matching elements from the list
macro(ocv_list_filterout lst regex)
  foreach(item ${${lst}})
    if(item MATCHES "${regex}")
      list(REMOVE_ITEM ${lst} "${item}")
    endif()
  endforeach()
endmacro()
