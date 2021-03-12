set(EXPAT_SRCS
	${MAME_DIR}/3rdparty/expat/lib/xmlparse.c
	${MAME_DIR}/3rdparty/expat/lib/xmlrole.c
	${MAME_DIR}/3rdparty/expat/lib/xmltok.c
)

add_library(expat STATIC ${EXPAT_SRCS})

target_compile_definitions(expat PRIVATE
	HAVE_MEMMOVE
	HAVE_STDINT_H
	HAVE_STDLIB_H
	HAVE_STRING_H
	PACKAGE_BUGREPORT="expat-bugs@libexpat.org"
	PACKAGE_NAME="expat"
	PACKAGE_STRING="expat 2.1.1"
	PACKAGE_TARNAME="expat"
	PACKAGE_URL=""
	PACKAGE_VERSION="2.1.1"
	STDC_HEADERS
	XML_CONTEXT_BYTES=1024
	XML_DTD
	XML_NS)

target_compile_definitions(expat PRIVATE
	HAVE_DLFCN_H
	HAVE_FCNTL_H
	HAVE_MMAP
	HAVE_SYS_STAT_H
	HAVE_SYS_TYPES_H
	HAVE_UNISTD_H
	XML_DEV_URANDOM
)

if(BIGENDIAN)
	target_compile_definitions(expat PRIVATE BYTEORDER=4321 WORDS_BIGENDIAN)
else()
	target_compile_definitions(expat PRIVATE BYTEORDER=1234)
endif()