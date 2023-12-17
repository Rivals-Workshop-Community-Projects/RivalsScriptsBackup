// pre-draw
if (state == PS_RESPAWN || respawn_taunt){
	draw_sprite_ext(sprite_get("plat_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
}

/*
if (state == PS_ATTACK_GROUND && attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == 1 && up_down && !right_down && !left_down){
			spawn_hit_fx(floor(x)+(16*spr_dir), floor(y) - 16, 301);
		}
	}
	if (window == 2 || window == 3 || window == 4) {
		if ((up_down && attack_pressed) || special_pressed){
			spawn_hit_fx(floor(x)+(16*spr_dir), floor(y) - 16, 301);
		}
	}
}

if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_2){
	if (window == 1 && window_timer == 0){
		spawn_hit_fx(floor(x)+(16*spr_dir), floor(y) - 16, 301);
	}
}
*/

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_FSPECIAL){
		if (window == 1) && (fspecial_charge == 24){
			spawn_hit_fx(floor(x), floor(y) - 16, 301);
		}
	}
	if (attack == AT_FSPECIAL_2) && (melonpult_fspecial_grabbed != 1 || melonpult_fspecial_grabbed != 2){
		if (window == 2 && window_timer >= 2){
			draw_sprite_ext(sprite_get("fspecial_underlay"), 0, x-(64*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
		}
	}
}