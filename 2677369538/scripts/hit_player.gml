//hit_player.gml

/*
if (attack == AT_DATTACK){
    if (window == 2){
		window = 3; window_timer = 0; 
	}
}*/

if (attack == AT_FSTRONG){
    if (window == 2){
		hit_player_obj.should_make_shockwave = false
	} else {
		hit_player_obj.should_make_shockwave = true
	}
}

if !(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_DSPECIAL){
	if (attack == AT_FSPECIAL){
		//if (window == 2){ window = 4; window_timer = 0; }
		if (window == 6){ which_bash = 2; }
		if (window == 8){ old_hsp = -4 * spr_dir; old_vsp = -2; }
		if (window > 1){ spin_hit = true; move_cooldown[AT_FSPECIAL] = 1; }
	}
	if (attack == AT_DAIR){
		if (window == 2){ spin_hit = true; move_cooldown[AT_FSPECIAL] = 1; }
	}
}

if (attack == AT_DSPECIAL){
	attack_end();
}