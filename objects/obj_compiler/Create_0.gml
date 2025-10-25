//me? writing comments??? crazy!!!!!!!!!!!!!!
function compile(){
	finished_compile = false //take a guess why i do this
	
	//deletes previous build
	var folderfiles = file_find_first(global.project_path + "\\output\\" + "*.*", 0);

	while (folderfiles != "")
	{
	    file_delete(global.project_path + "\\output\\" + folderfiles)
	    folderfiles = file_find_next();
	}

	file_find_close();


	/* runs a powershell script that runs the compile batch */
	execute_shell("powershell.exe", "-NoLogo -NoProfile -WindowStyle Hidden -Command " + "\"Start-Process -FilePath '" + global.project_path + "compile.bat' -WorkingDirectory '" + global.project_path + "' -Wait;" + "Out-File -FilePath '" + global.project_path + "compile_done.txt' -InputObject 'done'\"")
}

compile_type = "lime3ds" //"3dsx" option opens to a folder with the 3dsx, "lime3ds" option opens lime for windows testing

done_compile = false

if (file_exists(global.project_path + "compile_done.txt")) 
	file_delete(global.project_path + "compile_done.txt");
