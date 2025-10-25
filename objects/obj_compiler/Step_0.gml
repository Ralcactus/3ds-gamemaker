if keyboard_check_pressed(vk_f5){
	compile_type = "lime3ds"
	compile()
}
if keyboard_check_pressed(vk_f6){
	compile_type = "3dsx"
	compile()
}

if file_exists(global.project_path + "compile_done.txt"){
    done_compile = true;
	file_delete(global.project_path + "compile_done.txt");
}

if done_compile{
	done_compile = false
	
	if compile_type = "lime3ds"{
		execute_shell(working_directory + "\\lime3ds\\lime3ds.exe", global.project_path + "\\output\\" + global.project_name + ".3dsx\"");
		show_debug_message(global.project_path + "\\output\\" + global.project_name + ".3dsx\"")
	}
	
	
	if compile_type = "3dsx"
		execute_shell("explorer.exe", global.project_path + "\output\"");
}