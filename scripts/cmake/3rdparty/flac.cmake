set(FLAC_SRCS
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/bitmath.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/bitreader.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/bitwriter.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/cpu.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/crc.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/fixed.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/float.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/format.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/lpc.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/md5.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/memory.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/stream_decoder.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/stream_encoder.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/stream_encoder_framing.c
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/window.c
)

add_library(flac STATIC ${FLAC_SRCS})

target_include_directories(flac PRIVATE
	${MAME_DIR}/3rdparty/libflac/src/libFLAC/include
	${MAME_DIR}/3rdparty/libflac/include
)

target_compile_definitions(flac PRIVATE
	WORDS_BIGENDIAN=0
	FLAC__NO_ASM
	_LARGEFILE_SOURCE
	_FILE_OFFSET_BITS=64
	FLAC__HAS_OGG=0
	HAVE_CONFIG_H=1
)
