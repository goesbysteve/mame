set(NLTOOLS_SRCS
	${MAME_DIR}/src/lib/netlist/prg/nlwav.cpp
)

add_executable(nlwav ${NLTOOLS_SRCS})

target_include_directories(nlwav PRIVATE 
	${MAME_DIR}/src/lib
	${MAME_DIR}/src/lib/netlist
)

target_link_libraries(nlwav LINK_PUBLIC netlist ${common_libraries})
