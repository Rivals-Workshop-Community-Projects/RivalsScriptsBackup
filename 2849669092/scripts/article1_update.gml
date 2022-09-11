//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/






//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
    new_sprite = sprite_get("dspec_idle");
    idle_anim_rate = 12;
    with (player_id){
        if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
            if (attack == AT_DSPECIAL){
                if (window == 2){
                    if (window_timer == 0){
                        other.state = 1;
                        other.state_timer = 0;
                        other.spr_dir = spr_dir;
                    }
                }
            }
        }
    }
    
    //attack if touched while player is in hitstun
    with (oPlayer){
		with (other.id){
		    if (other.state == PS_HITSTUN && other.state != PS_TUMBLE && !other.hitpause && !other.hitstop){
		        if (place_meeting(x, y, other)){
        	        if (player == other.player){
        	            wriggle_was_hit = true;
        	            hitter = other.hitter;
        	        }
        	        spawn_hit_fx( floor(x), floor(y)- 10, 303 );
        	        state = 4;
    				state_timer = 0;
		        }
	       }
	    }
	}
}



//State 1: Idle

if (state == 1){
    
    new_sprite = sprite_get("dspec_startup");
    idle_anim_rate = 8;
    //Stop the movement from state 0
    hsp = -3*spr_dir;
    
    if (state_timer == 14){
        state = 3;
        state_timer = 0;
    }
    
    if (state_timer == 0){
        if (state_timer == 0){
	        sound_play(asset_get("sfx_absa_dashup"));
	    }
    }
    
}



//State 2: Dying

if (state == 2){
    instance_destroy();
    exit;
}



//State 3: Active

if (state == 3){
    new_sprite = sprite_get("dspec_dash");
    idle_anim_rate = 4;
	hsp = 10*spr_dir;
	
	if (state_timer == 0){
	    sound_stop(asset_get("sfx_absa_dashup"));
	    sound_play(asset_get("sfx_absa_dashdown"));
	}
	
	//attack player on contact
	with (oPlayer){
		with (other.id){
	        var teammate = get_player_team(get_instance_player(other));
	        if (teammate != get_player_team (player) && place_meeting(x, y, other)){
				spawn_hit_fx( floor(x), floor(y)- 10, 303 );
				state = 4;
				state_timer = 0;
	        }
	    }
	}
}



//State 4: Attack

if (state == 4){
	new_sprite = sprite_get("dspec_attack");
    idle_anim_rate = 4;
    hsp = 0;
    if (state_timer mod attack_interval == 0){
        if (times_attacked != attack_times){
            //spawn multihit hitbox
            sound_stop(asset_get("sfx_spin"));
            sound_play(asset_get("sfx_spin"));
            var cur_hitbox = create_hitbox(AT_DSPECIAL, 1, x - 1, y - 26);
            if (wriggle_was_hit){
                cur_hitbox.player = hitter;
            }
            else{
                with (player_id){
                    move_cooldown[AT_DSPECIAL] = dspec_cooldown;
                } 
            }
            times_attacked++;
        }
        else{
            //spawn finisher hitbox
            spawn_hit_fx( floor(x), floor(y)- 10, 197 );
            var cur_hitbox = create_hitbox(AT_DSPECIAL, 2, x - 1, y - 26);
            if (wriggle_was_hit){
                cur_hitbox.player = hitter;
            }
            else{
                with (player_id){
                    move_cooldown[AT_DSPECIAL] = dspec_cooldown;
                } 
            }
            state = 2;
            
        }
        
    }
}

if ((x < 0 || x > room_width) || (state > 2 && hit_wall)){
	spawn_hit_fx( floor(x), floor(y)- 10, 0 );
    state = 2;
}

if (y <= 180) {
  y += 4;
}



//State 5

if (state == 5){
	//Put something here if you want
}



//State 6

if (state == 6){
	//Put something here if you want
}



//State 7

if (state == 7){
	//Put something here if you want
}



//State 8

if (state == 8){
	//Put something here if you want
}



//State 9: Attack

if (state == 9){
    
    //11 frames in, create DSPECIAL hitbox 1
    if (state_timer == 11){
    	create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise"));
    }
    
    //11 frames in, create DSPECIAL hitbox 2
    if (state_timer == 15){
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise2"));
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 28){
	    state = 2;
	    state_timer = 0;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling



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