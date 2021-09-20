
//Universal stuff
mask_index = sprite_get("geyser_mask")

//scan
if(state == 0){
	if(state_timer < 3){
		if(player_id.special_down){
			dist = 1.75
		}else{
			if(player_id.hsp > 4 || player_id.hsp < -4){
				dist = 0.7
			}else{
				dist = 1
			}
		}
	}
	sprite_index = sprite_get("empty")
	x += 15*spr_dir*dist 
	if(free){
		x -= 60*spr_dir
		state = 1
		state_timer = 0
	}else if(state_timer >= 6){
		if(number == 1 && instance_exists(player_id.geyser_2) || number == 2 && instance_exists(player_id.geyser)){
			if(distance_to_object(player_id.geyser) < 25){
				if(x < player_id.geyser.x){
					x -= 40
				}else if(x >= player_id.geyser.x){
					x += 40
				}
				if(!free){
					state = 1
					state_timer = 0
				}else{
					spawn_hit_fx(x, y, vfx_steam_small)
					instance_destroy();
					exit;
				}
			}else if(distance_to_object(player_id.geyser_2) < 25){
				if(x < player_id.geyser_2.x){
					x -= 40
				}else if(x >= player_id.geyser_2.x){
					x += 40
				}
				if(!free){
					state = 1
					state_timer = 0
				}else{
					spawn_hit_fx(x, y, vfx_steam_small)
					instance_destroy();
					exit;
				}
			}else{
				state = 1
				state_timer = 0
			}
		}else{
			state = 1
			state_timer = 0
		}
	}
}

//start
if(state == 1){
	if(state_timer == 1){
		sound_play(asset_get("sfx_kragg_roll_start"))
	}
	sprite_index = sprite_get("geyser_start")
	image_index += 0.25
	if(image_index >= 3){
		state = 2
		state_timer = 0
		image_index = 0
	}
}

//Idle
if(state == 2){
	sprite_index = sprite_get("geyser_idle")
	if(state_timer >= 300){
		sound_play(sound_get("sfx_steam3"))
		state = 3
		state_timer = 0
		image_index = 0
	}
	if(number == 1){
		create_hitbox(AT_DSPECIAL, 2, x, y + 65)
	}else{
		create_hitbox(AT_DSPECIAL, 3, x, y + 65)
	}
}

//Action
if(state == 3){
	sprite_index = sprite_get("geyser_action")
	image_index += 0.25
	if(state_timer == 1){
		sound_play(sound_get("sfx_steam2"))
	}
	if(image_index == 1){
		create_hitbox(AT_DSPECIAL, 1, x, y + 29)
	}
	if(image_index >= 9){
		instance_destroy();
		exit;
	}
}

//Sink
if(state == 4){
	sprite_index = sprite_get("geyser_start")
	image_index -= 0.25
	if(image_index <= 0){
		instance_destroy();
		exit;
	}
}
state_timer++