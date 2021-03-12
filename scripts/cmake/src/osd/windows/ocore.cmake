set(OCORE_SRCS
	${MAME_DIR}/src/osd/eigccppc.h
	${MAME_DIR}/src/osd/eigccx86.h
	${MAME_DIR}/src/osd/eivc.h
	${MAME_DIR}/src/osd/eivcx86.h
	${MAME_DIR}/src/osd/eminline.h
	${MAME_DIR}/src/osd/osdcomm.h
	${MAME_DIR}/src/osd/osdcore.cpp
	${MAME_DIR}/src/osd/osdcore.h
	${MAME_DIR}/src/osd/strconv.cpp
	${MAME_DIR}/src/osd/strconv.h
	${MAME_DIR}/src/osd/osdsync.cpp
	${MAME_DIR}/src/osd/osdsync.h
	${MAME_DIR}/src/osd/windows/main.cpp
	${MAME_DIR}/src/osd/windows/winutf8.cpp
	${MAME_DIR}/src/osd/windows/winutf8.h
	${MAME_DIR}/src/osd/windows/winutil.cpp
	${MAME_DIR}/src/osd/windows/winutil.h
	${MAME_DIR}/src/osd/modules/osdmodule.cpp
	${MAME_DIR}/src/osd/modules/osdmodule.h
	${MAME_DIR}/src/osd/modules/file/windir.cpp
	${MAME_DIR}/src/osd/modules/file/winfile.cpp
	${MAME_DIR}/src/osd/modules/file/winfile.h
	${MAME_DIR}/src/osd/modules/file/winptty.cpp
	${MAME_DIR}/src/osd/modules/file/winsocket.cpp
	${MAME_DIR}/src/osd/modules/lib/osdlib_win32.cpp	
)

add_library(ocore STATIC ${OCORE_SRCS})

target_compile_definitions(ocore PRIVATE
	WIN32
	_WIN32
	OSD_WINDOWS
	WIN32_LEAN_AND_MEAN
	NOMINMAX

	X64_WINDOWS_ABI
	UNICODE
	_UNICODE
)

target_include_directories(ocore PRIVATE 
	${MAME_DIR}/3rdparty
	${MAME_DIR}/src/emu
	${MAME_DIR}/src/osd
	${MAME_DIR}/src/osd/modules/file
	${MAME_DIR}/src/lib
	${MAME_DIR}/src/lib/util
	
	${MAME_DIR}/src/osd/windows
)

if (NOT CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
target_link_libraries(ocore LINK_PUBLIC 
	mingw32
)
endif()

target_link_libraries(ocore LINK_PUBLIC 
	dinput8
	comctl32
	comdlg32
	psapi
	ole32
	shlwapi
)

target_link_libraries(ocore LINK_PUBLIC 
	user32
	winmm
	advapi32
	shlwapi
	wsock32
	ws2_32
	psapi
	iphlpapi
	shell32
	userenv
)