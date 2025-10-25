input_text_create_multiline_ext(
    x, //x
    y, //y
    1000,    // textbox width
    1000,    // textbox height
    ft_input_1, c_ltgray, 1, //color and alpha
    1000,    //word wrap width
    -1, -1, -1, //stuff
    fa_left, fa_top, true, 0 //more stuff
);

file_path = global.project_path + "/source/main.cpp";

var fr = file_text_open_read(file_path);
file_content = "";
if (fr != -1) {
    while (!file_text_eof(fr)) {
        file_content += file_text_readln(fr);
    }
    file_text_close(fr);
}

with (obj_input_text) {
    text_change_from_outside = other.file_content;
    other.alarm[0] = 20;
}
storedtext = obj_input_text.text;
image_alpha = 0;
