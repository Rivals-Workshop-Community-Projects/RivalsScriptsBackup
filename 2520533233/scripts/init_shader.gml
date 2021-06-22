//init shader
if("hue_spd" in self){
hue_offset += hue_spd;
hue_offset = hue_offset % 255;
var color_rgb = make_color_rgb(255, 0, 0);
var hue = (color_get_hue(color_rgb) + hue_offset) mod 255;
var color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), 
                                color_get_value(color_rgb));

set_character_color_slot(7, color_get_red(color_hsv), 
                        color_get_green(color_hsv), color_get_blue(color_hsv));
//set_character_color_slot(4, color_get_red(color_hsv), 
//                        color_get_green(color_hsv), color_get_blue(color_hsv));
//set_character_color_slot(5, color_get_red(color_hsv), 
//                        color_get_green(color_hsv), color_get_blue(color_hsv));
//corrections to default palette
if(get_player_color(player) == 0){
    set_character_color_slot(0, 0, 0, 10);
    set_character_color_slot(6, 10, 8, 0);
    set_character_color_slot(2, 26, 38, 128);
    set_character_color_slot(3, 106, 0, 0);
}

if(dragon_install) outline_color = rainbow_rgb;

if(end_dragon_install){
    outline_color = [0, 0, 0];
    end_dragon_install = !end_dragon_install;
}
}