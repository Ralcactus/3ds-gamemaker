if (position_meeting(mouse_x, mouse_y, self)){
	global.project_path = get_directory("Select project folder"); //picker the folderer
	
	
    var burp = string_delete(global.project_path, string_length(global.project_path), 1);  //project name extract: pt1
		
		
    global.project_name = string_copy(burp, string_last_pos("\\", burp) + 1, 1225); //project name extract: pt2
	
	
	
	if !file_exists(global.project_path + "\compile.bat") //check if this a valid project file, more checks later on
		show_message("Error! Folder Does not contain a compile.bat!") 
	else
		room_goto(editor) //guess

}