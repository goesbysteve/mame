set(NLTOOLS_SRCS
	${MAME_DIR}/src/lib/netlist/prg/nltool.cpp
)

add_executable(nltool ${NLTOOLS_SRCS})

target_include_directories(nltool PRIVATE 
	${MAME_DIR}/src/lib
	${MAME_DIR}/src/lib/netlist
)

target_link_libraries(nltool LINK_PUBLIC netlist ${common_libraries})
