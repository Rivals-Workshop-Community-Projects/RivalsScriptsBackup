//Shell
state_timer++;

//State 0, Be held
if(state == 0){
	with(asset_get("oPlayer")){
		if(other.player == player){
			if(window == 1){
				//Is there something I need to put in here
			}
			else if(window == 2){
				other.state = 1;
				other.state_timer = 15;
				other.image_index = 1;
			} else{
				other.state = 5;
				other.state_timer = 0;
			}
		}
	}
}

//State 1, stay in one spot, calculate next movement, detect if hit
if(state == 1){
	var hitboxhit = noone;
	with (pHitBox){
		if (place_meeting(x,y,other) and (other.id != player_id) and (attack != AT_NSPECIAL)) {
			if(other.hitconnect == false){
				spawn_hit_fx(x, y, hit_effect);
			}
			if((other.player == player) and (attack == AT_DSPECIAL or attack == AT_USPECIAL or attack == AT_FSPECIAL)){
				with(other){
		     		//print_debug("shit");
		     		give_shelled = true;
				}
			}
			with(other){
				if (hitconnect == false){
		            sound_play(other.sound_effect);
		            hitconnect = true;
		        }
		        hitplayer = other.player;
		        hitstrength = other.kb_value;
		        hitpausing = other.hitpause;
		        //print_debug(string(hitpausing));
		        hitboxhit = other.id;
		     	hitangle = get_hitbox_angle(hitboxhit);
		    	state = 2;
		    	state_timer = 0;
		    	if(shell_tilt < 5){
		    		shell_tilt++;
		    	}
		    	if(shell_tilt == 4){
		     		shell_tilt = 0;
		      	}
		      	futurehsp = hitstrength*dcos(hitangle)*1.5;
    			futurevsp = -hitstrength*dsin(hitangle)*2;
		    	other.hitpause = true;
		   		if(other.type != 2){
			   		playerhitpause = true;
		   		}
			}
		}
	}
	if(state_timer == 15 and free){
		state = 2;
		if(shell_tilt < 5){
			shell_tilt++;
		}
		if(shell_tilt == 4){
		 	shell_tilt = 0;
		 }
		if(futurevsp < 7){
			futurevsp = lerp(futurevsp, 7, 0.4)
		}
		futurehsp = lerp(futurehsp, 0, 0.2)
	}
	if(!free){
		image_index = 1;
		death_timer++;
		if(death_timer > 60){
			state = 5;
			death_timer = 0;
		}
	}
}

//State 2, move to new spot
if(state == 2){
	if(state_timer >= hitpausing){
		x = round(x + futurehsp * 5);
		y = round(y + futurevsp * 5);
		if(shell_tilt == 0 or shell_tilt == 2){
			image_index = 1;
		} else if (shell_tilt == 1){
			image_index = 2;
		} else if (shell_tilt == 3){
			image_index = 3;
		}
		state = 1;
		state_timer = 0;
		death_timer = 0;
		create_hitbox( AT_NSPECIAL, 1, x - 10*spr_dir, y );
	}
}

//State 3, not needed

//State 4, react to Maribel's special moves
if(state == 4){
	image_index = 4;
	if(state_timer >= 60){
		transparent_timer++;
		death_timer++
		if(transparent_timer == transparent_change){
			transparent_timer = 0;
			if(image_alpha == 0.5){
				image_alpha = 0;
			}else{
				image_alpha = 0.5;
			}
		}
		if(death_timer == 60){
			instance_destroy();
			exit;
		}
	}
}

//State 5, die
if(state == 5){
	death_timer++;
	image_index = 1;
	transparent_timer++;
	if(transparent_timer == transparent_change){
		transparent_timer = 0;
		if(image_alpha == 0.5){
			image_alpha = 0;
		}else{
			image_alpha = 0.5;
		}
	}
	if(death_timer == 60){
		instance_destroy();
		exit;
	}
}

if(y > room_height + 500){
	instance_destroy();
	exit;
}

if(give_shelled = true){
	with(oPlayer){
		if(id = other.player_id){
			shelled = true;
			other.give_shelled = false;
			other.state = 4;
		}
	}
}
//Clairen plasma field will destroy the article

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
	if(state < 4){
		state = 5;
		state_timer = 0;
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256)
	}
}

if (!place_meeting(x, y, pHitBox)){//To make sounds and effects play on 1 frame
    hitconnect = false;
}
if(playerhitpause == true){//Make hitpause happen in a way that doesn't cause errors because of type.
	with (asset_get("oPlayer")){
		if(attack == AT_UTILT && url == CH_ELLIANA){
			playerhitpause = false;//Elliana's utilt on detecting too much hitpause crashes the game?? So this nullifies that.
		}
		else{
		    if (player == other.hitplayer){
		        has_hit = true; //means it hit something, but not a player
		        hitpause = true; //means is in hitpause
		        hitstop = other.hitpausing; //current hitpause frames
		        hitstop_full = other.hitpausing; //hitpause initial value (you'd have it the same as hitstop probably)
		        old_hsp = hsp; //important; this is how hitpause pauses the player in place
		        old_vsp = vsp; //it stores the velocity in there and resumes it later
		        //sound_play(asset_get("sfx_birdclap"));
		    }
		}
	}
	playerhitpause = false;
}