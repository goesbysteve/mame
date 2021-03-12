set(7Z_SRCS
	${MAME_DIR}/3rdparty/lzma/C/7zAlloc.c
	${MAME_DIR}/3rdparty/lzma/C/7zArcIn.c
	${MAME_DIR}/3rdparty/lzma/C/7zBuf.c
	${MAME_DIR}/3rdparty/lzma/C/7zBuf2.c
	${MAME_DIR}/3rdparty/lzma/C/7zCrc.c
	${MAME_DIR}/3rdparty/lzma/C/7zCrcOpt.c
	${MAME_DIR}/3rdparty/lzma/C/7zDec.c
	${MAME_DIR}/3rdparty/lzma/C/7zFile.c
	${MAME_DIR}/3rdparty/lzma/C/7zStream.c
	${MAME_DIR}/3rdparty/lzma/C/Aes.c
	${MAME_DIR}/3rdparty/lzma/C/AesOpt.c
	${MAME_DIR}/3rdparty/lzma/C/Alloc.c
	${MAME_DIR}/3rdparty/lzma/C/Bcj2.c
	# ${MAME_DIR}/3rdparty/lzma/C/Bcj2Enc.c
	${MAME_DIR}/3rdparty/lzma/C/Bra.c
	${MAME_DIR}/3rdparty/lzma/C/Bra86.c
	${MAME_DIR}/3rdparty/lzma/C/BraIA64.c
	${MAME_DIR}/3rdparty/lzma/C/CpuArch.c
	${MAME_DIR}/3rdparty/lzma/C/Delta.c
	# ${MAME_DIR}/3rdparty/lzma/C/DllSecur.c
	${MAME_DIR}/3rdparty/lzma/C/LzFind.c
	# ${MAME_DIR}/3rdparty/lzma/C/LzFindMt.c
	${MAME_DIR}/3rdparty/lzma/C/Lzma2Dec.c
	${MAME_DIR}/3rdparty/lzma/C/Lzma2Enc.c
	${MAME_DIR}/3rdparty/lzma/C/Lzma86Dec.c
	${MAME_DIR}/3rdparty/lzma/C/Lzma86Enc.c
	${MAME_DIR}/3rdparty/lzma/C/LzmaDec.c
	${MAME_DIR}/3rdparty/lzma/C/LzmaEnc.c
	# ${MAME_DIR}/3rdparty/lzma/C/LzmaLib.c
	# ${MAME_DIR}/3rdparty/lzma/C/MtCoder.c
	${MAME_DIR}/3rdparty/lzma/C/Ppmd7.c
	${MAME_DIR}/3rdparty/lzma/C/Ppmd7Dec.c
	${MAME_DIR}/3rdparty/lzma/C/Ppmd7Enc.c
	${MAME_DIR}/3rdparty/lzma/C/Sha256.c
	${MAME_DIR}/3rdparty/lzma/C/Sort.c
	# ${MAME_DIR}/3rdparty/lzma/C/Threads.c
	# ${MAME_DIR}/3rdparty/lzma/C/Xz.c
	# ${MAME_DIR}/3rdparty/lzma/C/XzCrc64.c
	# ${MAME_DIR}/3rdparty/lzma/C/XzCrc64Opt.c
	# ${MAME_DIR}/3rdparty/lzma/C/XzDec.c
	# ${MAME_DIR}/3rdparty/lzma/C/XzEnc.c
	# ${MAME_DIR}/3rdparty/lzma/C/XzIn.c
)

add_library(7z STATIC ${7Z_SRCS})

target_compile_definitions(7z PRIVATE
	_7ZIP_PPMD_SUPPPORT
	_7ZIP_ST
)
