//article2_update - runs every frame the article exists

/*STATE LIST

- 0 Front Counterbox
- 1 Back Counterbox
- 2 Front Counterbox Activated
- 3 Back Counterbox Activated
- 4 Did not activate


*/



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Front Counterbox

if (state == 0){
	x = player_id.x + 35 * spr_dir;
	y = player_id.y;
		if(player_id.attack == AT_DSPECIAL){
		if(player_id.window == 2 && player_id.window_timer = 16){
			state = 4;
			state_timer = 0;
		}
	}/*if(player_id.attack == AT_DSPECIAL_2){
		state = 4;
		state_timer = 0;
	}*/if(player_id.counter_drop == 2){
		 instance_destroy();
    	exit;
	}
	    if (place_meeting(x, y, asset_get("pHitBox")) && state == 0) { //activates front counter
    	with (asset_get("pHitBox")){
    		if (player != other.player_id.player){
    			if (place_meeting(x, y, other)){
    				other.hitbox_hit = self;
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
                    other.hitstop = hitpause;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			spawn_hit_fx(floor(x), floor(y), hit_effect);
    			}
    			hitbox_hit.player_id.hitpause = true;
    			enemy_knockback = hitbox_hit.kb_value;
    			enemy_knockback_scaling = hitbox_hit.kb_scale;
    			enemy_damage = hitbox_hit.damage;
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    			state = 2;
				state_timer = 0;
    		}
    }
    else{
    	hitbox_hit = noone;
    }
    if(player_id.attack != AT_DSPECIAL || player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_TUMBLE || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN){
    			 instance_destroy();
    			exit;
    }
}



//State 1: Back Counterbox

if (state == 1){
	x = player_id.x + -35 * spr_dir;
	y = player_id.y;
		if(player_id.attack == AT_DSPECIAL){
		if(player_id.window == 2 && player_id.window_timer = 16){
			state = 4;
			state_timer = 0;
		}
	}/*if(player_id.attack == AT_DSPECIAL_2){
		state = 4;
		state_timer = 0;
	}*/if(player_id.counter_drop == 1){
		    instance_destroy();
    		exit;
	}
if (place_meeting(x, y, asset_get("pHitBox")) && state == 1) { //activates back counter
    	with (asset_get("pHitBox")){
    		if (player != other.player_id.player){
    			if (place_meeting(x, y, other)){
    				other.hitbox_hit = self;
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
                    other.hitstop = hitpause;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			spawn_hit_fx(floor(x), floor(y), hit_effect);
    			}
    			hitbox_hit.player_id.hitpause = true;
    			enemy_knockback = hitbox_hit.kb_value;
    			enemy_knockback_scaling = hitbox_hit.kb_scale;
    			enemy_damage = hitbox_hit.damage;
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    			state = 3;
    			state_timer = 0;
    		}
    }
    else{
    	hitbox_hit = noone;
    }
    if(player_id.attack != AT_DSPECIAL || player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_TUMBLE || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN){
    			 instance_destroy();
    			exit;
    }
}

//State 2: Front Counterbox Activated

if (state == 2){
		player_id.enemy_knockback = enemy_knockback;
        player_id.enemy_knockback_scaling = enemy_knockback_scaling;
        player_id.enemy_damage = enemy_damage;
        counter_drop = 1;
        player_id.counter_drop = counter_drop;
	with(player_id){
	attack_end();
	set_attack(AT_DSPECIAL_2);
	}
    instance_destroy();
    exit;
}

//State 3: Back Counterbox Activated

if (state == 3){
		player_id.enemy_knockback = enemy_knockback;
        player_id.enemy_knockback_scaling = enemy_knockback_scaling;
        player_id.enemy_damage = enemy_damage;
        counter_drop = 2;
        player_id.counter_drop = counter_drop;
	with(player_id){
	spr_dir = spr_dir * -1;
	attack_end();
	set_attack(AT_DSPECIAL_2);
	}
    instance_destroy();
    exit;
}


//State 4: Did not activate

if (state == 4){
    instance_destroy();
    exit;
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
if(player_id.phone_practice == false){
switch(state){
    case 0:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
    case 3:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
    case 4:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
}
}if(player_id.phone_practice == true){
switch(state){
    case 0:
        new_sprite = sprite_get("egg_hurtbox");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("egg_hurtbox");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("egg_hurtbox");
        animation_type = 1;
        break;
    case 3:
        new_sprite = sprite_get("egg_hurtbox");
        animation_type = 1;
        break;
    case 4:
        new_sprite = sprite_get("egg_hurtbox");
        animation_type = 1;
        break;
}
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

//delete if out of bounds
if (y > room_height){
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;