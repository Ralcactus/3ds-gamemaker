function compile(){
	finished_compile = false
	execute_shell("powershell.exe", "-NoLogo -NoProfile -WindowStyle Hidden -Command " + "\"Start-Process -FilePath '" + path + "compile.bat' -WorkingDirectory '" + path + "' -Wait;" + "Out-File -FilePath '" + path + "compile_done.txt' -InputObject 'done'\"")
}

compile_type = "3dsx" //other option is lime3ds

done_compile = false
path = get_directory("ASS WARIO 2");

if (file_exists(path + "compile_done.txt")) 
	file_delete(path + "compile_done.txt");
