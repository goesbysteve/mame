cmake_minimum_required(VERSION 3.5)
project(mame CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED on)
set(CMAKE_C_EXTENSIONS ON)

find_package(PythonInterp 3.5 REQUIRED)

message(STATUS "${CMAKE_SYSTEM_NAME}")
message(STATUS "${CMAKE_SYSTEM_PROCESSOR}")

set(MAME_DIR "${CMAKE_SOURCE_DIR}")
set(GEN_DIR "${CMAKE_SOURCE_DIR}/build/generated")

set(default_build_type "Release")

if (NOT CMAKE_BUILD_TYPE)
  message(STATUS "No build type selected, default to Release")
  set(CMAKE_BUILD_TYPE "Release")
endif()

#set(CMAKE_CXX_FLAGS_DEBUG "-DMAME_DEBUG -DMAME_PROFILER")

#message(STATUS "CMAKE_C_FLAGS_DEBUG is ${CMAKE_C_FLAGS_DEBUG}")
#message(STATUS "CMAKE_C_FLAGS_RELEASE is ${CMAKE_C_FLAGS_RELEASE}")
#message(STATUS "CMAKE_C_FLAGS_RELWITHDEBINFO is ${CMAKE_C_FLAGS_RELWITHDEBINFO}")
#message(STATUS "CMAKE_C_FLAGS_MINSIZEREL is ${CMAKE_C_FLAGS_MINSIZEREL}")

#message(STATUS "CMAKE_CXX_FLAGS_DEBUG is ${CMAKE_CXX_FLAGS_DEBUG}")
#message(STATUS "CMAKE_CXX_FLAGS_RELEASE is ${CMAKE_CXX_FLAGS_RELEASE}")
#message(STATUS "CMAKE_CXX_FLAGS_RELWITHDEBINFO is ${CMAKE_CXX_FLAGS_RELWITHDEBINFO}")
#message(STATUS "CMAKE_CXX_FLAGS_MINSIZEREL is ${CMAKE_CXX_FLAGS_MINSIZEREL}")

include (TestBigEndian)
TEST_BIG_ENDIAN(BIG_ENDIAN)
if (NOT BIG_ENDIAN)
add_compile_definitions(
  LSB_FIRST
)
endif()

if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    # 64 bits
    message(STATUS "64-bit compiler detected")
    add_compile_definitions(PTR64)
elseif(CMAKE_SIZEOF_VOID_P EQUAL 4)
    # 32 bits
    message(STATUS "32-bit compiler detected")
endif()

if (NOT CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
set(CMAKE_CXX_FLAGS  "-Wa,-mbig-obj -O2")
else()
set(CMAKE_CXX_FLAGS  "-Wno-psabi")
endif()
endif()

# add a basic set of warnings
#set(CMAKE_C_FLAGS  "-Wall -Wcast-align -Wundef -Wformat-security -Wwrite-strings -Wno-sign-compare -Wno-conversion -Wno-error=deprecated-declarations" )
#set(CMAKE_CXX_FLAGS  "-Wall -Wcast-align -Wundef -Wformat-security -Wwrite-strings -Wno-sign-compare -Wno-conversion -Wno-error=deprecated-declarations -Wno-class-memaccess")
# warnings only applicable to C compiles
#	buildoptions_c {
#		"-Wpointer-arith
#		"-Wstrict-prototypes
#	}

# warnings only applicable to OBJ-C compiles
#	buildoptions_objcpp {
#		"-Wpointer-arith
#	}

# warnings only applicable to C++ compiles
#	buildoptions_cpp {
#		"-Woverloaded-virtual
#  }

if (NOT CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
set(common_libraries stdc++ m pthread)
else()
set(common_libraries )
endif()

add_compile_definitions(  
  #MAME_NOASM
  PUGIXML_HEADER_ONLY
)
if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
  # using Clang
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  # using GCC
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
  # using Intel C++
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
  # using Visual Studio C++
  add_definitions(/bigobj)
  add_compile_definitions(
    XML_STATIC
    WIN32
    _WIN32
    _CRT_NONSTDC_NO_DEPRECATE
    _CRT_SECURE_NO_DEPRECATE
    _CRT_STDIO_LEGACY_WIDE_SPECIFIERS
  )
  add_compile_definitions(
    FLAC__NO_DLL
  )
endif()

include(scripts/cmake/helpers.cmake)

ADD_CUSTOM_COMMAND(
    OUTPUT ${GEN_DIR}/version.cpp
    COMMAND ${CMAKE_COMMAND} -P
        ${MAME_DIR}/scripts/cmake/version.cmake)

include(scripts/cmake/3rdparty/expat.cmake)
add_project_to_group(expat 3rdparty)
include(scripts/cmake/3rdparty/zlib.cmake)
add_project_to_group(zlib 3rdparty)
include(scripts/cmake/3rdparty/softfloat.cmake)
add_project_to_group(softfloat 3rdparty)
include(scripts/cmake/3rdparty/softfloat3.cmake)
add_project_to_group(softfloat3 3rdparty)
include(scripts/cmake/3rdparty/jpeg.cmake)
add_project_to_group(jpeg 3rdparty)
include(scripts/cmake/3rdparty/flac.cmake)
add_project_to_group(flac 3rdparty)
include(scripts/cmake/3rdparty/7z.cmake)
add_project_to_group(7z 3rdparty)
include(scripts/cmake/3rdparty/lua.cmake)
add_project_to_group(lua 3rdparty)
include(scripts/cmake/3rdparty/sqlite3.cmake)
add_project_to_group(sqlite3 3rdparty)
include(scripts/cmake/3rdparty/portmidi.cmake)
add_project_to_group(portmidi 3rdparty)
include(scripts/cmake/3rdparty/bx.cmake)
add_project_to_group(bx 3rdparty)
include(scripts/cmake/3rdparty/bimg.cmake)
add_project_to_group(bimg 3rdparty)
include(scripts/cmake/3rdparty/bgfx.cmake)
add_project_to_group(bgfx 3rdparty)
include(scripts/cmake/3rdparty/portaudio.cmake)
add_project_to_group(portaudio 3rdparty)
include(scripts/cmake/3rdparty/linenoise.cmake)
add_project_to_group(linenoise 3rdparty)
include(scripts/cmake/3rdparty/utf8proc.cmake)
add_project_to_group(utf8proc 3rdparty)
include(scripts/cmake/3rdparty/wdlfft.cmake)
add_project_to_group(wdlfft 3rdparty)
#include(scripts/cmake/3rdparty/asmjit.cmake)
#add_project_to_group(asmjit 3rdparty)


if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
include(scripts/cmake/src/osd/windows/ocore.cmake)
add_project_to_group(ocore libs)
include(scripts/cmake/src/osd/windows/osd.cmake)
add_project_to_group(osd libs)
else()
include(scripts/cmake/src/osd/sdl/ocore.cmake)
add_project_to_group(ocore libs)
include(scripts/cmake/src/osd/sdl/osd.cmake)
add_project_to_group(osd libs)
endif()

include(scripts/cmake/src/utils.cmake)
add_project_to_group(utils libs)
include(scripts/cmake/src/netlist.cmake)
add_project_to_group(netlist libs)
include(scripts/cmake/src/formats.cmake)
add_project_to_group(formats libs)

include(scripts/cmake/src/emu.cmake)
include(scripts/cmake/src/mame/frontend.cmake)
include(scripts/cmake/src/optional.cmake)

#include(scripts/cmake/src/tools/romcmp.cmake)
#add_project_to_group(romcmp tools)
#include(scripts/cmake/src/tools/chdman.cmake)
#add_project_to_group(chdman tools)
#include(scripts/cmake/src/tools/jedutil.cmake)
#add_project_to_group(jedutil tools)
##include(scripts/cmake/src/tools/unidasm.cmake)
##add_project_to_group(unidasm tools)
#include(scripts/cmake/src/tools/ldresample.cmake)
#add_project_to_group(ldresample tools)
#include(scripts/cmake/src/tools/ldverify.cmake)
#add_project_to_group(ldverify tools)
#include(scripts/cmake/src/tools/regrep.cmake)
#add_project_to_group(regrep tools)
#include(scripts/cmake/src/tools/srcclean.cmake)
#add_project_to_group(srcclean tools)
#include(scripts/cmake/src/tools/split.cmake)
#add_project_to_group(split tools)
#include(scripts/cmake/src/tools/pngcmp.cmake)
#add_project_to_group(pngcmp tools)
#include(scripts/cmake/src/tools/nltool.cmake)
#add_project_to_group(nltool tools)
#include(scripts/cmake/src/tools/nlwav.cmake)
#add_project_to_group(nlwav tools)
#include(scripts/cmake/src/tools/castool.cmake)
#add_project_to_group(castool tools)
#include(scripts/cmake/src/tools/floptool.cmake)
#add_project_to_group(floptool tools)
#include(scripts/cmake/src/tools/imgtool.cmake)
#add_project_to_group(imgtool tools)
#include(scripts/cmake/src/tools/testkeys.cmake)
#add_project_to_group(testkeys tools)
set(ZEXALL_SRC
  ${MAME_DIR}/src/zexall/main.cpp
  ${MAME_DIR}/src/zexall/zexall.cpp
  ${MAME_DIR}/src/zexall/zexall.h
  ${MAME_DIR}/src/zexall/interface.h
)

add_executable(zexall ${ZEXALL_SRC})

target_include_directories(zexall PRIVATE 
  ${MAME_DIR}/src/osd
  ${MAME_DIR}/src/emu
  ${MAME_DIR}/src/devices
  ${MAME_DIR}/src/mame
  ${MAME_DIR}/src/lib
  ${MAME_DIR}/src/lib/util
  ${MAME_DIR}/3rdparty
  ${GEN_DIR}/mame/layout
	
	${MAME_DIR}/3rdparty/libflac/include
	${MAME_DIR}/3rdparty/glm
	${MAME_DIR}/3rdparty/libjpeg
	${MAME_DIR}/3rdparty/rapidjson/include
)

target_link_libraries(zexall LINK_PUBLIC osd utils optional emu jpeg formats softfloat3 ${common_libraries})
