if (position_meeting(mouse_x, mouse_y, self)){
	var projectname = get_string("Enter a project name","") //pick project name
	
	if projectname = ""{ //uh oh! name empty!
		show_message("Error! Project name cannot be empty!")
		exit;	
	}	
	
	var pathcreate = get_directory("ASS WALUIGI 75") //pick the path for the project folder 
	
	if pathcreate = ""{ //uh oh! path empty!
		show_message("Error! project directory cannot be empty!")
		exit;	
	}

	else{
		//copys over the empty project thingy
		execute_shell("robocopy", "\"" + (working_directory + "project_empty") + "\" " + "\"" + pathcreate + "\\" + projectname + "\" /E /NFL /NDL /NJH /NJS /NC /NS /XO");
	}

	var tempthingy = pathcreate + "\\" + projectname + "\\"; //i think this was for fixing a bug with lime 3ds?? idk..
	
	global.project_name = projectname
	global.project_path = string_replace_all(tempthingy, "\\\\", "\\") //same here, fixing a bug with lime 3ds... maybe



	room_goto(compile_test) //guess what
}