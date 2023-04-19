
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	if(attack == AT_USPECIAL){
		if(window >= 2 && window_timer > 1 && instance_exists(mic)){     
			draw_sprite_ext(sprite_get("mic_string"), 0, x + 10 * spr_dir, y - 52, distance_to_point(mic.x, mic.y ), 2, point_direction(x + 10 * spr_dir, y - 52, mic.x , mic.y ), c_white, 1);
		}
	}
	if(attack == AT_DSPECIAL){
		if(window == 2){
			draw_sprite_ext(sprite_get("tetrinos_all"), tetrimino, x + 40 * spr_dir, y - 80, 1 * spr_dir, 1, 0, c_white, 1)
		}
		if(window == 3){
			if(window_timer < 4){
				draw_sprite_ext(sprite_get("tetrinos_all"), tetrimino, x + 40 * spr_dir, y - 60, 1 * spr_dir, 1, 0, c_white, 1)
			}else
			if(window_timer < 8){
				draw_sprite_ext(sprite_get("tetrinos_all"), tetrimino, x + 40 * spr_dir, y - 45, 1 * spr_dir, 1, 0, c_white, 1)
			}else
			if(window_timer < 12){
				draw_sprite_ext(sprite_get("tetrinos_all"), tetrimino, x + 40 * spr_dir, y - 40, 1 * spr_dir, 1, 0, c_white, 1)
			}
		}
	}
	if(attack == AT_FSPECIAL && window == 2){
		if(window_timer % 2 == 0){
			spawn_hit_fx( x - 45 + ((random_func(0, 80, true))) , y - 80 + random_func(10, 100, true) , VFX_small_bling );
		}
		if(window_timer % 20 == 0){
			spawn_hit_fx( x - 45 + ((random_func(0, 80, true))) , y - 80 + random_func(10, 100, true) , VFX_medium_bling );
		}
	}
}else if(state == PS_AIR_DODGE){
		if(state_timer % 2 == 0){
			spawn_hit_fx( x - 45 + ((random_func(0, 80, true))) , y - 80 + random_func(10, 100, true) , VFX_small_bling );
		}
		if(state_timer % 20 == 0){
			spawn_hit_fx( x - 45 + ((random_func(0, 80, true))) , y - 80 + random_func(10, 100, true) , VFX_medium_bling );
		}
}

/*
if (instance_exists(comet))
{
	draw_debug_text(x - 35, y - 200, "Comet State: " + string(comet.state));
}
draw_debug_text(x - 35, y - 180, "HSP: " + string(hsp));
draw_debug_text(x - 35, y - 160, "VSP: " + string(vsp));
draw_debug_text(x - 35, y - 140, "OLD HSP: " + string(old_hsp));
draw_debug_text(x - 35, y - 120, "OLD VSP: " + string(old_vsp));

	


