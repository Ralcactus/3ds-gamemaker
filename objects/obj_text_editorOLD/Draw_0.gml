draw_set_font(fnt_arial)
draw_set_color(c_white);
draw_text(x, y, input_text);

var txt
var lastnew = string_last_pos("\n", input_text)


if (lastnew == 0)
	txt = input_text
else
	txt = string_copy(input_text, lastnew + 1, string_length(input_text) - lastnew)

if (blink_visible) 
	/* long ass draw*/ draw_line_width(x + string_width(txt), y + string_count("\n", input_text) * string_height("Ay"), x + string_width(txt), y + string_count("\n", input_text) * string_height("Ay") + string_height("Ay") * 0.9, 2);
	