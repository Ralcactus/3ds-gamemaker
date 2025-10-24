var dir = get_directory("ASS WARIO 2");
dir = string_replace_all(dir, "/", "\\");

execute_shell("powershell.exe", "-NoLogo -NoProfile -WindowStyle Hidden -Command " + "\"Start-Process -FilePath '" + dir + "compile.bat' -WorkingDirectory '" + dir + "' -Wait; " + "Start-Process explorer.exe -ArgumentList '/e,\\\"" + dir + "\\\"'\"");
