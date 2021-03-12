set(PORTMIDI_SRCS
	${MAME_DIR}/3rdparty/portmidi/pm_common/portmidi.c
	${MAME_DIR}/3rdparty/portmidi/pm_common/pmutil.c
)

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
set(PORTMIDI_SRCS_ADDITIONAL
	${MAME_DIR}/3rdparty/portmidi/pm_linux/pmlinux.c
	${MAME_DIR}/3rdparty/portmidi/pm_linux/pmlinuxalsa.c
	${MAME_DIR}/3rdparty/portmidi/pm_linux/finddefault.c
	${MAME_DIR}/3rdparty/portmidi/porttime/ptlinux.c
)
elseif (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
set(PORTMIDI_SRCS_ADDITIONAL
	${MAME_DIR}/3rdparty/portmidi/porttime/ptwinmm.c
	${MAME_DIR}/3rdparty/portmidi/pm_win/pmwin.c
	${MAME_DIR}/3rdparty/portmidi/pm_win/pmwinmm.c
	${MAME_DIR}/3rdparty/portmidi/porttime/ptwinmm.c
)
endif()

add_library(portmidi STATIC ${PORTMIDI_SRCS} ${PORTMIDI_SRCS_ADDITIONAL})

target_include_directories(portmidi PRIVATE
	${MAME_DIR}/3rdparty/portmidi/pm_common
	${MAME_DIR}/3rdparty/portmidi/porttime
)

target_compile_definitions(portmidi PRIVATE PMALSA=1)
