set(OSD_SRCS
		${MAME_DIR}/src/osd/modules/render/d3d/d3dhlsl.cpp
		${MAME_DIR}/src/osd/modules/render/d3d/d3dcomm.h
		${MAME_DIR}/src/osd/modules/render/d3d/d3dhlsl.h
		${MAME_DIR}/src/osd/modules/render/drawd3d.cpp
		${MAME_DIR}/src/osd/modules/render/drawd3d.h
		${MAME_DIR}/src/osd/modules/render/drawgdi.cpp
		${MAME_DIR}/src/osd/modules/render/drawgdi.h
		${MAME_DIR}/src/osd/modules/render/drawnone.cpp
		${MAME_DIR}/src/osd/modules/render/drawnone.h
		${MAME_DIR}/src/osd/windows/video.cpp
		${MAME_DIR}/src/osd/windows/video.h
		${MAME_DIR}/src/osd/windows/window.cpp
		${MAME_DIR}/src/osd/windows/window.h
		${MAME_DIR}/src/osd/modules/osdwindow.cpp
		${MAME_DIR}/src/osd/modules/osdwindow.h
		${MAME_DIR}/src/osd/windows/winmenu.cpp
		${MAME_DIR}/src/osd/windows/winmain.cpp
		${MAME_DIR}/src/osd/windows/winmain.h
		${MAME_DIR}/src/osd/osdepend.h
		${MAME_DIR}/src/osd/modules/debugger/win/consolewininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/consolewininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/debugbaseinfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/debugbaseinfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/debugviewinfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/debugviewinfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/debugwininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/debugwininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/disasmbasewininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/disasmbasewininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/disasmviewinfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/disasmviewinfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/disasmwininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/disasmwininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/editwininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/editwininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/logwininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/logwininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/logviewinfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/logviewinfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/memoryviewinfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/memoryviewinfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/memorywininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/memorywininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/pointswininfo.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/pointswininfo.h
		${MAME_DIR}/src/osd/modules/debugger/win/uimetrics.cpp
		${MAME_DIR}/src/osd/modules/debugger/win/uimetrics.h
		${MAME_DIR}/src/osd/modules/debugger/win/debugwin.h


${MAME_DIR}/src/osd/osdnet.cpp
${MAME_DIR}/src/osd/osdnet.h
${MAME_DIR}/src/osd/watchdog.cpp
${MAME_DIR}/src/osd/watchdog.h
${MAME_DIR}/src/osd/modules/debugger/debug_module.h
${MAME_DIR}/src/osd/modules/font/font_module.h
${MAME_DIR}/src/osd/modules/midi/midi_module.h
${MAME_DIR}/src/osd/modules/netdev/netdev_module.h
${MAME_DIR}/src/osd/modules/sound/sound_module.h
${MAME_DIR}/src/osd/modules/diagnostics/diagnostics_module.h
${MAME_DIR}/src/osd/modules/monitor/monitor_module.h
${MAME_DIR}/src/osd/modules/lib/osdobj_common.cpp
${MAME_DIR}/src/osd/modules/lib/osdobj_common.h
${MAME_DIR}/src/osd/modules/diagnostics/none.cpp
${MAME_DIR}/src/osd/modules/diagnostics/diagnostics_win32.cpp
${MAME_DIR}/src/osd/modules/debugger/none.cpp
${MAME_DIR}/src/osd/modules/debugger/debugwin.cpp
${MAME_DIR}/src/osd/modules/debugger/debugimgui.cpp
${MAME_DIR}/src/osd/modules/debugger/debuggdbstub.cpp
${MAME_DIR}/src/osd/modules/font/font_sdl.cpp
${MAME_DIR}/src/osd/modules/font/font_windows.cpp
${MAME_DIR}/src/osd/modules/font/font_dwrite.cpp
${MAME_DIR}/src/osd/modules/font/font_osx.cpp
${MAME_DIR}/src/osd/modules/font/font_none.cpp
${MAME_DIR}/src/osd/modules/netdev/taptun.cpp
${MAME_DIR}/src/osd/modules/netdev/pcap.cpp
${MAME_DIR}/src/osd/modules/netdev/none.cpp
${MAME_DIR}/src/osd/modules/midi/portmidi.cpp
${MAME_DIR}/src/osd/modules/midi/none.cpp
${MAME_DIR}/src/osd/modules/sound/js_sound.cpp
${MAME_DIR}/src/osd/modules/sound/direct_sound.cpp
${MAME_DIR}/src/osd/modules/sound/pa_sound.cpp
${MAME_DIR}/src/osd/modules/sound/coreaudio_sound.cpp
${MAME_DIR}/src/osd/modules/sound/sdl_sound.cpp
${MAME_DIR}/src/osd/modules/sound/xaudio2_sound.cpp
${MAME_DIR}/src/osd/modules/sound/none.cpp
${MAME_DIR}/src/osd/modules/input/input_module.h
${MAME_DIR}/src/osd/modules/input/input_common.cpp
${MAME_DIR}/src/osd/modules/input/input_common.h
${MAME_DIR}/src/osd/modules/input/input_dinput.cpp
${MAME_DIR}/src/osd/modules/input/input_dinput.h
${MAME_DIR}/src/osd/modules/input/input_none.cpp
${MAME_DIR}/src/osd/modules/input/input_rawinput.cpp
${MAME_DIR}/src/osd/modules/input/input_win32.cpp
${MAME_DIR}/src/osd/modules/input/input_sdl.cpp
${MAME_DIR}/src/osd/modules/input/input_sdlcommon.cpp
${MAME_DIR}/src/osd/modules/input/input_sdlcommon.h
${MAME_DIR}/src/osd/modules/input/input_x11.cpp
${MAME_DIR}/src/osd/modules/input/input_windows.cpp
${MAME_DIR}/src/osd/modules/input/input_windows.h
${MAME_DIR}/src/osd/modules/input/input_xinput.cpp
${MAME_DIR}/src/osd/modules/input/input_xinput.h
${MAME_DIR}/src/osd/modules/input/input_winhybrid.cpp
${MAME_DIR}/src/osd/modules/input/input_uwp.cpp
${MAME_DIR}/src/osd/modules/input/input_mac.cpp
${MAME_DIR}/src/osd/modules/output/output_module.h
${MAME_DIR}/src/osd/modules/output/none.cpp
${MAME_DIR}/src/osd/modules/output/console.cpp
${MAME_DIR}/src/osd/modules/output/network.cpp
${MAME_DIR}/src/osd/modules/output/win32_output.cpp
${MAME_DIR}/src/osd/modules/output/win32_output.h
${MAME_DIR}/src/osd/modules/monitor/monitor_common.h
${MAME_DIR}/src/osd/modules/monitor/monitor_common.cpp
${MAME_DIR}/src/osd/modules/monitor/monitor_win32.cpp
${MAME_DIR}/src/osd/modules/monitor/monitor_dxgi.cpp
${MAME_DIR}/src/osd/modules/monitor/monitor_sdl.cpp
${MAME_DIR}/src/osd/modules/monitor/monitor_mac.cpp

#${MAME_DIR}/src/osd/modules/render/drawogl.cpp
#${MAME_DIR}/src/osd/modules/opengl/gl_shader_tool.cpp
#${MAME_DIR}/src/osd/modules/opengl/gl_shader_mgr.cpp
#${MAME_DIR}/src/osd/modules/opengl/gl_shader_mgr.h
#${MAME_DIR}/src/osd/modules/opengl/gl_shader_tool.h
#${MAME_DIR}/src/osd/modules/opengl/osd_opengl.h

${MAME_DIR}/src/osd/modules/render/drawbgfx.cpp
${MAME_DIR}/src/osd/modules/render/aviwrite.cpp
${MAME_DIR}/src/osd/modules/render/aviwrite.h
${MAME_DIR}/src/osd/modules/render/bgfxutil.cpp
${MAME_DIR}/src/osd/modules/render/bgfxutil.h
${MAME_DIR}/src/osd/modules/render/binpacker.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/blendreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/blendreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/chain.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/chain.h
${MAME_DIR}/src/osd/modules/render/bgfx/chainentry.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/chainentry.h
${MAME_DIR}/src/osd/modules/render/bgfx/chainentryreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/chainentryreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/chainmanager.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/chainmanager.h
${MAME_DIR}/src/osd/modules/render/bgfx/chainreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/chainreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/clear.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/clear.h
${MAME_DIR}/src/osd/modules/render/bgfx/clearreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/clearreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/cullreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/cullreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/depthreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/depthreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/effect.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/effect.h
${MAME_DIR}/src/osd/modules/render/bgfx/effectmanager.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/effectmanager.h
${MAME_DIR}/src/osd/modules/render/bgfx/effectreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/effectreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/entryuniformreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/entryuniformreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/inputpair.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/inputpair.h
${MAME_DIR}/src/osd/modules/render/bgfx/frameparameter.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/frameparameter.h
${MAME_DIR}/src/osd/modules/render/bgfx/timeparameter.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/timeparameter.h
${MAME_DIR}/src/osd/modules/render/bgfx/paramreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/paramreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/paramuniform.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/paramuniform.h
${MAME_DIR}/src/osd/modules/render/bgfx/paramuniformreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/paramuniformreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/shadermanager.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/shadermanager.h
${MAME_DIR}/src/osd/modules/render/bgfx/slider.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/slider.h
${MAME_DIR}/src/osd/modules/render/bgfx/sliderreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/sliderreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/slideruniform.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/slideruniform.h
${MAME_DIR}/src/osd/modules/render/bgfx/slideruniformreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/slideruniformreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/statereader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/statereader.h
${MAME_DIR}/src/osd/modules/render/bgfx/suppressor.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/suppressor.h
${MAME_DIR}/src/osd/modules/render/bgfx/suppressorreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/suppressorreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/target.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/target.h
${MAME_DIR}/src/osd/modules/render/bgfx/targetreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/targetreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/targetmanager.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/targetmanager.h
${MAME_DIR}/src/osd/modules/render/bgfx/texture.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/texture.h
${MAME_DIR}/src/osd/modules/render/bgfx/texturehandleprovider.h
${MAME_DIR}/src/osd/modules/render/bgfx/texturemanager.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/texturemanager.h
${MAME_DIR}/src/osd/modules/render/bgfx/uniform.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/uniform.h
${MAME_DIR}/src/osd/modules/render/bgfx/uniformreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/uniformreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/valueuniform.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/valueuniform.h
${MAME_DIR}/src/osd/modules/render/bgfx/valueuniformreader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/valueuniformreader.h
${MAME_DIR}/src/osd/modules/render/bgfx/view.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/view.h
${MAME_DIR}/src/osd/modules/render/bgfx/writereader.cpp
${MAME_DIR}/src/osd/modules/render/bgfx/writereader.h


${MAME_DIR}/src/osd/modules/debugger/debugqt.cpp

)


add_library(osd STATIC ${OSD_SRCS})

target_compile_definitions(osd PRIVATE
	WIN32
	_WIN32
	OSD_WINDOWS
	WIN32_LEAN_AND_MEAN
	NOMINMAX

	_WIN32_WINNT=0x0501
	DIRECT3D_VERSION=0x0900
	DIRECTINPUT_VERSION=0x0800

	USE_SDL=0
	
	NO_USE_MIDI=1
	NO_USE_PORTAUDIO=1
	USE_QTDEBUG=0
	
	X64_WINDOWS_ABI
	UNICODE
	_UNICODE	
)

target_compile_definitions(osd PRIVATE
	__STDC_LIMIT_MACROS
	__STDC_FORMAT_MACROS
	__STDC_CONSTANT_MACROS
	IMGUI_DISABLE_OBSOLETE_FUNCTIONS
)

target_include_directories(osd PRIVATE 
	${MAME_DIR}/src/emu
	${MAME_DIR}/src/devices # accessing imagedev from debugger
	${MAME_DIR}/src/osd
	${MAME_DIR}/src/lib
	${MAME_DIR}/src/lib/util
	${MAME_DIR}/src/osd/modules/file
	${MAME_DIR}/src/osd/modules/render
	${MAME_DIR}/3rdparty
	${MAME_DIR}/src/osd/windows

	${MAME_DIR}/3rdparty/bgfx/examples/common
	${MAME_DIR}/3rdparty/bgfx/include
	${MAME_DIR}/3rdparty/bgfx/3rdparty
	${MAME_DIR}/3rdparty/bgfx/3rdparty/khronos
	${MAME_DIR}/3rdparty/bx/include
	${MAME_DIR}/3rdparty/rapidjson/include


	${MAME_DIR}/3rdparty/asio/include
)

target_include_directories(osd PRIVATE 
	${MAME_DIR}/3rdparty/winpcap/Include
	${MAME_DIR}/3rdparty/compat/mingw
	${MAME_DIR}/3rdparty/portaudio/include
	${MAME_DIR}/3rdparty/compat/winsdk-override
)

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
target_include_directories(osd PRIVATE 
	${MAME_DIR}/3rdparty/dxsdk/Include
)
endif()

target_link_libraries(osd LINK_PUBLIC
	bgfx
	bimg
	bx
)

target_link_libraries(osd LINK_PUBLIC 
	gdi32
	dsound
	dxguid
	oleaut32
	winmm
)
