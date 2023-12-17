// other_pre_draw

with (other_player_id){
	shader_start();
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (melonpult_fspecial_grabbed == other.id){
		if (attack == AT_FSPECIAL_2){
			if (window == 2 && window_timer >= 2){
				draw_sprite_ext(sprite_get("fspecial_underlay"), 0, x-(64*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
			}
			if (window == 3){
				draw_sprite_ext(sprite_get("fspecial_underlay"), 1, x-(64*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
			}
		}
		if (attack == AT_FTHROW){
			if (window == 1){
				draw_sprite_ext(sprite_get("fthrow_underlay"), floor(window_timer/4), x-(96*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
			}
			if (window == 2){
				draw_sprite_ext(sprite_get("fthrow_underlay"), floor(window_timer/2) + 3, x-(96*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
			}
			if (window == 3) && (window_timer < 4){
				draw_sprite_ext(sprite_get("fthrow_underlay"), floor(window_timer/2) + 5, x-(96*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
			}
		}
		if (attack == AT_NTHROW){
			if (window == 1){
				if (window_timer < 9){
				draw_sprite_ext(sprite_get("bthrow_underlay"), floor(window_timer/3), x-(64*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
				}
				if (window_timer >= 18){
					draw_sprite_ext(sprite_get("bthrow_underlay"), 3, x-(64*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
				}
			}
			if (window == 2){
				draw_sprite_ext(sprite_get("bthrow_underlay"), floor(window_timer/2) + 4, x-(64*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
			}
			if (window == 3) && (window_timer < 6){
				draw_sprite_ext(sprite_get("bthrow_underlay"), floor(window_timer/3) + 5, x-(64*spr_dir), y-94, spr_dir, 1, 0, c_white, 1);
			}
		}
	}
	shader_end();
}