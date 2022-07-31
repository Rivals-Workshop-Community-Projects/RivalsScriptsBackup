//got_hit.gml

if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	if(instance_exists(whispyRoot)){
		//gotHitOutOfFSpecial = true;
		if (sprite_index == sprite_get("fspecial")){
			with(whispyRoot){
				if (state == 3){
					state = 7;
					state_timer = 0;
					image_index = 0;
					sound_play(asset_get("sfx_plant_ready"));
				}
			}
		}
	}
} else {
	//print("i am mario");
}
