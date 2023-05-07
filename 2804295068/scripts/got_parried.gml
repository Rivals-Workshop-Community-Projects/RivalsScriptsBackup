//got_parried
nspecial_charge = 0

if (my_hitboxID.attack == AT_DAIR){
    if (window != 4){
		window = 4
		window_timer = 0
	}
	sound_stop (asset_get ("sfx_spin_longer"));
}