//post_draw

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) and wblastcharge > 0 and showHUD == true {
		{
		if wblastcharge >= 45 {
		draw_sprite_ext(sprite_get("nspecialcharge"), 2, x, y-60, 1, 1, 0, c_white, .8);
		}
	
		else
	
		if wblastcharge >= 25 {
		draw_sprite_ext(sprite_get("nspecialcharge"), 1, x, y-60, 1, 1, 0, c_white, .6);
		}
	
		else
	
		{
		draw_sprite_ext(sprite_get("nspecialcharge"), 0, x, y-60, 1, 1, 0, c_white, .6);
		}
	}
}

shader_start();
if state == PS_ATTACK_GROUND && attack == AT_TAUNT {
	if (window == 4 && window_timer > 4 || window == 5 || window == 6) {
		if randomTaunt == 0 {
			draw_sprite_ext(sprite_get("taunt2_h"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
		}
		else if randomTaunt == 1 {
			draw_sprite_ext(sprite_get("taunt2_w"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
		}
		else if randomTaunt == 2 {
			draw_sprite_ext(sprite_get("taunt2_hd"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
		}
		else if randomTaunt == 3 {
			draw_sprite_ext(sprite_get("taunt2_f"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
		}
		else if randomTaunt == 4 {
			draw_sprite_ext(sprite_get("taunt2_p"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
		}
		else if randomTaunt == 5 {
			draw_sprite_ext(sprite_get("taunt2_sp"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
		}
	}
}
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL {

	if (get_player_color( player ) == 14) {
	draw_sprite_ext(sprite_get("fspecial_overlay_socc"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} else {
	draw_sprite_ext(sprite_get("fspecial_overlay"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	}

	if (window == 2) {
		if up_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*spr_dir, c_white, .6);	
		} else 
		if down_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*-spr_dir, c_white, .6);	
		} else {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 0, c_white, .6);	
		}
	}
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL_2 {

	if (get_player_color( player ) == 14) {
	draw_sprite_ext(sprite_get("fspecial_overlay2_socc"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	} else {
	draw_sprite_ext(sprite_get("fspecial_overlay2"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	}
	
	if (window == 2) {
		if up_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*spr_dir, c_white, .6);	
		} else 
		if down_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*-spr_dir, c_white, .6);	
		} else {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 0, c_white, .6);	
		}
	}
}

shader_end();
user_event(12); 