if keyboard_check_pressed(ord("W")){
	global.project_path = get_directory("Select project folder");
	
    var burp = string_delete(global.project_path, string_length(global.project_path), 1);
		
		
    global.project_name = string_copy(burp, string_last_pos("\\", burp) + 1, 1225);
	
	if !file_exists(global.project_path + "\compile.bat")
		show_message("Error! Folder Does not contain a compile.bat!")
	else
		room_goto(compile_test)
}

if keyboard_check_pressed(vk_space){
	var projectname = get_string("Enter a project name","")
	var pathcreate = get_directory("ASS WALUIGI 75") //pick the path for the project folder 
	
	if projectname = ""{
		show_message("Error! Project name cannot be empty!")
		exit;	
	}
	else{
		execute_shell("robocopy", "\"" + (working_directory + "project_empty") + "\" " + "\"" + pathcreate + "\\" + projectname + "\" /E /NFL /NDL /NJH /NJS /NC /NS /XO");
	}

	var tempthingy = pathcreate + "\\" + projectname + "\\";
	
	global.project_name = projectname
	global.project_path = string_replace_all(tempthingy, "\\\\", "\\")

	room_goto(compile_test)
}