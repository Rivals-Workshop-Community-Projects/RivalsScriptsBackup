//Draw ing on the css

if (cur_alt == 3){
    draw_sprite_ext(sprite_get("charselect_overlay3"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1)
}

if (alt_time > 5){
    draw_sprite_ext(color_text_spr, 0 + get_player_color(player), x + 7 + 10 - alt_time / 5, y + 110, 2, 2, 0, c_white, 5 - alt_time / 10);
} else{
    gpu_set_fog(true, c_black, 1, 0);
    draw_sprite_ext(color_text_spr, 0 + get_player_color(player), x + 10 + alt_time / 5, y + 110, 2, 2, 0, c_white, 1);
    gpu_set_fog(false, c_black, 1, 0);
    draw_sprite_ext(color_text_spr, 0 + get_player_color(player), x + 10 + alt_time / 5, y + 110, 2, 2, 0, c_white, alt_time / 10);
}