//update.gml

if attack == AT_NSPECIAL {
	if window == 2 && window_timer == 11 {
			move_cooldown[AT_NSPECIAL] = 25;
	}
	
	if window == 6 && window_timer == 7 {
			move_cooldown[AT_NSPECIAL] = 40;
	}
	
}
/*
if (gotHitOutOfFSpecial == true){
	if (instance_exists(whispyRoot)){
		with(whispyRoot){
			state = 7;
			state_timer = 0;
			image_index = 0;
			sound_play(asset_get("sfx_plant_ready"));
			if (state == 3){
				print("asas");
			}
		}
	}
	gotHitOutOfFSpecial = false;
}
