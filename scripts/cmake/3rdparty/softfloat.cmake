set(SOFTFLOAT_SRCS
	${MAME_DIR}/3rdparty/softfloat/softfloat.c
	${MAME_DIR}/3rdparty/softfloat/fsincos.c
	${MAME_DIR}/3rdparty/softfloat/fyl2x.c
)

set_source_files_properties(${SOFTFLOAT_SRCS} PROPERTIES LANGUAGE "CXX")

add_library(softfloat STATIC ${SOFTFLOAT_SRCS})

target_include_directories(softfloat PRIVATE ${MAME_DIR}/src/osd)
