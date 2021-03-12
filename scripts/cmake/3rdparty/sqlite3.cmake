set(SQLITE3_SRCS
	${MAME_DIR}/3rdparty/sqlite3/sqlite3.c
)

add_library(sqlite3 STATIC ${SQLITE3_SRCS})
