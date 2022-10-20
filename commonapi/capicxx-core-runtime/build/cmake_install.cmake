# Install script for directory: /home/pi/commonapi/capicxx-core-runtime

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
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so.3.1.12" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so.3.1.12")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so.3.1.12"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/commonapi/capicxx-core-runtime/build/libCommonAPI.so.3.1.12")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so.3.1.12" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so.3.1.12")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so.3.1.12")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/commonapi/capicxx-core-runtime/build/libCommonAPI.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CommonAPI-3.1/CommonAPI" TYPE FILE FILES
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Address.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Attribute.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/AttributeExtension.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/ByteBuffer.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/CallInfo.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/CommonAPI.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Config.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/ContainerUtils.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Deployable.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Deployment.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Enumeration.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Event.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Export.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Extensions/AttributeCacheExtension.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Factory.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/IniFileReader.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/InputStream.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Logger.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/LoggerImpl.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/MainLoopContext.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/OutputStream.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Proxy.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/ProxyManager.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Runtime.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/SelectiveEvent.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/SerializableArguments.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Struct.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Stub.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/TypeOutputStream.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Types.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Utils.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Variant.hpp"
    "/home/pi/commonapi/capicxx-core-runtime/include/CommonAPI/Version.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-3.1.12" TYPE FILE FILES
    "/home/pi/commonapi/capicxx-core-runtime/build/CMakeFiles/CommonAPIConfig.cmake"
    "/home/pi/commonapi/capicxx-core-runtime/build/CommonAPIConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-3.1.12/CommonAPITargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-3.1.12/CommonAPITargets.cmake"
         "/home/pi/commonapi/capicxx-core-runtime/build/CMakeFiles/Export/lib/cmake/CommonAPI-3.1.12/CommonAPITargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-3.1.12/CommonAPITargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-3.1.12/CommonAPITargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-3.1.12" TYPE FILE FILES "/home/pi/commonapi/capicxx-core-runtime/build/CMakeFiles/Export/lib/cmake/CommonAPI-3.1.12/CommonAPITargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-3.1.12" TYPE FILE FILES "/home/pi/commonapi/capicxx-core-runtime/build/CMakeFiles/Export/lib/cmake/CommonAPI-3.1.12/CommonAPITargets-relwithdebinfo.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pi/commonapi/capicxx-core-runtime/build/CommonAPI.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/pi/commonapi/capicxx-core-runtime/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
