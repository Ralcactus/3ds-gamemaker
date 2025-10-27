with (text_obj) {
	input_text_set_enabled(id, point_in_rectangle(mouse_x, mouse_y, x - 16, y - 16, x + width + 15, y + height + 15));
}

if (instance_exists(text_obj)) {
	if (storedtext != text_obj.text) {
	    var fhw = file_text_open_write(file_path)
	    file_text_write_string(fhw, text_obj.text)
	    file_text_close(fhw)
	    storedtext = text_obj.text
	}
}
