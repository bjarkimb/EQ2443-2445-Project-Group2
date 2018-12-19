# Install script for directory: /home/project/prefix/gr-ieee802-11/include/ieee802-11

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "ieee802_11_devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ieee802-11/gnuradio/ieee802_11" TYPE FILE FILES
    "/home/project/prefix/gr-ieee802-11/build/include/ieee802-11/moving_average_ff.h"
    "/home/project/prefix/gr-ieee802-11/build/include/ieee802-11/moving_average_cc.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/api.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/chunks_to_symbols.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/constellations.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/decode_mac.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/ether_encap.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/frame_equalizer.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/mac.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/mapper.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/parse_mac.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/signal_field.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/sync_long.h"
    "/home/project/prefix/gr-ieee802-11/include/ieee802-11/sync_short.h"
    )
endif()

