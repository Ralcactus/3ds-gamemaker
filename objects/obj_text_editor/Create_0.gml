blink_visible = true
blink_timer   = 0
blink_speed   = 3


file = global.project_path + "/source/main.cpp";


var fh = file_text_open_read(file);
var text = "";
if (fh != -1) {
    while (!file_text_eof(fh)) {
        text += file_text_read_string(fh);
        if (!file_text_eof(fh)) text += "\n";
        file_text_readln(fh);
    }
    file_text_close(fh);
}

text = string_replace_all(text, "\r\n", "\n")
text = string_replace_all(text, "\r", "\n")

input_text = text

