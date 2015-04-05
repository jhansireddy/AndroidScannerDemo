#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libtiff" for configuration "Release"
set_property(TARGET libtiff APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libtiff PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "z"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibtiff.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libtiff )
list(APPEND _IMPORT_CHECK_FILES_FOR_libtiff "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibtiff.a" )

# Import target "libjpeg" for configuration "Release"
set_property(TARGET libjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libjpeg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibjpeg.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libjpeg )
list(APPEND _IMPORT_CHECK_FILES_FOR_libjpeg "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibjpeg.a" )

# Import target "libjasper" for configuration "Release"
set_property(TARGET libjasper APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libjasper PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibjasper.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libjasper )
list(APPEND _IMPORT_CHECK_FILES_FOR_libjasper "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibjasper.a" )

# Import target "libpng" for configuration "Release"
set_property(TARGET libpng APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libpng PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "z"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibpng.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libpng )
list(APPEND _IMPORT_CHECK_FILES_FOR_libpng "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/liblibpng.a" )

# Import target "IlmImf" for configuration "Release"
set_property(TARGET IlmImf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(IlmImf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "z"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/libIlmImf.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS IlmImf )
list(APPEND _IMPORT_CHECK_FILES_FOR_IlmImf "${_IMPORT_PREFIX}/sdk/native/3rdparty/libs/armeabi/libIlmImf.a" )

# Import target "opencv_core" for configuration "Release"
set_property(TARGET opencv_core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "z;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_core.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_core )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_core "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_core.a" )

# Import target "opencv_androidcamera" for configuration "Release"
set_property(TARGET opencv_androidcamera APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_androidcamera PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_androidcamera.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_androidcamera )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_androidcamera "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_androidcamera.a" )

# Import target "opencv_flann" for configuration "Release"
set_property(TARGET opencv_flann APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_flann PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_flann.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_flann )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_flann "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_flann.a" )

# Import target "opencv_imgproc" for configuration "Release"
set_property(TARGET opencv_imgproc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_imgproc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_imgproc.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_imgproc )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_imgproc "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_imgproc.a" )

# Import target "opencv_highgui" for configuration "Release"
set_property(TARGET opencv_highgui APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_highgui PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_imgproc;dl;log;dl;m;log;z;libjpeg;libpng;libtiff;libjasper;IlmImf"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_highgui.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_highgui )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_highgui "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_highgui.a" )

# Import target "opencv_features2d" for configuration "Release"
set_property(TARGET opencv_features2d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_features2d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_features2d.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_features2d )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_features2d "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_features2d.a" )

# Import target "opencv_calib3d" for configuration "Release"
set_property(TARGET opencv_calib3d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_calib3d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_calib3d.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_calib3d )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_calib3d "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_calib3d.a" )

# Import target "opencv_ml" for configuration "Release"
set_property(TARGET opencv_ml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_ml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_ml.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_ml )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_ml "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_ml.a" )

# Import target "opencv_objdetect" for configuration "Release"
set_property(TARGET opencv_objdetect APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_objdetect PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_imgproc;opencv_highgui;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_objdetect.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_objdetect )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_objdetect "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_objdetect.a" )

# Import target "opencv_video" for configuration "Release"
set_property(TARGET opencv_video APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_video PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_imgproc;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_video.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_video )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_video "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_video.a" )

# Import target "opencv_contrib" for configuration "Release"
set_property(TARGET opencv_contrib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_contrib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_objdetect;opencv_video;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_contrib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_contrib )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_contrib "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_contrib.a" )

# Import target "opencv_photo" for configuration "Release"
set_property(TARGET opencv_photo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_photo PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_imgproc;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_photo.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_photo )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_photo "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_photo.a" )

# Import target "opencv_java" for configuration "Release"
set_property(TARGET opencv_java APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_java PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_java.so"
  IMPORTED_SONAME_RELEASE "libopencv_java.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_java )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_java "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_java.so" )

# Import target "opencv_legacy" for configuration "Release"
set_property(TARGET opencv_legacy APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_legacy PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_legacy.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_legacy )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_legacy "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_legacy.a" )

# Import target "opencv_ocl" for configuration "Release"
set_property(TARGET opencv_ocl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_ocl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_objdetect;opencv_video;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_ocl.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_ocl )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_ocl "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_ocl.a" )

# Import target "opencv_stitching" for configuration "Release"
set_property(TARGET opencv_stitching APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_stitching PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_objdetect;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_stitching.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_stitching )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_stitching "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_stitching.a" )

# Import target "opencv_superres" for configuration "Release"
set_property(TARGET opencv_superres APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_superres PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_objdetect;opencv_video;opencv_ocl;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_superres.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_superres )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_superres "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_superres.a" )

# Import target "opencv_ts" for configuration "Release"
set_property(TARGET opencv_ts APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_ts PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_video;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_ts.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_ts )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_ts "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_ts.a" )

# Import target "opencv_videostab" for configuration "Release"
set_property(TARGET opencv_videostab APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(opencv_videostab PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opencv_core;opencv_androidcamera;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_photo;opencv_video;dl;log;dl;m;log"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_videostab.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_videostab )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_videostab "${_IMPORT_PREFIX}/sdk/native/libs/armeabi/libopencv_videostab.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
