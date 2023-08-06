// got_parried.gml

if (my_hitboxID.type == 1){
	nspecChargeProg = 0;
	if (nspecChargeShouldLoseOnParry){
		nspecStoredCharge = false;
		sound_play(asset_get("mfx_unstar"))
	}	
}