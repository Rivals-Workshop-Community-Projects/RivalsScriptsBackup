player_id.steam_wall_timer = 5
if(state == 0){
	//Geyser check to launch mortar
	if(image_index == 1){
		for(i = 0; i < array_length(player_id.geyser_array); i++){
			if(place_meeting(x - 12, y + 48, player_id.geyser_array[i]) || place_meeting(x + 12, y + 48, player_id.geyser_array[i])){
				var geyser = player_id.geyser_array[i]
				if(geyser.state == 2){
					if(player_id.big_geysers){
						geyser.state = 5
						geyser.state_timer = 0
					}else{
						geyser.state = 3
						geyser.state_timer = 0
					}
					var player_distance = -1
					var tracked_player_coords = [x, y]
					with(oPlayer){
						if((player_distance == -1 || player_distance > distance_to_object(other)) && self != other.player_id){
							player_distance = distance_to_object(other)
							tracked_player_coords = [x, y]
						}
					}
					
					for(i = 0; i < player_id.geyser_mortars; i++){
						var mortar = create_hitbox(AT_DSPECIAL, 7, geyser.x, geyser.y + 64)
						mortar.vsp = (min(-15 + (tracked_player_coords[1] - (y + 54)) / 75, -5)) + ((-3 + random_func_2(i, 6, false)) * clamp(i, 0, 1))
						mortar.hsp = ((tracked_player_coords[0] - x) / 75) + ((-3 + random_func_2(i + 10, 6, false)) * clamp(i, 0, 1))
					}
					player_id.steam_wall_dismiss = true
				}
			}
		}
	}
	
	if(player_id.steam_wall_dismiss == true){
        state = 2
        state_timer = 0
        image_index = 0
        exit;
    }
	
    if((!free || place_meeting(x, y + 54, asset_get("par_jumpthrough"))) && image_index == 0){
    	if(length == player_id.full_length){
	        with(player_id){
	            sound_play(sound_get("sfx_steam_quick"))
	        }
    	}
    }else if(player_id.steam < 8 && image_index == 0){
		instance_destroy();
		exit;
    }
    if(image_index == 0){
    	if(player_id.steam <= 0 || (free && !place_meeting(x, y + 54, asset_get("par_jumpthrough"))) && image_index == 0){
    		visible = false
    	}
    }
    if(image_index < 1 && image_index > 0){
    	if(player_id.steam >= 0 && visible){
    		if(state_timer <= 2){
    			player_id.steam -= 1
    		}
    	}else if(visible){
    		state = 2
    		state_timer = 0
    		image_index = 0
    	}
    }
    sprite_index = sprite_get("steamwall_startup")
    mask_index = sprite_get("steamwall_idle")
    image_index += 0.25
    if(state_timer == 4 && (!free || place_meeting(x - (8 * spr_dir), y + 54, asset_get("par_jumpthrough"))) && visible){
        if(length > 0){
            with(player_id){
                steam_wall = instance_create(steam_wall.x + 32 * steam_wall.spr_dir, steam_wall.y, "obj_article2")
                if(length > 0){
                length -= 1
                }
                steam_wall.length = length
            }         
        }
    }else if(image_index == 2 && (free && !place_meeting(x, y + 54, asset_get("par_jumpthrough")))){
    	visible = false
    }
    if(image_index == 4 && (!free || place_meeting(x - (8 * spr_dir), y + 54, asset_get("par_jumpthrough"))) && visible){
    	create_hitbox(AT_FSTRONG, 3, x, y + 40)
    }
    if(image_index >= 6){
        state = 1
        state_timer = 0
        image_index = 0
    }
}

if(state == 1){
    if(player_id.steam_wall_dismiss == true){
        state = 2
        state_timer = 0
        image_index = 0
    }
    if(player_id.steam_wall_anim_sync mod 3 == 0 && !player_id.hitpause && (!free || place_meeting(x - (8 * spr_dir), y + 54, asset_get("par_jumpthrough"))) && visible){
        create_hitbox(AT_FSTRONG, 2, x, y + 13)
    }
    if(length != 0 && length != player_id.full_length){
        sprite_index = sprite_get("steamwall_idle")
    }else if(length == player_id.full_length){
        sprite_index = sprite_get("steamwall_idle_start")
    }else if(length == 0){
        sprite_index = sprite_get("steamwall_idle_end")
    }
    mask_index = sprite_get("steamwall_idle")
    image_index = player_id.steam_wall_anim_sync
    if(state_timer > 120){
        state = 2
        state_timer = 0
        image_index = 0
    }
}

if(state == 2){
    sprite_index = sprite_get("steamwall_end")
    mask_index = sprite_get("steamwall_idle")
    image_index += 0.25
    if(image_index >= 5){
        instance_destroy();
        exit;
    }
}

if(free && !place_meeting(x - (8 * spr_dir), y + 54, asset_get("par_jumpthrough"))){
    visible = false
}

state_timer++