
//Universal stuff
mask_index = sprite_get("geyser_mask")

//scan
if(state == 0){
	if(state_timer < 3){
		if(player_id.special_down){
			dist = 1.3
		}else{
			dist = 0.75
		}
	}
	sprite_index = sprite_get("empty")
	x += 15*spr_dir*dist 
	if((!place_meeting(x + 30, y + 8, asset_get("par_block")) || !place_meeting(x - 30, y + 8, asset_get("par_block"))) && place_meeting(x, y + 8, asset_get("par_block")) ||
	(!place_meeting(x + 30, y + 8, asset_get("par_jumpthrough")) || !place_meeting(x - 30, y + 8, asset_get("par_jumpthrough"))) && place_meeting(x, y + 8, asset_get("par_jumpthrough")) || state_timer == 6){
		state = 1
		state_timer = 0
	}
}

if(!place_meeting(x, y + 8, asset_get("par_jumpthrough")) && !place_meeting(x, y + 8, asset_get("par_block"))){
	visible = false
}else{
	visible = true
}

//start
if(state == 1){
	if(state_timer == 1){
		if((place_meeting(x, y + 8, asset_get("par_block")) || place_meeting(x, y + 8, asset_get("par_jumpthrough")))){
			if(!place_meeting(x + 15, y + 8, asset_get("par_block")) && !place_meeting(x + 15, y + 8, asset_get("par_jumpthrough"))){
				x -= 15
			}else if(!place_meeting(x - 15, y + 8, asset_get("par_block")) && !place_meeting(x - 15, y + 8, asset_get("par_jumpthrough"))){
				x += 15
			}
			
			//Move away from other geysers
			with(asset_get("obj_article1")){
				var current_geyser = self
				if(player_id == other.player_id){
					if(current_geyser.player_id == player_id && current_geyser != other && place_meeting(x, y, other)){
						if(place_meeting(x + 80, y + 8, asset_get("par_block")) || place_meeting(x + 80, y + 8, asset_get("par_jumpthrough"))){
							other.x += 65
						}else if(place_meeting(x - 80, y + 8, asset_get("par_block")) || place_meeting(x - 80, y + 8, asset_get("par_jumpthrough"))){
							other.x -= 65
						}else{
							instance_destroy();
							exit;
						}
					}
				}
			}
			sound_play(asset_get("sfx_kragg_roll_start"))
			if (!bypass_cost) player_id.steam -= player_id.dspec_cost
			player_id.geysers += 1
		}else{
			player_id.geysers -= 1
			instance_destroy();
			exit;
		}
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
	var detection_hitbox = create_hitbox(AT_DSPECIAL, 2, x, y + 65)
	detection_hitbox.geyser_id = self
	if(lifetime > player_id.geyser_duration){
		image_index = 2
		state = 4
		state_timer = 0
	}
	if(place_meeting(x, y, player_id)){
		if(player_id.big_geysers){
			state = 5
			state_timer = 0
			player_id.hsp *= 1.3
			player_id.vsp = -24 + clamp(abs(player_id.hsp) / 2, 0, 12)
		}else{
			state = 3
			state_timer = 0
			player_id.hsp *= 1.1
			player_id.vsp = -20 + clamp(abs(player_id.hsp) / 2, 0, 12)
		}
		image_index = 0
		with(player_id){
			set_state(PS_IDLE_AIR)
		}
		player_id.steam += player_id.dspec_cost
		player_id.invincible = true
		player_id.invince_time = 0
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
	if(image_index >= 7 && player_id.regen_geysers){
		sprite_index = sprite_get("geyser_start")
		state = 1
		state_timer = 2
		image_index = 2
	}
	if(image_index >= 9){
		player_id.geysers -= 1
		instance_destroy();
		exit;
	}
}

//Sink
if(state == 4){
	sprite_index = sprite_get("geyser_start")
	image_index -= 0.25
	if(image_index <= 0){
		player_id.geysers -= 1
		instance_destroy();
		exit;
	}
}

//Steam Update


//Full Action
if(state == 5){
	sprite_index = sprite_get("geyser_action_full")
	image_index += 0.25
	if(state_timer == 1){
		sound_play(sound_get("sfx_steam_cloth"))
	}
	if(image_index == 1){
		create_hitbox(AT_DSPECIAL, 5, x, y + 29)
	}
	if(image_index >= 6){
		if(player_id.regen_geysers){
			sprite_index = sprite_get("geyser_start")
			state = 1
			state_timer = 2
			image_index = 0
		}else{
			instance_destroy();
			exit;
		}
	}
}

/*
//Weak Action
if(state == 6){
	sprite_index = sprite_get("geyser_action_weak")
	image_index += 0.25
	if(state_timer == 1){
		sound_play(sound_get("sfx_steam2"))
	}
	if(image_index == 1){
		create_hitbox(AT_DSPECIAL, 4, x, y + 50)
	}
	if(image_index >= 5){
		instance_destroy();
		exit;
	}
}


if(attack == true){
	if(state != 6 && state != 5 && state != 3){
		if(lifetime < 17){
			state = 6
			state_timer = 0
			image_index = 0
		}else if(lifetime < 36){
			state = 3
			state_timer = 0
			image_index = 0
		}else{
			state = 5
			state_timer = 0
			image_index = 0
		}
	}
}
*/
state_timer++
lifetime++