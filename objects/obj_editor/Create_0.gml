file_list = []
filecount = 0


file = file_find_first(global.project_path + "/source/" + "*.*", fa_none)
while (file != "")
{
    array_push(file_list, file);
    file = file_find_next();
}
file_find_close()



for (var i = 0; i < array_length(file_list); i++)
{
	filecount ++
    show_debug_message(file_list[i]);
}

filecounter = filecount

scriptfolder_open = true

drag_start_x = 0;
drag_start_y = 0;
is_dragging = false;


base_w = camera_get_view_width(view_camera[0])
base_h = camera_get_view_height(view_camera[0])
zoom   = 1
