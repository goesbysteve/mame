include(scripts/cmake/src/cpu.cmake)
include(scripts/cmake/src/sound.cmake)
include(scripts/cmake/src/video.cmake)
include(scripts/cmake/src/machine.cmake)
include(scripts/cmake/src/bus.cmake)

#pchsource(${MAME_DIR}/src/devices/machine/timer.cpp")

add_library(optional STATIC ${CPU_SRCS} ${SOUND_SRCS} ${VIDEO_SRCS} ${MACHINE_SRCS} ${BUS_SRCS})

target_include_directories(optional PRIVATE
	${MAME_DIR}/src/osd
	${MAME_DIR}/src/emu
	${MAME_DIR}/src/devices
	${MAME_DIR}/src/mame # used for sound amiga
	${MAME_DIR}/src/lib
	${MAME_DIR}/src/lib/util
	${MAME_DIR}/3rdparty
	${GEN_DIR}/emu
	${GEN_DIR}/layout
	${MAME_DIR}/3rdparty/asio/include
	${MAME_DIR}/3rdparty/expat/lib
	${MAME_DIR}/3rdparty/libflac/include
)

