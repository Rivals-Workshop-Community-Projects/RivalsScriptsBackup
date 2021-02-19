
//MORE STOLEN HIME CODE

if (attack == AT_USPECIAL) {
	can_wall_jump = true;
    if (window == 1) {
    	if !joy_pad_idle {
        	direc = joy_dir;
        } else direc = 180*(spr_dir == -1);
    }
    if (window == 2) {
        if (window_timer == 1) {
            hook = instance_create(x, y,"obj_article2");
        }
        
        if (window_timer = 1) {
        	last_timer = window_timer;
        	sound_play(sound_get("Briggs_Chain"));
        }
        
        if (window_timer = last_timer + 4 and instance_exists(hook)) {
        	sound_play(sound_get("Briggs_Chain"));
        	last_timer = window_timer;
        }
        
    }
    if (window == 4 && hitpause == 0) {
        djumps = 0;
        can_jump = true;
        
        if (window_timer > 4 and !was_parried) {
        	can_attack = true;
        	can_special = true;
        }
        
        if (window_timer = 1) {
        	last_timer = window_timer;
        	sound_play(asset_get("sfx_ice_chain"));
        }
        
        if (window_timer = last_timer + 4 and instance_exists(hook)) {
        	sound_play(asset_get("sfx_ice_chain"));
        	last_timer = window_timer;
        }
    }
} else if (instance_exists(hook)) {
	instance_destroy(hook);
	
}


//TAUNT TO GAIN SIG
if (attack == AT_TAUNT) {
	if (window == 1 and window_timer == 1) {
		sound_play(sound_get("Briggs_Chuck1"));
	}
	if (window == 4 and window_timer == 12) {
		if (GAUGE_SIG_CURRENT = 25 and GAUGE_UNLOCK != 1) { GAUGE_UNLOCK = 1;  sound_play( asset_get("sfx_shovel_brandish") ); } 
		else if (GAUGE_SIG_CURRENT = 50 and GAUGE_UNLOCK != 2) {GAUGE_UNLOCK = 2; sound_play( asset_get("sfx_shovel_brandish") ); }
		else if (GAUGE_SIG_CURRENT = 75 and GAUGE_UNLOCK != 3) {GAUGE_UNLOCK = 3; sound_play( asset_get("sfx_shovel_brandish") ); }
		
	}
	
	if (get_training_cpu_action() != CPU_FIGHT and up_down) {
		if(GAUGE_UNLOCK = 3 and lock3_frame = 7){GAUGE_SIG_CURRENT = 100; sound_play( asset_get("sfx_shovel_brandish"));}
		else if(GAUGE_UNLOCK = 2 and lock2_frame = 7){GAUGE_UNLOCK = 3; GAUGE_SIG_CURRENT = 75;  sound_play( asset_get("sfx_shovel_brandish"));}
		else if(GAUGE_UNLOCK = 1 and lock1_frame = 7){GAUGE_UNLOCK = 2; GAUGE_SIG_CURRENT = 50;  sound_play( asset_get("sfx_shovel_brandish"));}
		else if(GAUGE_UNLOCK = 0){GAUGE_UNLOCK = 1; GAUGE_SIG_CURRENT = 25;  sound_play( asset_get("sfx_shovel_brandish"));}
	}
}
//NSPECIAL BRIGGS SAYS FUCK? (RANDOM ATTACK LIKE G&W)
if (attack == AT_NSPECIAL) {
	if (window == 1 and window_timer == 8) { 
		
		//roll random number to set to next window
		temp2 = random_func_2(0, 6, true);
		temp2 += 2;
		//temp2 += 1;
		temp2 = round(temp2);
		
		if (spr_dir = -1) {
			temp2 += 6;
		}
		
		window = temp2;
		window_timer = 0;
		move_cooldown[AT_NSPECIAL] = 80; //60
	}
	if (window >= 2 and window <= 13) {
		if (window_timer = 16) {
			window = 14;
			window_timer = 0;
		}
	}
}


//EXTRA_1 GREATER PYROBLAST (USES ALL SIG)
if (attack == AT_EXTRA_2) {
	 can_fast_fall = false;
	 can_move = false;
	if (window == 1 and window_timer = 1) {
		if (GAUGE_SIG_CURRENT == GAUGE_SIG_MAX) {
			GAUGE_SIG_CURRENT = 0;
			GAUGE_UNLOCK = 0;
		}
	}
}


//FSPECIAL SHOTGUN (WHE FIRED USES 1 AMMO. WHEN EMPTY RELOADS 2 BULLETS INTO GUN)
if (attack = AT_FSPECIAL) {
	if (window == 1 and AMMO_CURRENT <= 0) {
		//RELOADING
		set_num_hitboxes( AT_FSPECIAL, 0);
		set_attack_value( AT_FSPECIAL, AG_NUM_WINDOWS, 7);
	} else {
		//SHOOTING
		set_num_hitboxes( AT_FSPECIAL, 3 );
		set_attack_value( AT_FSPECIAL, AG_NUM_WINDOWS, 5);
	}
	
	if ( window == 2 and window_timer == 9 ) {
		if (AMMO_CURRENT > 0) {
			AMMO_CURRENT -= 1;
			can_shotgun_twice = true;
		} else {
			window = 7;
			window_timer = 0;
			can_shotgun_twice = false;
		}
	}
	if (window == 4) {
		//CAN WALL JUMP AND SHOOT AGAIN DURING RECOIL
		can_wall_jump = true;
		if (special_pressed and (left_down or right_down)) {
			if (AMMO_CURRENT > 0 and can_shotgun_twice = true) {
				AMMO_CURRENT -= 1;
				window = 3;
				window_timer = 0;
				hsp = -12 * spr_dir;
			}
		}
	}
	//RELOADING
	if (window == 7 and window_timer = 16) {
		AMMO_CURRENT = AMMO_MAX;
	}
	
}

//BAIR
if (attack == AT_BAIR) {
	if (window == 3) {
		can_wall_jump = true;
		can_special = true;
	}
}

//DAIR LANDNIG CODE
if (attack == AT_DAIR) {
    can_fast_fall = false;
    if (window == 3) {
		if (window_timer >= 4) {
			can_wall_jump = true;
		}
        if (free != true) {
			window = 4;
			window_timer = 0;
        }
    }
}

//JAB TILT CANCELING
if (attack == AT_JAB) {
	was_parried = false;
	if (window == 3 and window_timer >= 3) {
		can_attack = true;
		can_strong = true;
	}
}

//DASH ATTACK HOLD TO KEEP GOING
if (attack == AT_DATTACK) {
	if (window == 2) {
		if (!attack_down or was_parried){
			window = 3;
			window_timer = 0;
			attack_end();
			move_cooldown[AT_DATTACK] = 24;
		} else if (window_timer = 12) {
			window_timer = 0;
			window = 2;
			attack_end();
			
		}
	}
}

//FSTRONG (BUCKET OF PYRO BLAST)
//chance to set briggs on fire when used
if (attack == AT_FSTRONG) {
	if (window == 3) {
		if (window_timer == 1) {
			temp = random_func(1, 20, true);
			
			if (temp <= 1) {
				if (spr_dir = 1) {
					spawn_hit_fx( x + 6, y - 10, 3 );
				} else {
					spawn_hit_fx( x - 6, y - 10, 3 );
				}
				sound_play( asset_get("sfx_burnapplied") ) 
				take_damage(player, player, 4);
			}
			
		}
	}
}

if (attack == AT_DSTRONG) {
	if (window == 3 and window_timer == 2) {
		if (!has_hit_player) {
			window = 8;
			
		}
	}
}
//DSTRONG (CHOPPING BLOCK) COMMAND GRAB CODE
if (attack == AT_DSTRONG && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (((window == 2) or (window == 3) or (window == 4)) && grabbedid != noone){
	grabbedid.ungrab = 0;
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        grabbedid.x = x + spr_dir * 70; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        grabbedid.y = y; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 7000;
        grabbedid.state = PS_WRAPPED;
        if(special_pressed){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            grabbedid.state = PS_TUMBLE;
            grabbedid.x = x;
            grabbedid.y = y;
            grabbedid = noone;
        }
    }
}

//HOLD USTRONG TO STAY ON CHAIR
if (attack == AT_USTRONG) {
	if (window == 3 and window_timer = 18) {
		if ((strong_down or up_strong_down) and !was_parried) {
			window_timer = 0;
		}
	}
}

//D SPECIAL SPAWNS A CAT
if ((attack == AT_DSPECIAL or AT_DSPECIAL_AIR) and window_timer == 1){ //THIS NEEDS TO CHECK IF THERE ARE ALREADY 3 CAT INSTANCED
	//check if there are 3 cats on stage
	
	if (num_cats < GAUGE_UNLOCK + 1) {
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
		set_num_hitboxes(AT_DSPECIAL, 2);
		set_num_hitboxes(AT_DSPECIAL_AIR, 2);
		cat_boost = true;
	} else {
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 0);
		set_num_hitboxes(AT_DSPECIAL, 1);
		set_num_hitboxes(AT_DSPECIAL_AIR, 1);
		cat_boost = false;
	}
	
	if (cat_boost == true) {
		//air boost
		cat_boost = false;
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -8);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
		
	} else {
		//no air boost
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
		
	}
}

if (attack == AT_DSPECIAL_AIR and window == 3 and window_timer == 12) {
	move_cooldown[AT_DSPECIAL_AIR] = 20;
}


