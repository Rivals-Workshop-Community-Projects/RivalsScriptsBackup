player_id.steam_wall_timer = 5
if(state == 0){
    if(!free && image_index == 0){
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
    	if(player_id.steam < 8 || free){
    		visible = false
    	}
    }
    if(image_index < 2 && image_index > 0){
    	if(player_id.steam > 0 && visible){
    		player_id.steam -= 1
    	}else if(visible){
    		state = 2
    		state_timer = 0
    		image_index = 0
    	}
    }
    if(player_id.steam_wall_dismiss == true){
        state = 2
        state_timer = 0
        image_index = 0
    }
    sprite_index = sprite_get("steamwall_startup")
    mask_index = sprite_get("steamwall_idle")
    image_index += 0.25
    if(image_index == 2 && !free && visible){
        if(length > 0){
            with(player_id){
                steam_wall = instance_create(steam_wall.x + 32 * steam_wall.spr_dir, steam_wall.y, "obj_article2")
                if(length > 0){
                length -= 1
                }
                steam_wall.length = length
            }         
        }
    }else if(image_index == 2 && free){
    	visible = false
    }
    if(image_index == 4 && !free && visible){
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
    if(state_timer mod 20 == 0 && !player_id.hitpause && !free && visible){
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

if(free){
    visible = false
}

state_timer++