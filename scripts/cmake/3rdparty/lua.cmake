set(LUA_SRCS
	${MAME_DIR}/3rdparty/lua/src/lapi.c
	${MAME_DIR}/3rdparty/lua/src/lcode.c
	${MAME_DIR}/3rdparty/lua/src/lctype.c
	${MAME_DIR}/3rdparty/lua/src/ldebug.c
	${MAME_DIR}/3rdparty/lua/src/ldo.c
	${MAME_DIR}/3rdparty/lua/src/ldump.c
	${MAME_DIR}/3rdparty/lua/src/lfunc.c
	${MAME_DIR}/3rdparty/lua/src/lgc.c
	${MAME_DIR}/3rdparty/lua/src/llex.c
	${MAME_DIR}/3rdparty/lua/src/lmem.c
	${MAME_DIR}/3rdparty/lua/src/lobject.c
	${MAME_DIR}/3rdparty/lua/src/lopcodes.c
	${MAME_DIR}/3rdparty/lua/src/lparser.c
	${MAME_DIR}/3rdparty/lua/src/lstate.c
	${MAME_DIR}/3rdparty/lua/src/lstring.c
	${MAME_DIR}/3rdparty/lua/src/ltable.c
	${MAME_DIR}/3rdparty/lua/src/ltm.c
	${MAME_DIR}/3rdparty/lua/src/lundump.c
	${MAME_DIR}/3rdparty/lua/src/lvm.c
	${MAME_DIR}/3rdparty/lua/src/lzio.c
	${MAME_DIR}/3rdparty/lua/src/lauxlib.c
	${MAME_DIR}/3rdparty/lua/src/lbaselib.c
	${MAME_DIR}/3rdparty/lua/src/lbitlib.c
	${MAME_DIR}/3rdparty/lua/src/lcorolib.c
	${MAME_DIR}/3rdparty/lua/src/ldblib.c
	${MAME_DIR}/3rdparty/lua/src/liolib.c
	${MAME_DIR}/3rdparty/lua/src/lmathlib.c
	${MAME_DIR}/3rdparty/lua/src/loslib.c
	${MAME_DIR}/3rdparty/lua/src/lstrlib.c
	${MAME_DIR}/3rdparty/lua/src/ltablib.c
	${MAME_DIR}/3rdparty/lua/src/loadlib.c
	${MAME_DIR}/3rdparty/lua/src/linit.c
	${MAME_DIR}/3rdparty/lua/src/lutf8lib.c
)

add_library(lua STATIC ${LUA_SRCS})

target_compile_definitions(lua PRIVATE
	LUA_COMPAT_ALL
	LUA_COMPAT_5_1
	LUA_COMPAT_5_2
)
if (NOT ${CMAKE_SYSTEM_NAME} MATCHES "Windows")
target_compile_definitions(lua PRIVATE
	LUA_USE_POSIX
)
endif()