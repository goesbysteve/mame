set(WDLFFT_SRCS
	${MAME_DIR}/3rdparty/wdlfft/fft.c
	${MAME_DIR}/3rdparty/wdlfft/fft.h
)

add_library(wdlfft STATIC ${WDLFFT_SRCS})
