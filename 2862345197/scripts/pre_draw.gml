if ( state == PS_PARRY) {
    draw_sprite(sprite_get("parry_fx"), image_index+14, x, y);
	if !parry_success {
	shader_start();
	    if get_player_color(player) = 0 || get_player_color(player) = 2 || get_player_color(player) = 3 || get_player_color(player) = 4 || get_player_color(player) = 5 { 
		draw_sprite(sprite_get("parry_fx"), image_index, x, y);
		} else {
		draw_sprite(sprite_get("parry_fx"), image_index+7, x, y);
		}
	shader_end();
	}
}

if attack == AT_FTILT && window == 2 && pshooter_firing > 0{
    if spr_dir = 1 {
        draw_sprite(sprite_get("pshoot_flash"), window_timer, x, y);
	} else {
	    draw_sprite(sprite_get("pshoot_flash_r"), window_timer, x, y);
	}
}
if attack == AT_JAB && window == 2 && pshooter_firing > 0{
    if spr_dir = 1 {
        draw_sprite(sprite_get("pshoot_flash"), window_timer, x + 2, y);
	} else {
	    draw_sprite(sprite_get("pshoot_flash_r"), window_timer, x - 2, y);
	}
}
if attack == AT_NAIR && window == 2 && pshooter_firing > 0{
    if spr_dir = 1 {
        draw_sprite(sprite_get("pshoot_flash"), window_timer, x + 2, y + 10 - jump_index*2);
	} else {
	    draw_sprite(sprite_get("pshoot_flash_r"), window_timer, x - 2, y + 10 - jump_index*2);
	}
}