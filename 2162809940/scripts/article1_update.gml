//article1_update - runs every frame the article exists

/*STATE LIST

- 0 idle
- 1 preparation
- 2 oof ow ouch
- 3 shoot
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/


var player_attack = player_id.attack;
var player_window = player_id.window;
var player_window_timer = player_id.window_timer;

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}


//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

//if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
//	sound_play(asset_get("sfx_clairen_hit_med"));
//	spawn_hit_fx(floor(x),floor(y),256)
//	instance_destroy();
//	exit;
//}

if (place_meeting(x, y, asset_get("pHitBox")) && can_get_hit) { //makes the pot hittable when can_get_hit is true
	with (asset_get("pHitBox")){
		if (player != other.player_id.player){
			if (place_meeting(x, y, other)){
				other.hitbox_hit = self;
			}
		}
	}
	if (hitbox_hit != noone){
		
		if (hitbox_hit.damage > 4 && state != 2){
			
			with (player_id){
				move_cooldown[AT_DSPECIAL] = 200;
			}
			
			state = 2;
			state_timer = 0;
			
			sound_play(sound_get("doink"));
			sound_play(hitbox_hit.sound_effect);
			spawn_hit_fx(floor(hitbox_hit.x),floor(hitbox_hit.y),hitbox_hit.hit_effect);
			
			hitbox_hit.player_id.hitpause = 1;
			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
			hitbox_hit.player_id.has_hit = true
			hitstop = hitbox_hit.hitpause;
			
			
			hitby = hitbox_hit.player_id;
		
		}
	}
}
else{
	hitbox_hit = noone;
}

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.state == PS_RESPAWN && player_id.state_timer == 1 && state != 2){
	spawn_hit_fx( x, y - 10, 13 );
    instance_destroy();
    exit;
    player_id.killarticles = false;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}


var grav_on = true;
var grav_speed = .1;
var grav_max = 9;

if (grav_on){
	if (free && vsp >= -grav_max){
		vsp += grav_speed; //gravity, increases vsp
	}
}

//State 0: idle

if (state == 0){
	can_get_hit = false;
	idle_anim_rate = 999;
	image_index = 0;
    //exist
    if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
	    if (player_attack == AT_DSPECIAL){ //go to preparation
	    	if (player_window == 2){
	    		if (player_window_timer == 2){
	    			if (player_id.gba_alt){
	    				sound_play(sound_get("pot_ready_gba"));
	    			}
	    			else{
	    				sound_play(sound_get("pot_ready"));
	    			}
	    			state = 1;
	    			state_timer = 0;
	    			ball_type = 0;
	    		}
	    	}
	    }
	    else if (player_attack == AT_USPECIAL){ //go to preparation
	    	if (player_window == 2){
	    		if (player_window_timer == 1){
	    			if (player_id.gba_alt){
	    				sound_play(sound_get("pot_ready_gba"));
	    			}
	    			else{
	    				sound_play(sound_get("pot_ready"));
	    			}
	    			state = 1;
	    			state_timer = 0;
	    			ball_type = 1;
	    		}
	    	}
	    }
    }
}



//State 1: startup

if (state == 1){
	can_get_hit = true;
	idle_anim_rate = 999;
	image_index = 1;
    if (state_timer == 32 + delay){ //shoot!
	    if (player_id.gba_alt){
	    	sound_play(sound_get("pot_hit_gba"));
	    }
	    else{
	    	sound_play(sound_get("pot_hit"));
	    }
    	state = 3;
    	state_timer = 0;
    }
}



//State 2: Dying

if (state == 2){
	can_get_hit = false;
    if (state_timer == die_time){
    	spawn_hit_fx( x, y - 10, 13 );
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//State 3: active

if (state == 3){
	can_get_hit = false;
	idle_anim_rate = 999;
	image_index = 2;
	if (state_timer == 0){
		if (ball_type == 0){ //low
			baseball = create_hitbox(AT_DSPECIAL, 1, x, y - 16);
		//spawn hitbox
		}
		else{ //high
			baseball = create_hitbox(AT_DSPECIAL, 2, x, y - 16);
		}
		times_total++;
	}
	if (state_timer == 4){
		if (times_total == max_times){
			spawn_hit_fx( x, y - 10, 13 );
			with (player_id){
				move_cooldown[AT_DSPECIAL] = 125;
			}
			instance_destroy(); //destroy self
			exit;
		}
		else{
			ball_type = 0; //reset to idle
			state = 0;
			state_timer = 0;
		}
		
	}
	
	if (state_timer > 4 && times_added != 0){ //rune thing
		if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
		    if (player_attack == AT_DSPECIAL){ //go to preparation
		    	if (player_window == 2){
		    		if (player_window_timer == 2){
		    			if (player_id.gba_alt){
		    				sound_play(sound_get("pot_ready_gba"));
		    			}
		    			else{
		    				sound_play(sound_get("pot_ready"));
		    			}
		    			state = 1;
		    			state_timer = 0;
		    			ball_type = 0;
		    		}
		    	}
		    }
		    else if (player_attack == AT_USPECIAL){ //go to preparation
		    	if (player_window == 2){
		    		if (player_window_timer == 1){
		    			if (player_id.gba_alt){
		    				sound_play(sound_get("pot_ready_gba"));
		    			}
		    			else{
		    				sound_play(sound_get("pot_ready"));
		    			}
		    			state = 1;
		    			state_timer = 0;
		    			ball_type = 1;
		    		}
		    	}
		    }
		}
    }
}



//State 4

if (state == 4){
	//Put something here if you want
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

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("pot");
        animation_type = 3;
        break;
    case 1:
        new_sprite = sprite_get("pot");
        animation_type = 3;
        break;
    case 2:
        new_sprite = sprite_get("pot_hurt");
        animation_type = 3;
        break;
    case 3:
        new_sprite = sprite_get("pot");
        animation_type = 3;
        break;
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("your_sprite4")
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
if (y < 0 || y > room_height && state == 0){
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width && state == 0){
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;