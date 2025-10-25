var changed = false;

if (keyboard_check_pressed(vk_backspace) && string_length(input_text) > 0) {
    input_text = string_delete(input_text, string_length(input_text), 1);
    changed = true;
}

if (keyboard_check_pressed(vk_enter)) {
    input_text += "\n";
    changed = true;
}
else if (string_length(keyboard_string) > 0) {
    input_text += keyboard_string;
    keyboard_string = "";
    changed = true;
}

if (changed) {
    var fhw = file_text_open_write(file);
    if (fhw != -1) {
        file_text_write_string(fhw, string_replace_all(input_text, "\n", "\r\n"));
        file_text_close(fhw);
    }
}

blink_timer += 0.1

if (blink_timer >= blink_speed) {
    blink_visible = !blink_visible;
    blink_timer = 0;
}