set(ZLIB_SRCS
	${MAME_DIR}/3rdparty/zlib/adler32.c
	${MAME_DIR}/3rdparty/zlib/compress.c
	${MAME_DIR}/3rdparty/zlib/crc32.c
	${MAME_DIR}/3rdparty/zlib/deflate.c
	${MAME_DIR}/3rdparty/zlib/inffast.c
	${MAME_DIR}/3rdparty/zlib/inflate.c
	${MAME_DIR}/3rdparty/zlib/infback.c
	${MAME_DIR}/3rdparty/zlib/inftrees.c
	${MAME_DIR}/3rdparty/zlib/trees.c
	${MAME_DIR}/3rdparty/zlib/uncompr.c
	${MAME_DIR}/3rdparty/zlib/zutil.c
)

add_library(zlib STATIC ${ZLIB_SRCS})

target_compile_definitions(zlib PRIVATE ZLIB_CONST)
