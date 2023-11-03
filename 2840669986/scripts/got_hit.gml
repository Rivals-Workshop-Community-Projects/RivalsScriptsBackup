//got_hit.gml

if (attack == AT_NSPECIAL){
	sound_stop(sfx_charge);
}

if (attack == AT_NAIR){
	sound_stop(sfx_air_ride_quick_spin);
	sound_stop(sfx_air_ride_quick_spin_short); // i dont feel like checking which one i called tbh
}

if (attack == AT_USPECIAL){
	sound_stop(sfx_star_allies_clean_chuchu);
}

if (enemy_hitboxID.effect == 421){
	spr_dir *= -1;
}