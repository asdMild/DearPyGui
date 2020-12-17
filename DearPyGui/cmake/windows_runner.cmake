
add_definitions(-DWIN32)
set_target_properties(core PROPERTIES SUFFIX ".pyd")
set_target_properties(core PROPERTIES CXX_STANDARD 17)




target_link_libraries(core PUBLIC d3d11 python38)

target_include_directories(core 
	PRIVATE 
		${MARVEL_INCLUDE_DIR}
		"C:/Python38"
		"C:/Python38/include"
)

target_link_directories(core 
	PRIVATE 
		"C:/Python38"
		"C:/Python38/libs"
		"C:/Python38/DLLs"
)