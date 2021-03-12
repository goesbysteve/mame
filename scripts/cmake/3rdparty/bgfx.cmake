set(BGFX_SRCS
	${MAME_DIR}/3rdparty/bgfx/src/bgfx.cpp
	${MAME_DIR}/3rdparty/bgfx/src/debug_renderdoc.cpp
	${MAME_DIR}/3rdparty/bgfx/src/dxgi.cpp
	${MAME_DIR}/3rdparty/bgfx/src/glcontext_egl.cpp
	${MAME_DIR}/3rdparty/bgfx/src/glcontext_glx.cpp
	${MAME_DIR}/3rdparty/bgfx/src/glcontext_html5.cpp
	${MAME_DIR}/3rdparty/bgfx/src/glcontext_wgl.cpp
	${MAME_DIR}/3rdparty/bgfx/src/nvapi.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_d3d11.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_d3d12.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_d3d9.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_gl.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_gnm.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_noop.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_nvn.cpp
	${MAME_DIR}/3rdparty/bgfx/src/renderer_vk.cpp
	${MAME_DIR}/3rdparty/bgfx/src/shader.cpp
	${MAME_DIR}/3rdparty/bgfx/src/shader_dx9bc.cpp
	${MAME_DIR}/3rdparty/bgfx/src/shader_dxbc.cpp
	${MAME_DIR}/3rdparty/bgfx/src/shader_spirv.cpp
	${MAME_DIR}/3rdparty/bgfx/src/topology.cpp
	${MAME_DIR}/3rdparty/bgfx/src/vertexdecl.cpp
	${MAME_DIR}/3rdparty/bgfx/examples/common/imgui/imgui.cpp
	${MAME_DIR}/3rdparty/bgfx/examples/common/nanovg/nanovg.cpp
	${MAME_DIR}/3rdparty/bgfx/examples/common/nanovg/nanovg_bgfx.cpp
	${MAME_DIR}/3rdparty/bgfx/3rdparty/dear-imgui/imgui.cpp
	${MAME_DIR}/3rdparty/bgfx/3rdparty/dear-imgui/imgui_draw.cpp
	${MAME_DIR}/3rdparty/bgfx/3rdparty/dear-imgui/imgui_widgets.cpp
)

add_library(bgfx STATIC ${BGFX_SRCS})

target_compile_definitions(bgfx PRIVATE
	__STDC_LIMIT_MACROS
	__STDC_FORMAT_MACROS
	__STDC_CONSTANT_MACROS
	BGFX_CONFIG_MAX_FRAME_BUFFERS=128
	IMGUI_DISABLE_OBSOLETE_FUNCTIONS
)


if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
target_include_directories(bgfx PRIVATE
	${MAME_DIR}/3rdparty/bx/include/compat/msvc
)
else() 
target_include_directories(bgfx PRIVATE
	${MAME_DIR}/3rdparty/bx/include/compat/mingw
)
endif()
endif()

target_include_directories(bgfx PRIVATE
	${MAME_DIR}/3rdparty/bgfx/include

	${MAME_DIR}/3rdparty/bgfx/3rdparty/khronos

	${MAME_DIR}/3rdparty/bgfx/3rdparty
	${MAME_DIR}/3rdparty/bx/include
	${MAME_DIR}/3rdparty/bimg/include
	${MAME_DIR}/3rdparty/bgfx/3rdparty/dxsdk/include
)
