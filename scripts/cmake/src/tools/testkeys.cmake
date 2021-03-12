set(TESTKEYS_SRCS
	${MAME_DIR}/src/tools/testkeys.cpp
)

add_executable(testkeys ${TESTKEYS_SRCS})

target_include_directories(testkeys PRIVATE 
	${MAME_DIR}/src/osd
	${MAME_DIR}/src/lib/util
)

target_link_libraries(testkeys LINK_PUBLIC utils ${common_libraries})
