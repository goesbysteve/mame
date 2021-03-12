set(SDLOS_TARGETOS "unix")

set(OCORE_SRCS
	${MAME_DIR}/src/osd/osdcore.cpp
	${MAME_DIR}/src/osd/osdcore.h
	${MAME_DIR}/src/osd/strconv.cpp
	${MAME_DIR}/src/osd/strconv.h
	${MAME_DIR}/src/osd/osdsync.cpp
	${MAME_DIR}/src/osd/osdsync.h
	${MAME_DIR}/src/osd/modules/osdmodule.cpp
	${MAME_DIR}/src/osd/modules/osdmodule.h
	${MAME_DIR}/src/osd/modules/lib/osdlib_${SDLOS_TARGETOS}.cpp
	${MAME_DIR}/src/osd/modules/lib/osdlib.h


	${MAME_DIR}/src/osd/modules/file/posixdir.cpp
	${MAME_DIR}/src/osd/modules/file/posixdomain.cpp
	${MAME_DIR}/src/osd/modules/file/posixfile.cpp
	${MAME_DIR}/src/osd/modules/file/posixfile.h
	${MAME_DIR}/src/osd/modules/file/posixptty.cpp
	${MAME_DIR}/src/osd/modules/file/posixsocket.cpp
)

add_library(ocore STATIC ${OCORE_SRCS})

target_include_directories(ocore PRIVATE 
	${MAME_DIR}/src/emu
	${MAME_DIR}/src/osd
	${MAME_DIR}/src/lib
	${MAME_DIR}/src/lib/util
	${MAME_DIR}/src/osd/sdl
)

target_link_libraries(ocore LINK_PUBLIC 
	dl
	SDL2
	pthread
)