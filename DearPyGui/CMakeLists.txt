cmake_minimum_required (VERSION 3.13)

include("cmake/dpg_sources.cmake")

# For distribution


add_library(core SHARED)

target_sources(core PRIVATE ${MARVEL_SOURCES} )

target_compile_definitions(core

	PRIVATE
		$<$<CONFIG:Release>:MV_RELEASE>
)


include("cmake/windows_runner.cmake")
