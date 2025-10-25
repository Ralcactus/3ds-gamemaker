with (obj_input_text) {
	input_text_set_enabled(id, point_in_rectangle(mouse_x, mouse_y, x - 16, y - 16, x + width + 15, y + height + 15));
}

if (instance_exists(obj_input_text)) {
	if (storedtext != obj_input_text.text) {
	    var fhw = file_text_open_write(file_path);   // <-- use the PATH, not the read handle
	    file_text_write_string(fhw, obj_input_text.text);
	    file_text_close(fhw);
	    storedtext = obj_input_text.text;
	}
}
