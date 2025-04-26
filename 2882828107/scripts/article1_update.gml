//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Startup
- 1 Attacking
- 2 Dying


*/
	//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

    if (place_meeting(x, y, asset_get("pHitBox")) && state != 2) {
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
				state = 2
				state_timer = 0;
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

with pHitBox{
    if place_meeting(x, y, other) && (player_id == other.player_id){
		if (attack == AT_NSPECIAL){
			with other{
				if (other.x - x) < 0 {
					hsp = 6;
				} else {
					hsp = -6;
				}
			}
		}
		if (has_rune("H")){
			if (attack == AT_USPECIAL){
				with other{
					state = 1
					state_timer = 240
					vsp = -4.5;
					if (other.x - x) < 0 {
						hsp = 6;
					} else {
						hsp = -6;
					}
				}
			}
		}
	}
}

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 3

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
	var grav_max = 6;
	
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

//friction
hsp *= 0.9

//State 0: Startup
if (state == 0){
    if (state_timer == 1){
		spawn_hit_fx(x + 16,y,15)
		spawn_hit_fx(x - 16,y,15)
		if (get_player_color(player) == 3) sound_play(sound_get("shaqolantern"));
		else sound_play(sound_get("jackolantern"));
	}
	if (state_timer == 12){
		spawn_hit_fx(x + 12*spr_dir,y - 36,116)
	}
    if (state_timer == 24){
		state = 1
		state_timer = 0
	    sound_play(asset_get("sfx_forsburn_spew_smoke"));
	}
}

//State 1: Attacking
if (state == 1){
	if (state_timer mod 6 == 2){
		create_hitbox( AT_DSPECIAL, 1, (x + 54*spr_dir),(y - 10) );
	}
	if (state_timer mod 6 == 4) && (state_timer >= 120 || has_rune("I")){
		create_hitbox( AT_DSPECIAL, 1, (x + 102*spr_dir),(y - 10) );
	}
	if (state_timer mod 6 == 0) && (state_timer >= 240 || has_rune("I")){
		create_hitbox( AT_DSPECIAL, 1, (x + 150*spr_dir),(y - 10) );
	}
	if (state_timer == 120){
	    sound_play(sound_get("jackolantern_ambient1"));
		if (get_player_color(player) == 3) sound_play(sound_get("shaqolantern_laugh"));
	}
	if (state_timer == 240){
	    sound_play(sound_get("jackolantern_ambient2"));
		if (get_player_color(player) == 3) sound_play(sound_get("shaqolantern_laugh2"));
	}
    if (state_timer == 300){
		state = 2
		state_timer = 0
	}
}

//State 2: Dying
if (state == 2){
    if (state_timer == 1){
	    sound_play(sound_get("jackolantern_end"));
		spawn_hit_fx(x + 12*spr_dir,y - 36,117)
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
        new_sprite = sprite_get("jackolantern_startup");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("jackolantern_attacking");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("jackolantern_end");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("jackolantern")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 8 == 0){
            image_index++;
        }
        break;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 4 == 0){
            image_index++;
        }
        break;
		
    case 2: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 6 == 0){
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
if (y > (room_height + 128)){
    sound_play (sound_get ("shovel"));
    instance_destroy();
    exit;
}

//shovel
if (shovel == true){
	spawn_hit_fx(x + 16,y,15)
	spawn_hit_fx(x - 16,y,15)
    sound_play (sound_get ("shovel"));
	instance_destroy();
    exit;
}

//Make time progress
state_timer++;