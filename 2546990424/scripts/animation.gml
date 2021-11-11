//Makes Maverick DJump animation play clock or anti-clockwise
if (state == PS_DOUBLE_JUMP && state_timer == 7){
	if ((spr_dir == 1 && hsp >= 2) || (spr_dir == -1 && hsp <= 2) || hsp == 0){
		djump = 1;
	}
	if ((spr_dir == -1 && hsp > 2) || (spr_dir == 1 && hsp < 2) && hsp != 0){
		djump = -1;
	}
}
if (state == PS_DOUBLE_JUMP){
	if (djump == 1){
		sprite_index = sprite_get("doublejump");
	}
	if (djump == -1){
		sprite_index = sprite_get("doublejump2");
	}
}

//HUD Icon goes back to normal
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	char_height = 60;
}

//UTilt SFX and VFX
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_UTILT
&& window == 2 && window_timer == 0 && !hitpause){
	spawn_hit_fx( x, y-90, clap_vfx);
    sound_play(asset_get("sfx_birdclap"));
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL
&& window == 4 && window_timer == 0 && turbine_cont >= 70){
	turbine_gust_cont = 1;
	sound_play(asset_get("sfx_bird_nspecial"));
}

// Grabbing state
if (cargo_grab == true && grab_timer >= 0){
	can_wall_jump = false;
	grab_par = grab_timer%2;
	grab_tres = grab_timer%3;
		if (grab_timer > 15.5){
			hit_player_obj.x = x+40*spr_dir;
			hit_player_obj.y = y;
			
		}
	hit_player_obj.spr_dir = spr_dir;
	hit_player_obj.hitstop = 1;
	if (free){
		if (grab_timer > 15){
			grab_timer -= 1;	
		}
		else {
			grab_timer -=.5;
		}
	}
	else {
		grab_timer -=.5;
	}
	if (grab_timer <= 15.5){
		if (grab_par == 1){
			hit_player_obj.x = x-35*spr_dir;
		}
		if (grab_par == 0){
			hit_player_obj.x = x-45*spr_dir;
			
		}
		if (grab_tres == 0){
			hit_player_obj.y = y-35;
		}
		if (grab_tres == 1){
			hit_player_obj.y = y-30;
		}
		if (grab_tres == 2){
			hit_player_obj.y = y-25;
		}
	}
	
	hit_player_obj.depth = -6;
	
	initial_dash_speed  = 3;
	dash_speed          = 3;
	dash_turn_time      = 6;
	depth = -1;
	
	if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && grab_timer > 15.5){
		hit_player_obj.x = x-40*spr_dir;
		hit_player_obj.y = y-30;
	}
		
	if (state == PS_WALL_JUMP){
		cargo_grab = false;
	}
	
	
	// Moving opponent when turning
	if (state == PS_WALK_TURN || state == PS_DASH_TURN && grab_timer > 15.5){
		if (state_timer < 3){
			hit_player_obj.x = x+40*spr_dir;
			hit_player_obj.y = y-20;
		}
		if (state_timer == 3){
			hit_player_obj.x = x;
			hit_player_obj.y = y-20;
		}
		if (state_timer > 3){
			hit_player_obj.x = x-40*spr_dir;
			hit_player_obj.y = y-20;
		}
	}
	
	
	djumps = 1;
	
	
	if (state == PS_CROUCH){
		state = PS_IDLE;
	}
	
	// Moving opponent when getting ready to launch
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		if (attack == AT_NSPECIAL_2){
			if (window == 1){
			hit_player_obj.x = x-40*spr_dir;
			hit_player_obj.y = y-25;	
		}
			if (window == 2){
			if (cargo_up == false && cargo_down == false){
				hit_player_obj.x = x+60*spr_dir;
				hit_player_obj.y = y;		
			}
			if (cargo_up == true && cargo_down == false) {
				hit_player_obj.x = x+1*spr_dir;
				hit_player_obj.y = y-60;		
			}
			if (cargo_up == false && cargo_down == true) {
				hit_player_obj.x = x+1*spr_dir;
				hit_player_obj.y = y+20;		
			}
		}	
		}
		if (attack == AT_TAUNT && grab_timer > 15){
			if (window == 1 && window_timer < 15){
				hit_player_obj.x = x-30*spr_dir;
				hit_player_obj.y = y-30;	
			}
			else {
				hit_player_obj.x = x-40*spr_dir;
				hit_player_obj.y = y-30;
			}
			
		}
		
	}
	if(has_hit_player &&  attack != AT_NSPECIAL){
		cargo_grab = false;
	}
	
	if (shield_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		cargo_grab = false;
		move_cooldown[AT_NSPECIAL] = 60;
	}
	
	if (y > get_stage_data(SD_Y_POS) + 230){
	    cargo_grab = false;
	}
}

//Grab stuff, mostly changing the sprites when using it
if (cargo_grab == true){
    if (state == PS_IDLE){
        sprite_index = sprite_get("idle_hold");
        if (state_timer > 50){
            state_timer = 0;
        }
    }
    
    if (state == PS_WALK){
        sprite_index = sprite_get("walk_hold");
        if (state_timer > 58){
            state_timer = 0;
        }
    }
    if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP){
        sprite_index = sprite_get("walk_hold");
        if (state_timer > 40){
            state_timer = 0;
        }
    }
    if (state == PS_WALK_TURN || state == PS_DASH_TURN){
        sprite_index = sprite_get("walkturn_hold");
    }
    if (state == PS_JUMPSQUAT){
        sprite_index = sprite_get("jumpstart_hold");
    }
    if (state == PS_FIRST_JUMP || state == PS_IDLE_AIR){
        sprite_index = sprite_get("jump_hold");
    }
    if (state == PS_LAND){
        sprite_index = sprite_get("land_hold");
    }
    if (state == PS_ATTACK_GROUND && attack == AT_TAUNT){
        sprite_index = sprite_get("taunt_hold");
        hurtboxID.sprite_index = sprite_get("taunt_hold_hurt");
    }
}
