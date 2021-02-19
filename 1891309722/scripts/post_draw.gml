//rgdrg
//draw_debug_text( x, y+50, string( damageScaling ));
//draw_debug_text( x, y-100, string( pratfallMode ));

if (attack == AT_USPECIAL && window == 4) {
	//draw_sprite(sprite_get("uspecblast"), window_timer / 2, upBX, upBY - 15);
}

if (attack == AT_USPECIAL && window > 3 && window < 7) {
	if (window == 4) {
		if (get_player_color( player ) == 4) {
			draw_sprite(sprite_get("blast_thechosenone"), (window_timer / 2) , upBX, upBY - 15);
		} else if (get_player_color( player ) == 2) {
			draw_sprite(sprite_get("blast_g7"), (window_timer / 2) , upBX, upBY - 15);
		} else if (get_player_color( player ) == 3) {
			draw_sprite(sprite_get("blast_xmas"), (window_timer / 2) , upBX, upBY - 15);
		} else {
			draw_sprite(sprite_get("blast"), (window_timer / 2) , upBX, upBY - 15);
		}
	} else if (window == 5) {
		if (get_player_color( player ) == 4) {
			draw_sprite(sprite_get("blast_thechosenone"), (window_timer / 2) + 2, upBX, upBY - 15);
		} else if (get_player_color( player ) == 2) {
			draw_sprite(sprite_get("blast_g7"), (window_timer / 2) + 2, upBX, upBY - 15);
		} else if (get_player_color( player ) == 3) {
			draw_sprite(sprite_get("blast_xmas"), (window_timer / 2) + 2, upBX, upBY - 15);
		} else {
			draw_sprite(sprite_get("blast"), (window_timer / 2) + 2, upBX, upBY - 15);
		}
	} else if (window == 6) {
		if (get_player_color( player ) == 4) {
			draw_sprite(sprite_get("blast_thechosenone"), (window_timer / 2) + 6, upBX, upBY - 15);
		} else if (get_player_color( player ) == 2) {
			draw_sprite(sprite_get("blast_g7"), (window_timer / 2) + 6, upBX, upBY - 15);
		} else if (get_player_color( player ) == 3) {
			draw_sprite(sprite_get("blast_xmas"), (window_timer / 2) + 6, upBX, upBY - 15);
		} else {
			draw_sprite(sprite_get("blast"), (window_timer / 2) + 6, upBX, upBY - 15);
		}
	}
}

if (neutralBStored) {
	//draw_sprite(sprite_get("nspeccharge"), neutralBStoreVisTimer, x - (20 * spr_dir), y - 80);
}


if (get_player_color(player) == 2 && random_func(4, 3, 1) == 0) {
	var fs = random_func(0, sprite_height-1, 1)
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*4)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)
}