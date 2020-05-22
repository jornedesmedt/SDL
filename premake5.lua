workspace "SDL"
	architecture "x64"

	configurations
	{
		"Debug",
		"Release"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

src_minimal = {
	"src/*.c",
	"src/audio/*.c",
	"src/audio/dummy/*.c",
	"src/cpuinfo/*.c",
	"src/events/*.c",
	"src/file/*.c",
	"src/haptic/*.c",
	"src/haptic/dummy/*.c",
	"src/joystick/*.c",
	"src/joystick/dummy/*.c",
	--"src/loadso/dummy/*.c",
	"src/power/*.c",
	--"src/filesystem/dummy/*.c",
	"src/render/*.c",
	"src/render/software/*.c",
	"src/sensor/*.c",
	"src/sensor/dummy/*.c",
	"src/stdlib/*.c",
	"src/thread/*.c",
	"src/thread/generic/SDL_syscond.c",
	"src/timer/*.c",
	--"src/timer/dummy/*.c",
	"src/video/*.c",
	"src/video/dummy/*.c"
}

src_includes = {
	"include/begin_code.h",
	"include/close_code.h",
	"include/SDL.h",
	"include/SDL_assert.h",
	"include/SDL_atomic.h",
	"include/SDL_audio.h",
	"include/SDL_bits.h",
	"include/SDL_blendmode.h",
	"include/SDL_clipboard.h",
	"include/SDL_config.h",
	"include/SDL_copying.h",
	"include/SDL_cpuinfo.h",
	"include/SDL_egl.h",
	"include/SDL_endian.h",
	"include/SDL_error.h",
	"include/SDL_events.h",
	"include/SDL_filesystem.h",
	"include/SDL_gamecontroller.h",
	"include/SDL_gesture.h",
	"include/SDL_haptic.h",
	"include/SDL_hints.h",
	"include/SDL_joystick.h",
	"include/SDL_keyboard.h",
	"include/SDL_keycode.h",
	"include/SDL_loadso.h",
	"include/SDL_locale.h",
	"include/SDL_log.h",
	"include/SDL_main.h",
	"include/SDL_messagebox.h",
	"include/SDL_mouse.h",
	"include/SDL_mutex.h",
	"include/SDL_name.h",
	"include/SDL_opengl.h",
	"include/SDL_opengles.h",
	"include/SDL_opengles2.h",
	"include/SDL_opengles2_gl2.h",
	"include/SDL_opengles2_gl2ext.h",
	"include/SDL_opengles2_gl2platform.h",
	"include/SDL_opengles2_khrplatform.h",
	"include/SDL_opengl_glext.h",
	"include/SDL_pixels.h",
	"include/SDL_platform.h",
	"include/SDL_power.h",
	"include/SDL_quit.h",
	"include/SDL_rect.h",
	"include/SDL_render.h",
	"include/SDL_revision.h",
	"include/SDL_rwops.h",
	"include/SDL_scancode.h",
	"include/SDL_sensor.h",
	"include/SDL_shape.h",
	"include/SDL_stdinc.h",
	"include/SDL_surface.h",
	"include/SDL_system.h",
	"include/SDL_syswm.h",
	"include/SDL_test.h",
	"include/SDL_test_assert.h",
	"include/SDL_test_common.h",
	"include/SDL_test_compare.h",
	"include/SDL_test_crc32.h",
	"include/SDL_test_font.h",
	"include/SDL_test_fuzzer.h",
	"include/SDL_test_harness.h",
	"include/SDL_test_images.h",
	"include/SDL_test_log.h",
	"include/SDL_test_md5.h",
	"include/SDL_test_random.h",
	"include/SDL_thread.h",
	"include/SDL_timer.h",
	"include/SDL_touch.h",
	"include/SDL_types.h",
	"include/SDL_version.h",
	"include/SDL_video.h",
	"include/SDL_vulkan.h"
}

src_includes_unsorted = {
	"include/SDL_config_android.h",
	"include/SDL_config_iphoneos.h",
	"include/SDL_config_macosx.h",
	"include/SDL_config_minimal.h",
	"include/SDL_config_os2.h",
	"include/SDL_config_pandora.h",
	"include/SDL_config_psp.h",
	"include/SDL_config_winrt.h",
	"include/SDL_config_wiz.h",
	"include/SDL_metal.h",
	"include/SDL_test_memory.h"
}

src_includes_windows = {
	"include/SDL_config_windows.h"
}

src_other = {
	"src/SDL_dataqueue.h",
	"src/SDL_error_c.h",
	"src/hidapi/hidapi/*.h",
	"src/libm/*",
	"src/atomic/*.c",
	"src/audio/*.h",
	"src/audio/disk/*",
	"src/audio/dummy/*.h",
	"src/sensor/*.h",
	"src/sensor/dummy/*.h",
	"src/video/dummy/*.h",
	"src/render/*.h",
	"src/render/software/*.h",
	"src/render/opengl/*",
	"src/render/opengles/SDL_glesfuncs.h",
	"src/render/opengles2/SDL_render_gles2.c",
	"src/render/opengles2/SDL_shaders_gles2.c",
	"src/dynapi/*.c",
	"src/dynapi/*.h",
	"src/joystick/controller_type.h",
	"src/joystick/SDL_gamecontrollerdb.h",
	"src/joystick/SDL_joystick_c.h",
	"src/joystick/SDL_sysjoystick.h",
	"src/joystick/virtual/*",
	"src/locale/SDL_locale.c",
	"src/locale/SDL_syslocale.h",
	"src/thread/*.h",
	"src/video/yuv2rgb/yuv_rgb.*",
	"src/timer/*.h"
}

src_video_headers = {
	"src/video/SDL_RLEaccel_c.h",
	"src/video/SDL_blit.h",
	"src/video/SDL_blit_auto.h",
	"src/video/SDL_blit_copy.h",
	"src/video/SDL_blit_slow.h",
	--"src/video/SDL_egl_c.h",
	"src/video/SDL_pixels_c.h",
	"src/video/SDL_rect_c.h",
	"src/video/SDL_shape_internals.h",
	"src/video/SDL_sysvideo.h",
	"src/video/SDL_vulkan_internal.h",
	"src/video/SDL_yuv_c.h",
	"src/haptic/SDL_syshaptic.h"
}


src_events = {
	"src/events/blank_cursor.h",
	"src/events/default_cursor.h",
	--"src/events/scancodes_darwin.h",
	--"src/events/scancodes_linux.h",
	--"src/events/scancodes_windows.h",
	--"src/events/scancodes_xfree86.h",
	"src/events/SDL_clipboardevents_c.h",
	"src/events/SDL_displayevents_c.h",
	"src/events/SDL_dropevents_c.h",
	"src/events/SDL_events_c.h",
	"src/events/SDL_gesture_c.h",
	"src/events/SDL_keyboard_c.h",
	"src/events/SDL_mouse_c.h",
	"src/events/SDL_sysevents.h",
	"src/events/SDL_touch_c.h",
	"src/events/SDL_windowevents_c.h"
}

src_joystick_hidapi = {
	"src/joystick/hidapi/SDL_hidapijoystick.c",
	"src/joystick/hidapi/SDL_hidapijoystick_c.h",
	"src/joystick/hidapi/SDL_hidapi_gamecube.c",
	"src/joystick/hidapi/SDL_hidapi_ps4.c",
	"src/joystick/hidapi/SDL_hidapi_rumble.c",
	--"src/joystick/hidapi/SDL_hidapi_rumble.h",
	--"src/joystick/hidapi/SDL_hidapi_steam.c",
	"src/joystick/hidapi/SDL_hidapi_switch.c",
	"src/joystick/hidapi/SDL_hidapi_xbox360.c",
	"src/joystick/hidapi/SDL_hidapi_xbox360w.c",
	"src/joystick/hidapi/SDL_hidapi_xboxone.c"
	--"src/joystick/hidapi/steam/controller_constants.h",
	--"src/joystick/hidapi/steam/controller_structs.h"
}

src_windows = {
	"src/hidapi/windows/*.c",
	"src/haptic/windows/*",
	"src/joystick/windows/*",
	"src/audio/directsound/*",
	"src/core/windows/*",
	"src/sensor/windows/*",
	"src/locale/windows/SDL_syslocale.c",
	"src/render/direct3d/*",
	"src/render/direct3d11/SDL_render_d3d11.c",
	"src/render/direct3d11/SDL_shaders_d3d11.*",
	"src/power/windows/*",
	"src/thread/windows/*",
	"src/video/windows/SDL_vkeys.h",
	"src/video/windows/SDL_windowsclipboard.*",
	"src/video/windows/SDL_windowsevents.*",
	"src/video/windows/SDL_windowsframebuffer.*",
	"src/video/windows/SDL_windowskeyboard.*",
	"src/video/windows/SDL_windowsmessagebox.*",
	"src/video/windows/SDL_windowsmodes.*",
	"src/video/windows/SDL_windowsmouse.*",
	"src/video/windows/SDL_windowsopengl.*",
	"src/video/windows/SDL_windowsopengles.c",
	--"src/video/windows/SDL_windowsopengles.h",
	"src/video/windows/SDL_windowsshape.*",
	--"src/video/windows/SDL_windowstaskdialog.*",
	"src/video/windows/SDL_windowsvideo.*",
	"src/video/windows/SDL_windowsvulkan.*",
	"src/video/windows/SDL_windowswindow.*",
	"src/video/windows/wmmsg.h",
	"src/audio/winmm/*",
	"src/audio/wasapi/*.h",
	"src/audio/wasapi/*.c",
	"src/main/windows/version.rc",
	"src/timer/windows/*.c",
	"src/filesystem/windows/*.c",
	"src/loadso/windows/*.c"
}

project "SDL2"
	location "SDL2"
	kind "SharedLib"
	language "C"

	
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files(src_minimal)
	files(src_events)
	files(src_joystick_hidapi)
	files(src_video_headers)
	files(src_other)
	files(src_includes)

	includedirs
	{
		"include"
	}

	filter "system:windows"
		staticruntime "On"
		systemversion "latest"

		symbols "On"
		inlining "Explicit"

		files(src_windows)
		files(src_includes_windows)


		links
		{
			"setupapi.lib",
			"winmm.lib",
			"imm32.lib",
			"version.lib"
		}

		flags
		{
			"OmitDefaultLibrary",
			"NoBufferSecurityCheck"
		}

		
		linkoptions
		{
			"/NODEFAULTLIB"
		}

		defines
		{
			"_WINDOWS"
		}

	filter "configurations:Debug"
		debugformat "c7"
		defines "_DEBUG"

	filter "configurations:Release"
		optimize "Speed"
		defines "NDEBUG"

	filter {"system:windows", "configurations:Release"}
		editAndContinue "Off" --debugformat /Zi

project "SDL2main"
	location "SDL2main"
	kind "StaticLib"
	language "C"
	debugformat "c7"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs
	{
		"include"
	}

	flags
	{
		"OmitDefaultLibrary",
		"NoBufferSecurityCheck"
	}

	filter "configurations:Debug"
		defines "_DEBUG"

	filter "configurations:Release"
		optimize "Speed"
		defines "NDEBUG"
		stringpooling "On"

	filter "system:windows"
		systemversion "latest"

		defines
		{
			"WIN32",
			"_WINDOWS"
		}

		files
		{
			"src/main/windows/*.c",
		}

project "SDL2test"
	location "SDL2test"
	kind "StaticLib"
	language "C"
	debugformat "c7"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	flags
	{
		"OmitDefaultLibrary",
		"NoBufferSecurityCheck"
	}

	files
	{
		"../src/test/*.c"
	}

	includedirs
	{
		"include"
	}

	filter "configurations:Debug"
		defines "_DEBUG"

	filter "configurations:Release"
		optimize "Speed"
		defines "NDEBUG"
		stringpooling "On"

	filter "system:windows"
		systemversion "latest"

		defines
		{
			"WIN32",
			"_WINDOWS"
		}