set(UTF8PROC_SRCS
	${MAME_DIR}/3rdparty/utf8proc/utf8proc.c
)

add_library(utf8proc STATIC ${UTF8PROC_SRCS})

target_compile_definitions(utf8proc PRIVATE
	UTF8PROC_DLLEXPORT=
	ZLIB_CONST
)
