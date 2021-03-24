//B - Reversals
//only DSPECIAL can be b-reversed out of a consecutive attack cancel.
if (attack == AT_DSPECIAL || ((attack == AT_FSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL) && peacock_consecutive_cancelled_attacks < 0 )) {
    trigger_b_reverse();
}

		fs_force_fs = false;
/*
	if (attack == AT_USPECIAL) {
	  if (window == 1){
        hsp = 0;
        vsp = 0;
        can_move = false;
}
        if (window == 2){
        if(!joy_pad_idle){
            teleport_sp = -80;
            vsp = (dsin(joy_dir)*teleport_sp);
            hsp = (dcos(joy_dir)*-teleport_sp);
        }
    }
    if (window == 3){
        hsp = 0;
        vsp = 0;
        can_wall_jump = true;
    }
    if (window == 3 && window_timer == 10 ) {
    	if (free) {
    		state = PS_PRATFALL;
    	}
    }
	}
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }

	if (attack == AT_USPECIAL) {
	  if (window == 1){
        hsp = 0;
        vsp = 0;
        can_move = false;
}
        if (window == 2){
        if(!joy_pad_idle){
            teleport_sp = -80;
            vsp = (dsin(joy_dir)*teleport_sp);
            hsp = (dcos(joy_dir)*-teleport_sp);
        }
    }
    if (window == 3){
        hsp = 0;
        vsp = 0;
        can_wall_jump = true;
    }
    if (window == 3 && window_timer == 10 ) {
    	if (free) {
    		state = PS_PRATFALL;
    	}
    }
	}
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }

	if (attack == AT_DATTACK) {
move_cooldown[AT_DATTACK] = 12;
    }
*/

//normal and special cancels
var normal_cancel_value = 0;
switch (attack) {
    case AT_FTILT:
        move_cooldown[AT_FTILT] = 10; //extra delay for the projectile
        
    case AT_DTILT:
    	move_cooldown[AT_DTILT] = 2;
        move_cooldown[AT_JAB] = 2;
        move_cooldown[AT_UTILT] = 2;
    
    case AT_FTHROW: //jab3
    	move_cooldown[AT_UTILT] = 2;
    
    case AT_JAB:
        if (attack == AT_JAB && window == 4) { has_hit = false; has_hit_player = false; }
        move_cooldown[AT_JAB] = 2;
        //reset hit_player when starting a new jab
		if (attack == AT_JAB && (window == 4 || window == 7)) {
			has_hit_player = false;
		}

    case AT_UTILT:
        //don't allow cancels on parry, or while using ground normals in the air for some reason.
        if (!was_parried && !free) {
            //allow special cancels, if not currently in late endlag frames.
            if (window < get_attack_value(attack, AG_NUM_WINDOWS) || window_timer <= 5) { // get_window_value(attack, window, AG_WINDOW_LENGTH) / 3 ) {
	            can_special = 1;
	            //only allow normal and strong cancels on hit, and not during hitpause.
	            if (has_hit_player && !hitpause) {
	                can_attack = 1;
	                can_strong = 1;
	                can_ustrong = 1;
	            }
            }
        }
                //save facing direction, for ground uspecial
        peacock_uspecial_attack_cancel_dir = spr_dir;
    break;
    
    case AT_DAIR:
    	move_cooldown[AT_DAIR] = 8;
    	if (!hitpause && window == 2 && !down_hard_pressed && !fast_falling) vsp = min(vsp, 4);
    	
    	peacock_consecutive_cancelled_attacks = 0;
    break;
    
    case AT_UAIR:
	
		if (window == 2 && window_timer <= 10) {
			//halt movement
			can_move = false;
			hsp *= 0.8;
			
			//spawn avery
			if (window_timer == 1 && !fast_falling) {
				
				var avery_exists = 0;
				with (obj_article2) {
					if (player_id == other.id) { avery_exists++; break; }
				}
				if (!avery_exists) {
					//instance_create(x, y - 80, "obj_article2").spr_dir = spr_dir;
					instance_create(x + spr_dir * 28, y - 74, "obj_article2").spr_dir = spr_dir;	
				}
				
			}
		}
		//else if (window == 3 && window_timer <= 1) {
			//make the momentum pause a little less punishing
		//	hsp = right_down - left_down;
		//}
		peacock_consecutive_cancelled_attacks = 0;
	break;
	
	default:
		peacock_consecutive_cancelled_attacks = 0;
	break;
}

if (hitpause) exit;

//count number of consecutively-cancelled attacks
if (state_timer == 1) {
    peacock_consecutive_cancelled_attacks++;
}

//normal cancels
switch (attack) {
	
	
	case AT_JAB:
		if (window_timer > 1) break;
	switch (window) {
		case 4:
			//reset attack buffer, to stop jab3 happening automatically
			clear_button_buffer(PC_ATTACK_PRESSED);
		break;
		case 7:
			//transition to jab3
			destroy_hitboxes();
			attack_end();
			set_attack(AT_FTHROW);
			window_timer = 2;
		break;
	}
	break;
	
	/*
	case AT_NAIR:
		switch (window) {
			case 2:
				//do nothing
			break;
			case 3:
			//case 5:
			//case 6:
				//allow endlag cancels if the attack hit
				if (has_hit && !was_parried) {
					can_attack = true;
					can_special = true;
					move_cooldown[AT_NAIR] = 2;
				}
				else {
					can_attack = false;
					can_special = false;
				}
			break;
			
			case 4:
				//reset 'has_hit'
				if (window_timer == 1) {
					if (has_hit) {
						vsp = min(vsp, -0.5);
					}
					
					has_hit = false;
					has_hit_player = false;
				}
			break;
		}
	break;
		*/
	case AT_NAIR:
		switch (window) {
			case 1:
				peacock_hit_with_nair = false; //gets set to true in hit_player.gml
			case 2:
				//do nothing
			break;
			case 3:
				peacock_used_nair = true;
			//case 5:
			//case 6:
				//allow endlag cancels if the attack hit
				if (has_hit && !was_parried) {
					can_attack = true;
					can_special = true;
					//move_cooldown[AT_NAIR] = 2;
				}
				else {
					can_attack = false;
					can_special = false;
				}
			break;
			
			case 4:
				//reset 'has_hit'
				if (window_timer == 1) {
					if (has_hit) {
						vsp = min(vsp, -0.5);
					}
					
					has_hit = false;
					has_hit_player = false;
				}
			break;
		}
	break;
		
	case AT_NTHROW: //nair2
		if (window == 1 && window_timer == 1 && peacock_hit_with_nair) {
			vsp = min(vsp, -0.5);
		}
	break;
	
    case AT_DTILT:
        //jump cancel
        if (has_hit_player && jump_down && !was_parried && (window >= 3 || (window == 2 && window_timer >= 4))) {
            set_state(PS_JUMPSQUAT);
        }
    break;
	
	case AT_FAIR:
		//can't move during active frames
		can_move = window != 2;
		//can't fastfall during startup or active frames
		can_fast_fall = window > 2;
		
		//fx
		if (window == 1 && is_end_of_window()) {
			spawn_hit_fx(x + 20 * spr_dir, y - 48 + vsp, peacock_fx_fair_shot);
		}
	break;
	
	//Final Smash
	case 49:
	    fs_force_fs = false;
		if (window = 2 && window_timer == 6 || window == 3 && state_timer <= 90) {
			spawn_hit_fx(x + 40 * spr_dir, y - 80, peacock_fx_fsmash_beam);
		
		}
		
		if (state_timer == 100){
			window = 4;
			window_timer = 0;
		}
		
		if(window = 5 && window_timer = 1){
			sound_play(sound_get("fsmash_shot"));
		}
		
		if (state_timer == 220){
			window = 6;
			window_timer = 0;
		}

    if window <= 2{
    	time_freeze_ticks = 1;
    }
    can_fast_fall = false;
    can_move = false;

	break;
	
	
	case AT_NSPECIAL:
		if (window >= 2) move_cooldown[AT_NSPECIAL] = 60;
	break;
	
	case AT_FSPECIAL:
		can_move = 0;
		switch (window) {
			case 1:
				peacock_fspecial_shots = 3;
			break;
			case 3:
				if (window_timer == 1) {
					var bullet = create_hitbox(attack, 1, x + 58 * spr_dir, y - 82);
					spawn_hit_fx(x + 40 * spr_dir, y - 50, peacock_fx_fspecial_blast);
					switch (random_func(player + 1, 5, true)) {
						case 0:
							bullet.sprite_index = sprite_get("bullet1");
							break;
						case 1:
							bullet.sprite_index = sprite_get("bullet3");
							break;
					}
					//the last shot deals +1 damage and more knockback
					if (peacock_fspecial_shots == 1) { 
						bullet.damage++;
						bullet.hitpause += 3;
						bullet.kb_value = 6;
						bullet.kb_angle = 50;
						bullet.kb_scale = 0.5;
						bullet.hit_effect = 302;
					}
				}
			break;
			case 4:
				if (special_pressed && peacock_fspecial_shots > 1 && window_timer > 4) {
					window = 2;
					window_timer = 0;
					peacock_fspecial_shots--;
				}
				else if (is_end_of_window()) {
					window = get_attack_value(attack, AG_NUM_WINDOWS);
					window_timer = 0;
				}
		}
	break;
	
	case AT_USPECIAL_GROUND:
		switch (window) {
			case 2:
				//if cancelled, lock this move's facing direction
				if (window_timer == 1 && peacock_uspecial_was_attack_canceled_into) {
					spr_dir = peacock_uspecial_attack_cancel_dir; 
				}
				if (is_end_of_window()) {
					if (joy_pad_idle) peacock_uspec_move_speed = 0;
					else { 
						peacock_uspec_move_speed = lengthdir_x(46, joy_dir);
						
						//peacock can't teleport backwards.
						if (sign(peacock_uspec_move_speed) != spr_dir) {
							peacock_uspec_move_speed = 0;
						}
					}
				}
			break;
			case 3:
				hsp = peacock_uspec_move_speed;
				draw_indicator = false;//is_end_of_window();
			break;
			case 4:
				draw_indicator = true;
				//add slight cooldown
				move_cooldown[AT_USPECIAL] = 6;
			break;
		}
	 
	 break;
	
	case AT_USPECIAL:
		switch (window) {
			case 2:
				if (window_timer != 1) break;
				//spawn spring
				instance_create(x, y, "obj_article3");
				//add momentum in holding direction
				//hsp += (right_down - left_down);
				//prevent another use of this move until peacock walljumps or touches the ground
				move_cooldown[AT_USPECIAL] = 9999;
				//reset airdash buffers, so that peacock can't accidentally miss landing on the spring
				peacock_airdash_press_recorded = 0;
    			peacock_airdash_button_main_buffer = 0;
    			peacock_airdash_forward_dash_buffer = 0;
    			peacock_airdash_backward_dash_buffer = 0;
				
				//force a short cooldown on all aerial moves
				move_cooldown[AT_FSPECIAL] = 24;
				move_cooldown[AT_DSPECIAL] = 12;
				move_cooldown[AT_NAIR]     = 12;
				move_cooldown[AT_FAIR]     = 12;
				move_cooldown[AT_BAIR]     = 12;
				move_cooldown[AT_UAIR]     = 12;
				move_cooldown[AT_DAIR]     = 12;
			break;
		}
	 
	 break;
	
    //forward dash
    case AT_EXTRA_1:
        if (free) {
    		if (state_timer <= 1) break;
            //allow all cancels except jump
            can_attack = true;
            can_special = true;
            can_wall_jump = true;
            can_shield = true;
            //disable drifting
            can_move = false;
            //halve hsp during startup
            switch (window) {
                case 2:
                    if (window_timer == 1) hsp = spr_dir * initial_dash_speed * 0.5; //hsp *= 0.5; 
                break;
                case 3:
                	//allow jump cancel
                	can_jump = true;
                	//fix dash speed
                    hsp = (dash_speed - 0.5) * spr_dir;
                    //end after 30 frames if the player stops holding in the direction of the dash
                    if (state_timer >= 30 && right_down - left_down != spr_dir) set_state(PS_IDLE_AIR);
                break;
            }
            break;
        }
        //transition to dash when landing
        if (window == 1) {
            set_state(PS_DASH_START);
            state_timer = 0;//window_timer - 1;
        }
        else {
            set_state(PS_DASH);
        }
    break;
    
    //backdash
    case AT_EXTRA_2:
        //allow all typical air cancels
        can_attack = true;
        can_special = true;
        //can_jump = true;
        can_wall_jump = true;
        can_shield = true;
        //disable drifting
        can_move = false;
        //set dash speed
        if (window > 2) hsp = -5.5 * spr_dir; //-4.75
    break;
    
    //coyote time
    case AT_EXTRA_3:
        //allow all cancels including shield
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_special = true;
        can_jump = true;
        can_shield = true;
        can_move = false;
        switch (window) {
            case 1:
                //when the player stops walking, or after three seconds, stop.
                if (!free) {
                    var ctime = window_timer;
                    set_state(PS_WALK);
                    state_timer = ctime;
                }
                else if (right_down - left_down != spr_dir || state_timer > 90) {
                    window = 2;
                    window_timer = 0;
                }
            break;

        }
    break;
    
    case AT_DSPECIAL:
	if (window == 2 && window_timer == 1 && !hitpause) {
		//dspecial_block = instance_create(x, round(view_get_yview()-10), "obj_article1" )
		
		if (instance_exists(peacock_article_doom_id)) {
			with (peacock_article_doom_id) {
				if (state >= 5 && state <= 7) {
					state = 8;
					state_timer = 0;
				}
			}
		}
		else {
			peacock_article_doom_id = instance_create(x, y - 1, "obj_article1" );
			peacock_article_doom_id.free = true;
			peacock_article_doom_id.player = player;
			peacock_article_doom_id.player_id = id;
			peacock_article_doom_id.spr_dir = spr_dir;
		}

		destroy_hitboxes()
    }
    break;
}




//normal cancels
//jab -> utilt -> dtilt -> ftilt -> strongs




/*
if (attack == AT_NSPECIAL) {
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}
*/
/*
if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}
*/
if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}

if (attack == AT_UTILT){
move_cooldown[AT_UTILT] = 4;
}

if (attack == AT_FSPECIAL){
move_cooldown[AT_FSPECIAL] = 40;
}

if (attack == AT_DAIR){
    can_fast_fall = false;
}


//Voices
if (!cancelled_voice) {
	// Remember to change taunt
	if (easter_egg_set == true && easter_egg_timer == 91){
		

if ((attack == AT_NAIR) && state_timer == 1) {
		if (window==1){
    snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("nair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("nair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("grunt2"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt5"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt6"));
    }              
}
}

if ((attack == AT_FTILT) && state_timer == 1) {
    snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("ftilt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("ftilt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("ftilt3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("ftilt4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt2"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt3"));
    }
}

if ((attack == AT_FTHROW) && state_timer == 1) {
    snd_rng = random_func(0, 10, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("jab5"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("jab6"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("jab7"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("jab8"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt2"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt3"));
    } else if (snd_rng == 7) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 8) {
        sound_play(sound_get("grunt5"));
    } else if (snd_rng == 9) {
        sound_play(sound_get("grunt6"));
    }    
}

if ((attack == AT_JAB) && state_timer == 1 && window == 1) {
    snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("jab1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("jab2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("jab3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt5"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt6"));
    }    
}

if ((attack == AT_DSPECIAL) && state_timer == 1) {
    snd_rng = random_func(0, 2, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("dspecial1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("dspecial2"));
    }
}

if ((attack == AT_DSTRONG) && state_timer == 1) {
    snd_rng = random_func(0, 4, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("dstrong1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("dstrong2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("dstrong3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("dstrong4"));
    }
}

if ((attack == AT_FSPECIAL) && state_timer == 1) {
    snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("grunt2"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("bang2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("bang3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("bang4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("bang5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt3"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt1"));
    }
}

if ((attack == AT_FAIR) && state_timer == 1) {
    snd_rng = random_func(0, 5, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("fair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("fair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("fair3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("fair4"));
}
}

if ((attack == AT_UAIR) && state_timer == 1) {
    snd_rng = random_func(0, 9, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("uair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("uair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("uair3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("uair4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt2"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 7) {
        sound_play(sound_get("grunt5"));
    } else if (snd_rng == 8) {
        sound_play(sound_get("grunt6"));
    }    
   
}

if ((attack == AT_USPECIAL_GROUND) && state_timer == 1) {
    snd_rng = random_func(0, 4, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("uspecial1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("uspecial2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("uspecial3"));
    } 
   
}

if ((attack == AT_DTILT) && state_timer == 1) {
    snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("dtilt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("dtilt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("dtilt3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("dtilt4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt2"));
    }
   
}

if ((attack == AT_DATTACK) && state_timer == 1) {
    snd_rng = random_func(0, 4, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("dattack1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("dattack2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("grunt2")); 
   
}
}

if ((attack == AT_NSPECIAL) && state_timer == 1) {
    snd_rng = random_func(0, 2, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("nspecial1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("nspecial2"));
    } 
}

if ((attack == AT_TAUNT) && state_timer == 1) {
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("taunt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("taunt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("taunt3"));
    }
   
}

if ((attack == AT_BAIR) && state_timer == 1) {
    snd_rng = random_func(0, 8, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("bair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("bair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("bair3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("bair4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt5"));
    } else if (snd_rng == 7) {
        sound_play(sound_get("grunt6"));
    }    
   
}

if ((attack == AT_USTRONG) && state_timer == 1) {
    snd_rng = random_func(0, 4, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("grunt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("grunt5"));
    }
   
}

if ((attack == AT_DAIR) && state_timer == 1) {
    snd_rng = random_func(0, 5, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("dair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("dair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("grunt5"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt6"));
    }    
}

if ((attack == AT_FSTRONG) && state_timer == 1) {
    snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("fstrong1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("fstrong2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("fstrong3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("grunt7"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt2"));
    }
   
}

if ((attack == AT_UTILT) && state_timer == 1) {
    snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("utilt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("utilt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("grunt1"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("grunt2"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("grunt4"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("grunt5"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("grunt6"));
    }    
}

if ((attack == 49) && state_timer == 1) {
    snd_rng = random_func(0, 4, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("fsmash1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("fsmash2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("fsmash3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("fsmash4"));
    }    
}
	}
}
#define is_end_of_window
return window_timer + 1 > get_window_value(attack, window, AG_WINDOW_LENGTH);



