if (attack == AT_NSPECIAL && !free && destroyed == false){
    destroyed = true;
    sound_play (asset_get ("mfx_unstar"));
}

if (attack == AT_FSTRONG){
	var flash_time = 45;
	
	if (hitbox_timer > length - 15){
		visible = !(flash_time && hitbox_timer % 5 < 2);
	}
	
	if (hitbox_timer == length - 1){
		destroyed = true;
	}
}

with (player_id){
	if (has_rune("D")){
		with (other){
			grounds = 2;
		}
	}
}