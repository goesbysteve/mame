set(PORTAUDIO_SRCS
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_allocation.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_converters.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_cpuload.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_dither.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_debugprint.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_front.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_process.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_stream.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_trace.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/skeleton/pa_hostapi_skeleton.c
)

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
set(PORTAUDIO_SRCS_ADDITIONAL
	${MAME_DIR}/3rdparty/portaudio/src/os/unix/pa_unix_hostapis.c
	${MAME_DIR}/3rdparty/portaudio/src/os/unix/pa_unix_util.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/alsa/pa_linux_alsa.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/oss/pa_unix_oss.c
)
elseif (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
set(PORTAUDIO_SRCS_ADDITIONAL
	${MAME_DIR}/3rdparty/portaudio/src/os/win/pa_win_util.c
	${MAME_DIR}/3rdparty/portaudio/src/os/win/pa_win_waveformat.c
	${MAME_DIR}/3rdparty/portaudio/src/os/win/pa_win_hostapis.c
	${MAME_DIR}/3rdparty/portaudio/src/os/win/pa_win_coinitialize.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/dsound/pa_win_ds.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/dsound/pa_win_ds_dynlink.c
	${MAME_DIR}/3rdparty/portaudio/src/os/win/pa_win_hostapis.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/wasapi/pa_win_wasapi.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/wdmks/pa_win_wdmks.c
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/wmme/pa_win_wmme.c
	${MAME_DIR}/3rdparty/portaudio/src/common/pa_ringbuffer.c

)
endif()

add_library(portaudio STATIC ${PORTAUDIO_SRCS} ${PORTAUDIO_SRCS_ADDITIONAL})


target_include_directories(portaudio PRIVATE
	${MAME_DIR}/3rdparty/portaudio/include
	${MAME_DIR}/3rdparty/portaudio/src/common
)

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
target_compile_definitions(portaudio PRIVATE
	PA_USE_ALSA=1
	PA_USE_OSS=1
	HAVE_LINUX_SOUNDCARD_H
)
target_include_directories(portaudio PRIVATE
	${MAME_DIR}/3rdparty/portaudio/src/os/unix
)
elseif (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
target_compile_definitions(portaudio PRIVATE
	PA_USE_DS=1
	PA_USE_WASAPI=1
	PA_USE_WDMKS=1
	PA_USE_WMME=1
)
target_include_directories(portaudio PRIVATE
	${MAME_DIR}/3rdparty/portaudio/src/os/win
)
if (NOT CMAKE_CXX_COMPILER_ID STREQUAL "MSVC") 
target_include_directories(portaudio PRIVATE
	${MAME_DIR}/3rdparty/portaudio/src/hostapi/wasapi/mingw-include
)
endif()
endif()

