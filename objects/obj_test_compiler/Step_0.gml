if keyboard_check_pressed(vk_f5){
	compile()
	compile_type = "lime3ds"
}
if keyboard_check_pressed(vk_f6){
	compile()
	compile_type = "3dsx"
}

if file_exists(path + "compile_done.txt"){
    done_compile = true;
	file_delete(path + "compile_done.txt");
}

if done_compile{
	done_compile = false
	
	if compile_type = "lime3ds"
		execute_shell(working_directory + "\\lime3ds\\lime3ds.exe", "\"C:\\Users\\Ralcactus\\Downloads\\test 3ds gamemaker export\\mydr.3dsx\"");
		
	if compile_type = "3dsx"
		execute_shell("explorer.exe", "\"C:\\Users\\Ralcactus\\Downloads\\test 3ds gamemaker export\\\"");
}