if (mouse_check_button_pressed(mb_middle)) {
    drag_start_x = mouse_x;
    drag_start_y = mouse_y;
    is_dragging = true;
}
	
if (mouse_check_button_released(mb_middle))
    is_dragging = false;

if (is_dragging) {
    var drag_x = mouse_x - drag_start_x
    var drag_y = mouse_y - drag_start_y
    var cam_x = camera_get_view_x(view_camera[0])
    var cam_y = camera_get_view_y(view_camera[0])
	
	
	cam_x -= drag_x
	cam_y -= drag_y
	cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
	cam_y = clamp(cam_y, 0, room_height - camera_get_view_height(view_camera[0]));
	
    camera_set_view_pos(view_camera[0], cam_x, cam_y)

    drag_start_x = mouse_x
    drag_start_y = mouse_y
}

var scrollerer = mouse_wheel_up() - mouse_wheel_down()

if scrollerer != 0 && !keyboard_check(vk_control){
	//lazy dumbass
    var drag_y = scrollerer * 55
    var cam_x = camera_get_view_x(view_camera[0])
    var cam_y = camera_get_view_y(view_camera[0])
	
	
	cam_y -= drag_y
	cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
	cam_y = clamp(cam_y, 0, room_height - camera_get_view_height(view_camera[0]));
	
    camera_set_view_pos(view_camera[0], cam_x, cam_y)

    drag_start_x = mouse_x
    drag_start_y = mouse_y	
}

if scrollerer != 0 && keyboard_check(vk_control){
    var old_ass_zoom = zoom
    zoom = clamp(zoom * (1 - scrollerer * 0.1), 0.5, 3.0)
    
    var w = base_w * zoom
    var h = base_h * zoom
    var old_w = base_w * old_ass_zoom
    var old_h = base_h * old_ass_zoom
    
    var mx = device_mouse_x_to_gui(0)
    var my = device_mouse_y_to_gui(0)
    var wx = camera_get_view_x(view_camera[0]) + (mx / display_get_gui_width()) * old_w
    var wy = camera_get_view_y(view_camera[0]) + (my / display_get_gui_height()) * old_h

    camera_set_view_size(view_camera[0], w, h)

    var cx = wx - (mx / display_get_gui_width()) * w
    var cy = wy - (my / display_get_gui_height()) * h

    cx = clamp(cx, 0, room_width  - w)
    cy = clamp(cy, 0, room_height - h)
    camera_set_view_pos(view_camera[0], cx, cy)
}

