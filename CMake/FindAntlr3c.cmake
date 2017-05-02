find_path(Antlr3c_INCLUDE_DIR antlr3.h PATHS
    /usr/local/include
    /opt/local/include
  )

set(Antlr3c_LIB_PATHS /usr/local/lib /opt/local/lib /usr/lib64)
find_library(Antlr3c_LIB NAMES antlr3c PATHS ${Antlr3c_LIB_PATHS})

if (Antlr3c_LIB AND Antlr3c_INCLUDE_DIR)
  set(Antlr3c_FOUND TRUE)
  set(Antlr3c_LIBS ${Antlr3c_LIB})
else ()
  set(Antlr3c_FOUND FALSE)
endif ()

if (Antlr3c_FOUND)
  if (NOT Antlr3c_FIND_QUIETLY)
    message(STATUS "Found antlr3c: ${Antlr3c_LIBS}")
  endif ()
else ()
  if (Antlr3c_FIND_REQUIRED)
    message(FATAL_ERROR "Could NOT find antlr3c library.")
  endif ()
  message(STATUS "antlr3c NOT found.")
endif ()

mark_as_advanced(
    Antlr3c_LIB
    Antlr3c_INCLUDE_DIR
  )
