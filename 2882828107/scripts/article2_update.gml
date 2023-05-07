//article2_update - runs every frame the article exists

/*STATE LIST

- 0 Attacking
- 1 Idle


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
				poof = true
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
			with obj_article2{
				if (player_id == other.player_id){
					if (other.x - x) < 0 {
						hsp = 6;
					} else {
						hsp = -6;
					}
				}
			}
		}
		if (has_rune("H")){
			if (attack == AT_USPECIAL){
				with obj_article2{
					if (player_id == other.player_id){
						state = 1
						state_timer = 0
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
}

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 3

if (player_id.state == PS_RESPAWN && player_id.state_timer == 1){
	poof = true
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

//State 0: Idle
if (state == 0){
    if (state_timer == 1){
		spawn_hit_fx(x + 16,y,15)
		spawn_hit_fx(x - 16,y,15)
	}
	if (state_timer == 30){
		state = 1
		state_timer = 0
	}
}

//State 1: Idle
if (state == 1){
	if (state_timer == 20){
		sound_play (sound_get("witchhazel_blast"));
		sound_play (sound_get("witchhazel_wobble"));
		create_hitbox( AT_FSPECIAL, 1, (x + 228*spr_dir),(y - 34) );
		create_hitbox( AT_FSPECIAL, 2, (x + 144*spr_dir),(y - 34) );
	}
	if (state_timer == 60){
		poof = true
	}
}

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("witchhazel_ready");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("witchhazel_attacking");
        animation_type = 1;
        break;
    case 2:
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("witchhazel")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 5 == 0){
            image_index++;
        }
        break;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod 5 == 0){
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

//poof
if (poof == true){
	spawn_hit_fx(x,y - 30,66)
    sound_play (asset_get ("sfx_abyss_despawn"));
	instance_destroy();
    exit;
}

//Make time progress
state_timer++;