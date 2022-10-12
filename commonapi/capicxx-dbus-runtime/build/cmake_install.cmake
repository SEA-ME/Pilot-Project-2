# Install script for directory: /home/pi/commonapi/capicxx-dbus-runtime

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
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so.3.1.12" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so.3.1.12")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so.3.1.12"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/commonapi/capicxx-dbus-runtime/build/libCommonAPI-DBus.so.3.1.12")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so.3.1.12" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so.3.1.12")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so.3.1.12"
         OLD_RPATH "/home/pi/commonapi/dbus-1.10.10/dbus/.libs:/home/pi/commonapi/capicxx-core-runtime/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so.3.1.12")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/commonapi/capicxx-dbus-runtime/build/libCommonAPI-DBus.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so"
         OLD_RPATH "/home/pi/commonapi/dbus-1.10.10/dbus/.libs:/home/pi/commonapi/capicxx-core-runtime/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCommonAPI-DBus.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CommonAPI-3.1/CommonAPI/DBus" TYPE FILE FILES
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/CommonAPIDBus.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusAddress.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusAddressTranslator.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusAttribute.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusClientId.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusConfig.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusConnection.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusDaemonProxy.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusDeployment.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusError.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusErrorEvent.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusEvent.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusFactory.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusFreedesktopAttribute.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusFreedesktopPropertiesStub.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusFreedesktopStubAdapterHelper.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusFreedesktopVariant.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusFunctionalHash.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusHelper.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusInputStream.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusInstanceAvailabilityStatusChangedEvent.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusInterfaceHandler.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusMainLoop.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusMainLoopContext.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusMessage.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusMultiEvent.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusObjectManager.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusObjectManagerStub.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusOutputStream.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusProxy.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusProxyAsyncCallbackHandler.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusProxyAsyncSignalMemberCallbackHandler.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusProxyBase.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusProxyConnection.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusProxyHelper.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusProxyManager.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusSelectiveEvent.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusSerializableArguments.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusServiceRegistry.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusStubAdapter.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusStubAdapterHelper.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusTypeOutputStream.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusTypes.hpp"
    "/home/pi/commonapi/capicxx-dbus-runtime/include/CommonAPI/DBus/DBusUtils.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CommonAPI-3.1/pugixml" TYPE FILE FILES "/home/pi/commonapi/capicxx-dbus-runtime/include/pugixml/pugiconfig.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CommonAPI-3.1/pugixml" TYPE FILE FILES "/home/pi/commonapi/capicxx-dbus-runtime/include/pugixml/pugixml.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-DBus-3.1.12" TYPE FILE FILES
    "/home/pi/commonapi/capicxx-dbus-runtime/build/CMakeFiles/CommonAPI-DBusConfig.cmake"
    "/home/pi/commonapi/capicxx-dbus-runtime/build/CommonAPI-DBusConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-DBus-3.1.12/CommonAPI-DBusTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-DBus-3.1.12/CommonAPI-DBusTargets.cmake"
         "/home/pi/commonapi/capicxx-dbus-runtime/build/CMakeFiles/Export/lib/cmake/CommonAPI-DBus-3.1.12/CommonAPI-DBusTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-DBus-3.1.12/CommonAPI-DBusTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-DBus-3.1.12/CommonAPI-DBusTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-DBus-3.1.12" TYPE FILE FILES "/home/pi/commonapi/capicxx-dbus-runtime/build/CMakeFiles/Export/lib/cmake/CommonAPI-DBus-3.1.12/CommonAPI-DBusTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CommonAPI-DBus-3.1.12" TYPE FILE FILES "/home/pi/commonapi/capicxx-dbus-runtime/build/CMakeFiles/Export/lib/cmake/CommonAPI-DBus-3.1.12/CommonAPI-DBusTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pi/commonapi/capicxx-dbus-runtime/build/CommonAPI-DBus.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/pi/commonapi/capicxx-dbus-runtime/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
