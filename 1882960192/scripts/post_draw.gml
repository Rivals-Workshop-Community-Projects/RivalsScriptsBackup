//post_draw


/*
draw_debug_text( x, y + 40, string(wblastcharge));
*/

shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL {

	if (get_player_color( player ) == 14) {
	draw_sprite_ext(sprite_get("fspecial_overlay_socc"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} 
/*	else 
	if (get_player_color( player ) == 9) {
	draw_sprite_ext(sprite_get("fspecial_overlay_gen"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} else 
	if (get_player_color( player ) == 16) {
	draw_sprite_ext(sprite_get("fspecial_overlay_voll"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} 
*/	else {
	draw_sprite_ext(sprite_get("fspecial_overlay"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	}

	if (window == 2 || window == 3) {
		if ligmaballs == 2 {
			draw_sprite_ext(sprite_get("arrow"), -1, x+14*spr_dir, y-45, spr_dir, 1, 60*spr_dir, c_white, .6);	
		} else 
		if ligmaballs == 1 {
			draw_sprite_ext(sprite_get("arrow"), -1, x+22*spr_dir, y-45, spr_dir, 1, 45*-spr_dir, c_white, .6);	
		} else {
			draw_sprite_ext(sprite_get("arrow"), -1, x+18*spr_dir, y-45, spr_dir, 1, 0, c_white, .6);	
		}
	}
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL_2 {

	if (get_player_color( player ) == 14) {
	draw_sprite_ext(sprite_get("fspecial_overlay2_socc"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} 
/*	else 
	if (get_player_color( player ) == 9) {
	draw_sprite_ext(sprite_get("fspecial_overlay2_gen"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} else
	if (get_player_color( player ) == 16) {
	draw_sprite_ext(sprite_get("fspecial_overlay2_voll"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	}
*/	else {
	draw_sprite_ext(sprite_get("fspecial_overlay2"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	}
	
	if (window == 2 || window == 3) {
		if ligmaballs == 2 {
			draw_sprite_ext(sprite_get("arrow"), -1, x+14*spr_dir, y-45, spr_dir, 1, 60*spr_dir, c_white, .6);	
		} else 
		if ligmaballs == 1 {
			draw_sprite_ext(sprite_get("arrow"), -1, x+12*spr_dir, y-45, spr_dir, 1, 45*-spr_dir, c_white, .6);	
		} else {
			draw_sprite_ext(sprite_get("arrow"), -1, x+18*spr_dir, y-45, spr_dir, 1, 0, c_white, .6);	
		}
	}
}

shader_end();