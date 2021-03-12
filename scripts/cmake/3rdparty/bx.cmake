set(BX_SRCS
	${MAME_DIR}/3rdparty/bx/src/allocator.cpp
	${MAME_DIR}/3rdparty/bx/src/bx.cpp
	${MAME_DIR}/3rdparty/bx/src/commandline.cpp
	${MAME_DIR}/3rdparty/bx/src/crtnone.cpp
	${MAME_DIR}/3rdparty/bx/src/debug.cpp
	${MAME_DIR}/3rdparty/bx/src/dtoa.cpp
	${MAME_DIR}/3rdparty/bx/src/easing.cpp
	${MAME_DIR}/3rdparty/bx/src/file.cpp
	${MAME_DIR}/3rdparty/bx/src/filepath.cpp
	${MAME_DIR}/3rdparty/bx/src/hash.cpp
	${MAME_DIR}/3rdparty/bx/src/math.cpp
	${MAME_DIR}/3rdparty/bx/src/mutex.cpp
	${MAME_DIR}/3rdparty/bx/src/os.cpp
	${MAME_DIR}/3rdparty/bx/src/process.cpp
	${MAME_DIR}/3rdparty/bx/src/semaphore.cpp
	${MAME_DIR}/3rdparty/bx/src/settings.cpp
	${MAME_DIR}/3rdparty/bx/src/sort.cpp
	${MAME_DIR}/3rdparty/bx/src/string.cpp
	${MAME_DIR}/3rdparty/bx/src/thread.cpp
	${MAME_DIR}/3rdparty/bx/src/timer.cpp
	${MAME_DIR}/3rdparty/bx/src/url.cpp
)

add_library(bx STATIC ${BX_SRCS})

target_compile_definitions(bx PRIVATE
	__STDC_LIMIT_MACROS
	__STDC_FORMAT_MACROS
	__STDC_CONSTANT_MACROS
)

if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
target_include_directories(bx PRIVATE
	${MAME_DIR}/3rdparty/bx/include/compat/msvc
)
else() 
target_include_directories(bx PRIVATE
	${MAME_DIR}/3rdparty/bx/include/compat/mingw
)
endif()
endif()
target_include_directories(bx PRIVATE
	${MAME_DIR}/3rdparty/bx/include
	${MAME_DIR}/3rdparty/bx/3rdparty
)
