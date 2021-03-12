set(BIMG_SRCS
	${MAME_DIR}/3rdparty/bimg/src/image.cpp
	${MAME_DIR}/3rdparty/bimg/src/image_gnf.cpp

	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/astc_file.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/codec.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/endpoint_codec.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/footprint.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/integer_sequence_codec.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/intermediate_astc_block.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/logical_astc_block.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/partition.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/physical_astc_block.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/quantization.cc
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/src/decoder/weight_infill.cc
)

add_library(bimg STATIC ${BIMG_SRCS})

target_compile_definitions(bimg PRIVATE
	__STDC_LIMIT_MACROS
	__STDC_FORMAT_MACROS
	__STDC_CONSTANT_MACROS
)

if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
target_include_directories(bimg PRIVATE
	${MAME_DIR}/3rdparty/bx/include/compat/msvc
)
else() 
target_include_directories(bimg PRIVATE
	${MAME_DIR}/3rdparty/bx/include/compat/mingw
)
endif()
endif()

target_include_directories(bimg PRIVATE
	${MAME_DIR}/3rdparty/bx/include
	${MAME_DIR}/3rdparty/bimg/include
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec
	${MAME_DIR}/3rdparty/bimg/3rdparty/astc-codec/include
)
