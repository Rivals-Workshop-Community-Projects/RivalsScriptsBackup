//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying


*/
	//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

    if (place_meeting(x, y, asset_get("pHitBox")) && state == 0) {
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
				state = 2;
				state_timer = 0;
				if (has_rune("J")){
					create_hitbox( AT_DSPECIAL, 1, (x),(y - 30) );
				}
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			spawn_hit_fx(x, y, hit_effect);
    			}
    			hitbox_hit.player_id.hitpause = true;
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    		}
    }
    else{
    	hitbox_hit = noone;
    }

if (state != 2){
    with pHitBox{
	    //firepea
	    if place_meeting(x, y, other) && (player_id == other.player_id) && (attack == AT_JAB || attack == AT_EXTRA_1 || (attack == AT_NAIR && hbox_num == 4) || attack == AT_FAIR || attack == AT_BAIR || attack == AT_FSTRONG || attack == AT_NSPECIAL || attack == 49){
	    	if (!torched){
	            torched = true;
				with obj_article1{
					if (player_id == other.player_id){
						state_timer += 60
					}
				}
	    	}
		}
		//bean
		if place_meeting(x, y, other) && (player_id == other.player_id) && (attack == AT_FSPECIAL && hbox_num == 1){
		    if (hitbox_timer < 120){
	            hitbox_timer = 120
				bean_timer_reduction = true
				sound_play (sound_get ("wakeup"));
				with obj_article1{
					if (player_id == other.player_id){
						state = 2
						state_timer = 0
					}
				}
			}
	    }
	}
}

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.state == PS_RESPAWN && player_id.state_timer == 1 && state != 2){
	shovel = true
}

//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//gravity
if (grav_on){
	var grav_speed = .1
	var grav_max = 8;
	
	if (free){
		
		grounded_timer = 0;
		
		if (vsp < grav_max){
			vsp = vsp + grav_speed;
		}
	}
	else{
		grounded_timer++;
		
		if (grounded_timer == 3){
			sound_play (asset_get("sfx_land_med2"));
		}
		
	}
	
}

//State 0: Freshly spawned
if (state == 0){
    if (state_timer == 1){
		spawn_hit_fx(x + 15,y,15)
		spawn_hit_fx(x - 15,y,15)
	}
}

//State 1: Being Used

//State 2: Dying
if (state == 2){
    if (state_timer == 1){
	    sound_play(asset_get("sfx_zetter_fireball_fire"));
		spawn_hit_fx(x,y - 30,3)
	}
    if (state_timer == 60){
		spawn_hit_fx(x,y - 30,13)
	    instance_destroy();
        exit;
	}
}

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("torchwood");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("torchwood");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("torchwood_exhaust");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("torchwood")
    	animation_type = 1;
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


//delete if out of bounds
if (y < -64 || y > (room_height + 64)){
    sound_play (sound_get ("shovel"));
    instance_destroy();
    exit;
}

if (x < -64 || x > (room_width + 64)){
    sound_play (sound_get ("shovel"));
    instance_destroy();
    exit;
}

//delete if 1 minute passes
if (state_timer >= 3600){
	state = 2
	state_timer = 0
}

//shovel
if (shovel == true){
	spawn_hit_fx(x + 15,y,15)
	spawn_hit_fx(x - 15,y,15)
    sound_play (sound_get ("shovel"));
	if (has_rune("D")){
		create_hitbox( AT_DSPECIAL, 2, (x),(y) );
	}
	instance_destroy();
    exit;
}

//Make time progress
state_timer++;