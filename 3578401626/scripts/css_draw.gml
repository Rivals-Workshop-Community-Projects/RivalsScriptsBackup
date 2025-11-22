//Draw ing on the css

draw_sprite_ext(sprite_get("alt_badges"), 0 + get_player_color(player), x + 8, y + 144, 2, 2, 0, c_white, 1)
draw_sprite_ext(sprite_get("lil_walk"), full_time / 8, -1800 + full_time / 1.5, 242, 2, 2, 0, c_white, 1);

for(var i = 0; i < sprite_get_number(sprite_get("css_text")); i += 1)
{
    var icon_x = x + 1;
    var icon_y = y + 42 + i * (y_margin + 2);
    
    if (i == get_player_color(player)){
        draw_rectangle_color(icon_x, icon_y, icon_x + 5, icon_y + 4, c_white, c_white, c_white, c_white, false);
    }
    
    draw_rectangle_color(icon_x, icon_y, icon_x + 5, icon_y + 4, c_white, c_white, c_white, c_white, true);
    
}

if (alt_time > 5){
    draw_alt_text(18, -1, 8);
} else{
    draw_alt_text(10, 1, 4);
}

#define make_color(the_color)
{
    make_color_rgb(get_color_profile_slot_r(the_color, cur_alt), get_color_profile_slot_g(the_color, cur_alt), get_color_profile_slot_b(the_color, cur_alt));
}
#define draw_alt_text(text_x,text_dir,text_speed)
{
    draw_sprite_ext(sprite_get("css_text"), get_player_color(player), x - 6 + text_x + (alt_time / text_speed) * text_dir, y + 42 + get_player_color(player) * y_margin, 1, 1, 0, c_black, 0.5 * (5 - alt_time / text_speed));
    draw_sprite_ext(sprite_get("css_text"), get_player_color(player), x - 2 + text_x + (alt_time / text_speed) * text_dir, y + 42 - 2 + get_player_color(player) * y_margin, 1, 1, 0, c_white, 5 - alt_time / text_speed);
}
