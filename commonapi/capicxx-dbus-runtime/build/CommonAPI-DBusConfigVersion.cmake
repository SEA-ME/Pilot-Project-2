set(PACKAGE_VERSION "3.1.12")

set(PACKAGE_VERSION_COMPATIBLE FALSE)

string(REPLACE "." "\\." ESCAPED_API_HEADER_VERSION "3.1")
if("${PACKAGE_FIND_VERSION}" MATCHES "^${ESCAPED_API_HEADER_VERSION}($|\\.)")
    set(PACKAGE_VERSION_COMPATIBLE TRUE)
endif()

if(PACKAGE_FIND_VERSION VERSION_EQUAL PACKAGE_VERSION)
    set(PACKAGE_VERSION_EXACT TRUE)
endif()
