# There is no single flag that that contains the platform used to build the project. This simple
# module collects all of the various sources of information and sets a single variable named
# TARGET_PLATFORM.
#
# To manually provide this from the command line, it can be set as:
#   cmake -DTARGET_PLATFORM=xyz
#
# Once set, the TARGET_PLATFORM will contain one of the following values:
#   lin32
#   lin64
#   macos
#   win32
#   win64
if(NOT TARGET_PLATFORM)
  if(WIN32)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
      set(TARGET_PLATFORM "win64")
    else()
      set(TARGET_PLATFORM "win32")
    endif()
  elseif(APPLE)
    set(TARGET_PLATFORM "macos")
  else() # Linux
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
      set(TARGET_PLATFORM "lin64")
    else()
      set(TARGET_PLATFORM "lin32")
    endif()
  endif()
endif()
