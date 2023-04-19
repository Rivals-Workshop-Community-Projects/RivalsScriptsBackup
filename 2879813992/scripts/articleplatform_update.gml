//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Spawn
- 1 Idle Grounded
- 2 Despawn


*/



//Are there too many articles? If so, I should die

if (replacedcount_shield > maxarticles){
	if(state == 1 || state == 0 and state != 2){
    state = 2;
    state_timer = 0;
	}	if(state == 3 || state == 4 and state != 5){
    state = 5;
    state_timer = 0;
	}
}if (shield_hp <= 0){
	if(state == 1 || state == 0 and state != 2){
    state = 2;
    state_timer = 0;
	}	if(state == 3 || state == 4 and state != 5){
	player_id.shield_plat_aerith = 0;
    state = 5;
    state_timer = 0;
	}
}
with (player_id){
if(destroy_field || destroy_shield){
	if(other.state == 1){
    other.state = 2;
    other.state_timer = 0;
	}	if(other.state == 4){
		shield_plat_aerith = 0;
    other.state = 5;
    other.state_timer = 0;
	}
	}if(state == PS_RESPAWN || state == PS_DEAD){
	if(other.state == 1){
    other.state = 2;
    other.state_timer = 0;
	}	if(other.state == 4){
		shield_plat_aerith = 0;
    other.state = 5;
    other.state_timer = 0;
	}
	}
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//State 3: Spawn Aerial
if (state == 3){
	mask_index = asset_get("empty_sprite");
//	image_angle = 90;
	vsp = vsp * 0.95;
	if(state_timer == 1){
	vsp = 2 * spr_dir;
	}
	
	if(state_timer = 28){
		player_id.destroy_shield = false;
		state = 4;
		state_timer = 0;
		vsp = 0;
	}
	//on_shield = true;

}

//State 4: Idle
if (state == 4){
	if(state_timer == 1){
	mask_index = sprite_get("uspecial_shield_mask");
	stood_on = false;
	}
	with oPlayer if !free && place_meeting(floor(x), floor(y)+1, other) && !place_meeting(floor(x), floor(y), other){
		other.vsp = 1;
		other.stood_on = true;
	}
	
	    with player_id if !free && place_meeting(floor(x), floor(y)+1, other) && !place_meeting(floor(x), floor(y), other){
		other.on_shield = true;
	}else{
		other.on_shield = false;
	}
	
	if (place_meeting(x, y, asset_get("pHitBox")) && hit_cooldown == 0) {
    	with (asset_get("pHitBox")){
    			if (place_meeting(x, y, other) && hit_priority != 0 && hitpause != 0 && kb_value != 0){
    				other.hitbox_hit = self;
    				if(type != 2){
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
    				}
                    other.hitstop = hitpause;
    		}
    	}
    	if (hitbox_hit != noone){
    		if(hitbox_hit.hitpause > 0 && hitbox_hit.hit_priority > 0){
    			//mask_index = sprite_get("uspecial_shield");
    			
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			var hitfx = spawn_hit_fx(floor(x), floor(y), hit_effect);
        			hitfx.pause = 10;
    			}
    			if(hitbox_hit.type == 1){
    			hitbox_hit.player_id.hitpause = true;
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true;
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    			}
    			shield_hp -= hitbox_hit.damage;
    			hit_cooldown = 20;
    			print(hitbox_hit);
    					}
    				//}
    		}
    }
    else{
    	hitbox_hit = noone;
    }
    
        if(hit_cooldown !=0){
    	hit_cooldown--;
    }
	
	if(stood_on && vsp == 0){
		player_id.shield_plat_aerith = 0;
		state = 5;
		state_timer = 0;
	}
	
    if(state_timer == 720){
    	player_id.shield_plat_aerith = 0;
    	state = 5;
    	state_timer = 0;
    }
    
    if(state_timer > 40){
    //delete if out of bounds
if (y > room_height){
		sound_play(asset_get("sfx_ice_shatter"));
		sound_play(sound_get("se_zelda_magic01"));
		player_id.shield_plat_aerith = 0;
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
		sound_play(asset_get("sfx_ice_shatter"));
		sound_play(sound_get("se_zelda_magic01"));
		player_id.shield_plat_aerith = 0;
    instance_destroy();
    exit;
}
}
}

//State 5: Despawn
if(state == 5){
	mask_index = asset_get("empty_sprite");
	if(state_timer == 1){
		sound_play(asset_get("sfx_ice_shatter"));
		sound_play(sound_get("se_zelda_magic01"));
		player_id.destroy_field = false;
	}
	if(state_timer == 36){
	    instance_destroy();
    	exit;
	}
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("uspecial_shield_spawn");
        animation_type = 2;
        break;
    case 1:
        new_sprite = sprite_get("uspecial_shield");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("uspecial_shield_destroy");
        animation_type = 2;
        break;
    case 3:
        new_sprite = sprite_get("air_uspecial_shield_spawn");
        animation_type = 2;
        break;
    case 4:
        new_sprite = sprite_get("air_uspecial_shield");
        animation_type = 1;
        break;
    case 5:
        new_sprite = sprite_get("air_uspecial_shield_destroy");
        animation_type = 2;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;