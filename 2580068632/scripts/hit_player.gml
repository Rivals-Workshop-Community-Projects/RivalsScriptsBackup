//hit_player.gml

if (my_hitboxID.attack == AT_FSPECIAL){
	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
	//dimensional_cape_hit = true;
}


if (my_hitboxID.attack == AT_FAIR) {
	if (window < 6){
		hit_player_obj.x -= 6 * hit_player_obj.spr_dir
		if (hit_player_obj.y > y){
			hit_player_obj.y -= 6
		} else if (hit_player_obj.y < y){
			hit_player_obj.y += 6
		}
	}
}

if (my_hitboxID.attack == AT_BAIR){
	if (window < 6){
		if (hit_player_obj.x > x){
			hit_player_obj.x -= 6
		} else if (hit_player_obj.x < x){
			hit_player_obj.x += 6
		}
		//hit_player_obj.x = x - 18 * spr_dir
		if (hit_player_obj.y > y){
			hit_player_obj.y -= 6
		} else if (hit_player_obj.y < y){
			hit_player_obj.y += 6
		}
	}
}


if (my_hitboxID.attack == AT_FAIR) {
	if (window > 5){
		//sound_play(sfx_krtd_sword_blow1);
	}
}

if (my_hitboxID.attack == AT_USTRONG) {
	if (window < 7){
		if (hit_player_obj.free && hit_player_obj.y < (y - 16)){
			hit_player_obj.y += 2
		}
		if (spr_dir == 1){
			if (window == 3){
				if (hit_player_obj.x < x){
					hit_player_obj.x += 24
				}
			}
			if (window == 5){
				if (hit_player_obj.x > x){
					hit_player_obj.x -= 10
				}
			}
		} else if (spr_dir == -1){
			if (window == 3){
				if (hit_player_obj.x > x){
					hit_player_obj.x -= 24
				}
			}
			if (window == 5){
				if (hit_player_obj.x < x){
					hit_player_obj.x += 10
				}
			}
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	move_cooldown[AT_FSPECIAL] = 9999999;
}