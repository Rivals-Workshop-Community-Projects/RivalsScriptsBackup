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



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}


with (player_id){
	move_cooldown[AT_DSPECIAL] = 6;
}


//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	instance_destroy();
	exit;
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
	if (free){
		if (vsp < fall_max){
			vsp = vsp + grav_zoom;
		}
		else{
			vsp = fall_max;
		}
	}
}



//State 0: Freshly spawned

if (state == 0){
    
    image_index = 0;
    
    with (asset_get("pHitBox")){
    	if (place_meeting(x, y, other)){
	    	if (player == other.player_id.player){
	    		other.state = 1;
	    		other.state_timer = 0;
	    		other.mode_thing = 0;
	    		sound_play(sound_effect);
	    		spawn_hit_fx( x + (spr_dir*hit_effect_x), y + hit_effect_y, hit_effect );
	    		has_hit = true;
	    	}
	    	else{
	    		if (type == 1){
		    		other.mode_thing = 1;
		    		other.state = 1;
		    		other.state_timer = 0;
		    		other.hit_button_player = player;
		    		sound_play(sound_effect);
		    		spawn_hit_fx( x + (spr_dir*hit_effect_x), y + hit_effect_y, hit_effect );
		    		has_hit = true;
	    		}
	    	}
    	}
    }
    
}



//State 1: Idle

if (state == 1){
    //pressed
    
    image_index = 1;
    
    
    if (state_timer == 0){
    	sound_play(sound_get("button"));
    }
    
    
    if (state_timer == chungus || hitstun_check){
    	
    	if (rune_chungus){
    		create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-5));
    		sound_play(asset_get("sfx_swipe_weak1"));
    		spawn_hit_fx( x + (spr_dir*2), y - 10, 196 );
    	}
    	
    	sound_play(sound_get("amongus_vote"));
    	spawn_hit_fx( x + (spr_dir*2), y - 10, 197 );
    	
    	with (player_id){
			move_cooldown[AT_DSPECIAL] = other.cooldown_var;
		}
    	
    	instance_destroy();
    	exit;
    }
    
    var variable_thingy = player_id;
    
    var additional_speed = .6;
	var fast_range = 20;
	var pull_offset = 0;
    
    
    if (state_timer < chungus){
    	
	    with (asset_get("oPlayer")){
	    	switch (other.mode_thing){
	    		case 0: //normal
			    	if (player != other.player_id.player){
			    		if (distance_to_object(other) < other.help){
				    		if ((hitstop == 0 && hitpause == 0 && invince_time <= 0 && (state == PS_HITSTUN && state_timer > 12 || state != PS_HITSTUN)) && state != PS_AIR_DODGE && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_GROUND && state != PS_DEAD && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_WALL_TECH && state != PS_RESPAWN && invincible == false && super_armor == false){
				    			vsp = 0;
				    			hsp = 0;
				    			has_walljump = true;
							    x = lerp(floor(x), floor(other.x), other.pull_strength+(point_distance(floor(x),floor(y),floor(other.x),floor(other.y) - pull_offset) < fast_range)*additional_speed);
							    y = lerp(floor(y), floor(other.y) - pull_offset, other.pull_strength+(point_distance(floor(x),floor(y),floor(other.x),floor(other.y) - pull_offset) < fast_range)*additional_speed);
				    		}
			    		}
			    	}
			    break;
			    
			    
			    case 1: //someone else
			    	if (player != other.hit_button_player){
			    		if (distance_to_object(other) < other.help){
				    		if ((hitstop == 0 && hitpause == 0 && invince_time <= 0 && (state == PS_HITSTUN && state_timer > 12 || state != PS_HITSTUN)) && state != PS_AIR_DODGE && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_GROUND && state != PS_DEAD && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_WALL_TECH && state != PS_RESPAWN && invincible == false && super_armor == false){
				    			vsp = 0;
				    			hsp = 0;
				    			has_walljump = true;
							    x = lerp(floor(x), floor(other.x), other.pull_strength+(point_distance(floor(x),floor(y),floor(other.x),floor(other.y) - pull_offset) < fast_range)*additional_speed);
							    y = lerp(floor(y), floor(other.y) - pull_offset, other.pull_strength+(point_distance(floor(x),floor(y),floor(other.x),floor(other.y) - pull_offset) < fast_range)*additional_speed);
				    		}
			    		}
			    	}
			    break;
	    	}  
	    }
    }
	  
}



//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//State 3

if (state == 3){
	//Put something here if you want
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
        new_sprite = sprite_get("button");
        animation_type = 3;
        break;
    case 1:
        new_sprite = sprite_get("button");
        animation_type = 3;
        break;
    case 2:
        new_sprite = sprite_get("button");
        animation_type = 3;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("button")
    	animation_type = 3;
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




//destroy
if (y < 0 || y > room_height){
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
    exit;
}



//Make time progress
state_timer++;