//got_parried
nspecial_charge = 0

if (my_hitboxID.attack == AT_DAIR){
    if (window != 5){
		window = 5
		window_timer = 0
	}
	sound_stop (asset_get ("sfx_spin_longer"));
}

if (my_hitboxID.attack == 49){
	hit_player_obj.invincible = false;
}