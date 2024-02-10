var temp_x = x + 8;
var temp_y = y + 9;

if(get_player_hud_color(player) == 8421504){
	//if("temp_level" in self && temp_level <= 3){
		draw_sprite_ext(sprite_get("boss_css"), 0, temp_x + 30, temp_y + 36, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("boss_css"), 1, temp_x + 90, temp_y + 80-52, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("boss_css"), 2, temp_x + 90, temp_y + 96-52, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("boss_css"), 3, temp_x + 90, temp_y + 112-52, 2, 2, 0, c_white, 1);
	//}
	/*with (asset_get("cs_cpu_obj")) {
        y=10;
    }*/
}

muno_event_type = 6;
	user_event(14);