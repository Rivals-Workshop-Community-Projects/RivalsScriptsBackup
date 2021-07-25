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

lifetime++;

if (replacedcount > maxarticles){
    instance_destroy();
    exit;
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	die = true;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}



var grav_speed = .5;
//gravity
if (type == 0){
	if (free && vsp < 9){
		vsp = vsp + grav_speed;
	}
}
else if (type == 1){
	//do things
}




if (!free){
	
	if (sfx_played == false){
		sound_play (asset_get("sfx_land")); //landing sfx
		sfx_played = true;
	}
	
	vsp = 0;
	
	var ground_friction = .65;
	
	if (!pushing){
		switch (spr_dir){
			case 1:
				if (hsp > 0){
					hsp -= ground_friction;
				}
				if (hsp < 0){
					hsp = 0;
				}
			break;
			case -1:
				if (hsp < 0){
					hsp += ground_friction;
				}
				if (hsp > 0){
					hsp = 0;
				}
			break;
		}
	}
	
}


if (free){
	
	sfx_played = false;
	
	var air_friction = .17;
	
	switch (spr_dir){
		case 1:
			if (hsp > 0){
				hsp -= air_friction;
			}
			if (hsp < 0){
				hsp += air_friction;
			}
		break;
		case -1:
			if (hsp < 0){
				hsp += air_friction;
			}
			if (hsp > 0){
				hsp -= air_friction;
			}
		break;
	}
    
}


if (die){
	state = 2;
	state_timer = 0;
}


//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
	if (player_id.attack == AT_DSPECIAL && player_id.window == 2 && player_id.window_timer == 1 && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
		if (!free || player_id.runeM){
			state = 1;
			state_timer = 0;
		}
	}
	if (player_id.attack == AT_FSPECIAL && player_id.window == 1 && player_id.window_timer == 8 && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
		state = 3;
		state_timer = 0;
	}
}



//state 1: down special rocket

if (state == 1){
	pushing = false;
    if (state_timer == 1){
    	vsp = -14;
    }
    if (state_timer == 14){
    	state = 0;
    	state_timer = 0;
    }
}



//State 2: Dying

if (state == 2){
    player_id.killarticles = false;
    instance_destroy();
    exit;
}



//state 3: forward special """throw"""

if (state == 3){
	pushing = false;
	vsp = 0;
	if (state_timer == 1){
		spr_dir = player_id.spr_dir;
	}
	if (state_timer > 6){
		pushed = false;
		hsp = 8*spr_dir;
	}
	if (state_timer == 18){
		state = 0;
		state_timer = 0;
	}
}



//State 4 (hitstun)

if (state == 4){
	var hitstun = 30;
	if (state_timer == 0){
		hp--;
	}
	if (state_timer == hitstun){
		state = 0;
		state_timer = 0;
	}
	if (hp == 0){
		die = true;
	}
	switch (hp){
		case 2:
			new_sprite = sprite_get("box_ow");
		break;
		case 1:
			new_sprite = sprite_get("box_ow_2");
		break;
	}
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