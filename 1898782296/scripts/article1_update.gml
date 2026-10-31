state_timer++;

switch(state){
		case 1://Turn small
		//mask_index = (sprite_get("carpet_coll_small"))
		sprite_index = (sprite_get("carpet_shrink"))
		if(state_timer >= 120 and player_id.carpet_cooldown == false){
			state = 2;
			
		}
		if(state_timer == 15){
			image_index = 1;
		}
		if(state_timer == 30){
			image_index = 2;
		}
		hsp *= .9;
		vsp *= .9;
		if(state_timer == 1){
			player_id.carpet_cooldown = true;
		}
	break;
	case 2://Small, return to shy guy
		image_index += 0.17
		sprite_index = (sprite_get("carpet_small"))
		if(abs(hsp) < abs(return_speed_max)){
			hsp += (player_id.x - x)/500
		} else {
			hsp = lerp(hsp, 0, 0.05);
		}
		if(abs(vsp) < abs(return_speed_max)){
			vsp += ((player_id.y+vsp - player_id.char_height) - y)/500
		} else {
			vsp = lerp(vsp, 0, 0.05)
		}
		with(asset_get("oPlayer")){
			if(place_meeting(x, y, other)){
				//print("TOUCH")
				if(id = other.player_id){
					if(carpet_cooldown = false){
						other.state = 4;
						other.state_timer = 0;
						other.image_index = 0;
					}
				}
			}
		}
	break;
	case 3://collected by Shy Guy
		player_id.carpet = noone;
		player_id.white_flash_timer = 15;
		instance_destroy();
		exit;
	break;
	case 4://Collecting animation
		hsp += (player_id.x - x)/25
		vsp += ((player_id.y+vsp - (player_id.char_height - 15)) - y)/25
		image_index += 0.5;
		sprite_index = sprite_get("carpet_return")
		if(state_timer >= 11){
			state = 3;
			state_timer = 0;
			sound_play(sound_get("yi_flower_collect"))
		}
	break;
}