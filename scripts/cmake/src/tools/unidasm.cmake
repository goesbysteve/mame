set(UNIDASM_SRCS
	${MAME_DIR}/src/tools/unidasm.cpp
)

add_executable(unidasm ${UNIDASM_SRCS})

target_include_directories(unidasm PRIVATE 
	${MAME_DIR}/src/osd
	${MAME_DIR}/src/lib/util
)

target_link_libraries(unidasm LINK_PUBLIC 
	dasm
	utils
	${common_libraries}
)
