draw_sprite_ext(spr_gm_codebox,0,2144,96,1,1.512,0,c_white,1)
draw_sprite_ext(spr_gm_codebox,0,-19,-162,2.752,0.29,0,c_white,1)
var ass = 10
var shit = 200

draw_set_font(fnt_open_sans)
draw_set_color(c_ltgray)
draw_text(340,60,"PRESS F5 TO TEST ON LIME 3DS, PRESS F6 TO COMPILE A 3DSX")

draw_sprite(spr_minifolder,scriptfolder_open,2380+ass*3-3-shit,310+15)

draw_sprite(spr_minifolder_arrow,0,2380-ass*3-shit,310)

draw_set_color(c_ltgrey)
draw_set_font(ft_input_1)
draw_text(2450+ass-shit,330,"Scripts")


var _x = 2482-shit
var _y = 365
var line_height = 40

for (var i = 0; i < array_length(file_list); i++;) {
    draw_text(_x+5, _y + (i * line_height), file_list[i]);
    draw_sprite(spr_script_ico,0,_x-32, _y + (i * line_height));
}