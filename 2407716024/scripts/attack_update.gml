//B - Reversals
//only DSPECIAL can be b-reversed out of a consecutive attack cancel.
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL) {
    trigger_b_reverse();
}

fs_force_fs = false;


if (attack == AT_FTILT){
	if(window == 4 and window_timer >= get_window_value( AT_FTILT, 4, AG_WINDOW_CANCEL_FRAME )){
		if(left_stick_pressed or right_stick_pressed){
			window++;
			window_timer = 0;
		}
	}
}
//normal and special cancels



var normal_cancel_value = 0;
switch (attack) {

    
    case AT_DAIR:
    	move_cooldown[AT_DAIR] = 12;
    	if (!hitpause && window == 2 && !down_hard_pressed && !fast_falling) vsp = min(vsp, 4);
    	
    	peacock_consecutive_cancelled_attacks = 0;
    break;
    
    case AT_UAIR:
	
		if (window == 2 && window_timer <= 5) 
		{
			//halt movement
			can_move = true;
			hsp *= 1;
			
			//spawn avery
			if (window_timer == 1 && !hitpause) 
			{
				if (!instance_exists(uair_borb)) 
				{
					uair_borb = instance_create(x + spr_dir * 28, y - 74, "obj_article2");
					uair_borb.spr_dir = spr_dir;
				}
			}
		}
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

	case AT_NAIR:
		switch (window) {
			case 1:
				peacock_hit_with_nair = false; //gets set to true in hit_player.gml
			case 2:
				//do nothing
			break;
			case 3:
				peacock_used_nair = false;
			//case 5:
			//case 6:
				//allow endlag cancels if the attack hit
				if (has_hit && !was_parried && window_timer >= 3) {
					can_attack = false;
					can_special = false;
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
				}
			break;
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
		
		if (state_timer == 100)
		{
			window = 4;
			window_timer = 0;
		}
		
		if (window = 5 && window_timer = 1) sound_play(sound_get("fsmash_shot"));
		
		if (state_timer == 220)
		{
			window = 6;
			window_timer = 0;
		}

    if window <= 2{
    	time_freeze_ticks = 1;
    }
    can_fast_fall = false;
    can_move = false;

	break;
	
	case AT_DSTRONG:
	hsp = (free) ? clamp(hsp, -6, 6) : clamp(hsp, -9, 9);
	break;
	
	case AT_NSPECIAL:
		trigger_wavebounce();
		if (window >= 2) move_cooldown[AT_NSPECIAL] = 100;
	break;
	
	case AT_FSPECIAL:
		can_move = 0;
		switch (window) {
			case 1:
				peacock_fspecial_shots = 3;
			break;
			case 3:
				if (window_timer == 1) 
				{
					var bullet = create_hitbox(attack, 1, x + 58 * spr_dir, y - 42);
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
	if (window == 1 && window_timer == 1) 
	{
		uspecial_free_start = (state == PS_ATTACK_AIR);
	}
	if (uspecial_free_start && !hitpause)
	{
		var glove = special_down;
		can_fast_fall = false;
		switch (window)
		{
			case 1:
	        can_move = false;
	        hsp = 0;
			vsp = 0;
	        set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 6);
	        set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 7);
			break;
			
			case 2:
			can_move = false;
	        hsp = 0;
			vsp = 0;
			break;
			
			case 3:
			can_move = false;
	        hsp = 0;
			vsp = 0;
			uspecial_x_start = x;
			uspecial_y_start = y;
			if (window_timer == 6)
			{
	            var _dir = 
	            	(joy_pad_idle)
	            		? 90
	            		: joy_dir % 360;
	            var _total_distance = 200;
	            var _inc = 10;
	            var _test_x = x;
	            var _test_y = y;
	            var _ground_stick = false;
	            var _last_open_x = x;
	            var _last_open_y = y;
	            for (var _dist = _inc; _dist <= _total_distance; _dist += _inc)
            	{
            		_test_x = x + _dist * dcos(_dir);
            		_test_y = y - _dist * dsin(_dir);
            		
            		if (_ground_stick)
            		{
            			// If special is down this will snap to the nearest ground.
            			if (!instance_place_ground(_test_x, _test_y, true))
            			{
            				if (_inc > 1) 
            				{
            					_dist -= _inc;
            					_inc /= 10;
            				}
            				else 
            				{
            					_last_open_x = _test_x;
            					_last_open_y = _test_y;
            					set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 1);
            					break;
            				}
            			}
            			else{
            				if(collision_rectangle(_test_x, _test_y, _test_x, _test_y, asset_get("par_jumpthrough"), true, true)){
            					_last_open_x = _test_x;
            					_last_open_y = _test_y;
            					set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 1);
            				}
            			}
            		}
            		else
            		{
            			if (special_down)
            			{
            				// If special is down, stick to stage if possible.
            				if (instance_place_ground(_test_x, _test_y, true))
            				{
            					
            					if (_dir > 180)
            					{
            						// Should stop at first ground if moving down.
	            					if (_inc > 1) 
		            				{
		            					_dist -= _inc;
		            					_inc /= 10;
		            				}
		            				else break;
            					}
            					else _ground_stick = true;
            				}
            				else
            				{
            					_last_open_x = _test_x;
	            				_last_open_y = _test_y;
            				}
            			}
            			else
            			{
            				// Otherwise get furthest point that isn't in the ground.
            				if (instance_place_ground(_test_x, _test_y))
	            			{
	            				// If special is down, stick to stage if possible.
	            				if (_dir > 180)
	            				{
	            					// Should stop at first ground if moving down.
	            					if (_inc > 1) 
		            				{
		            					_dist -= _inc;
		            					_inc /= 10;
		            				}
		            				else break;
	            				}
	            			}
	            			else
	            			{
	            				_last_open_x = _test_x;
	            				_last_open_y = _test_y;
	            			}
            			}
            			
            		}
            	}
            	//ds_list_add(list_of_dots, [_last_open_x, _last_open_y]);
            	//ds_list_add(list_of_dots, [x + _total_distance * dcos(_dir), y - _total_distance * dsin(_dir)]);
	            x = _last_open_x;
	            y = _last_open_y + 2;
	        }
			break;
			
			case 4: 
			if (window_timer == 1)
			{
				if (free)
				{
					var _dir = darctan2(y - uspecial_y_start, x - uspecial_x_start);
					hsp = 3 * dcos(_dir);
					vsp = 3 * dsin(_dir);
				}
				else
				{
					set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 1);
				}
			}
			can_move = true;
			break;
			
			case 6:
			if (window_timer == 3)
			{
				if (free)
				{
					var _dir = darctan2(y - uspecial_y_start, x - uspecial_x_start);
					hsp = 3 * dcos(_dir);
					vsp = 3 * dsin(_dir);
					var _hole_fx = spawn_hit_fx(x - 20 * spr_dir, y - 10, peacock_fx_uspecial_hole);
					_hole_fx.depth = depth + 1;
					can_move = true;
				}
				else
				{
					set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 1);
				}
			}
			else if (window_timer < 3)
			{
				hsp = 0;
				vsp = 0;
				can_move = false;
			}
			break;
		}
	}
	else
	{
		set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 0); //no pratfall on the ground
		var glove = (window < 5) ? special_down : false;
		switch (window) 
		{
			case 1:
			set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 6);
			break;
			
			case 2:
			if (is_end_of_window()) 
			{
				if (joy_pad_idle) peacock_uspec_move_speed = 0;
				else peacock_uspec_move_speed = lengthdir_x(34, joy_dir);
			}
			break;
			
			case 3:
			hsp = peacock_uspec_move_speed;
			draw_indicator = false;
			can_move = false;
			break;
			
			case 4:
			can_move = false;
	        hsp = 0;
			vsp = 0;
			if (window_timer == 1 && glove) 
			{
				window = 7;
				window_timer = 0;
				set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 9);
			}
			draw_indicator = true;
			//add slight cooldown
			move_cooldown[AT_USPECIAL] = 6;
			break;
		}
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
                if (window_timer == 1) hsp = spr_dir * 4 * 0.5; //hsp *= 0.5; 
                break;
                case 3:
            	//allow jump cancel
            	can_jump = true;
            	//fix dash speed
                hsp = (dash_speed +0.5) * spr_dir;
                //end after 30 frames if the player stops holding in the direction of the dash
                if (state_timer >= 30 && right_down - left_down != spr_dir) set_state(PS_IDLE_AIR);
                //has_airdodge = had_airdodge_pre_dash;
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
        can_jump = true;
        can_wall_jump = true;
        can_shield = (window == 3 && window_timer > 6);
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
move_cooldown[AT_FSPECIAL] = 100;
}

/*if (attack == AT_FTILT){
move_cooldown[AT_FTILT] = 40; 
}*/




//sfxs

if attack == AT_USPECIAL_GROUND
	if window == 7 && window_timer == 1 and !hitpause 
		sound_play(asset_get("sfx_springgo"), false, noone, .7, .8);

if attack == AT_USTRONG
	if window == 3 && window_timer == 1 and !hitpause 
		sound_play(asset_get("sfx_springgo"), false, noone, .7, .8);
		
if attack == AT_FSTRONG {
	if window == 1 && window_timer == 1 and !hitpause  {
		sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, .5, .7);
	}	
	if window == 1 and window_timer == 8 and !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"), false, noone, .8, 1.2);
	}	
	if window == 3 and window_timer == 1 and !hitpause {
		sound_play(asset_get("sfx_ice_burst_up"), false, noone, .5, 1.5);
	}	
	if window == 4 and window_timer == 1 and !hitpause {
		sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, .6, 1.3);
	}	
}
if attack == AT_DSTRONG
	if window == 2 && window_timer == 1 and !hitpause 
		sound_play(sound_get("sfx_dstrong"), false, noone, .7, 1.05);
		
if attack == AT_DTILT {
    if window == 1 && window_timer == 8 and !hitpause {
    	sound_play(sound_get("sfx_spring"), false, noone, 1.1, .85);
        sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.8, 1);
    }
}

if attack == AT_FTILT {
	if window == 2 && window_timer == 1 and !hitpause {
		sound_play(asset_get("sfx_waveland_kra"), false, noone, .7, .8);
	}
	if window == 5 && window_timer == 1 and !hitpause  {
		sound_play(asset_get("sfx_forsburn_consume_fail"), false, noone, 1, .8);
	}
}		
		
if attack == AT_UTILT {
	if window == 1 && window_timer == 4 and !hitpause {
		sound_play(sound_get("sfx_utilt"), false, noone, .6, 1);
	}	
}

if attack == AT_DATTACK {
	if window == 1 && window_timer == 3 and !hitpause {
		sound_play(asset_get("sfx_ice_back_air"), false, noone, .6, 1);
	}	
}

if attack == AT_FTHROW {
	if window == 1 && window_timer == 4 and !hitpause {
		sound_play(asset_get("sfx_swish_medium"), false, noone, .8, 1.5);
	}	
}

if attack == AT_FAIR {
	if window == 1 && window_timer == 13 and !hitpause {
		sound_play(asset_get("sfx_forsburn_reappear"), false, noone, .8, .7);
	}	
}

if attack == AT_FAIR {
	if window == 1 && window_timer == 13 and !hitpause {
		sound_play(asset_get("sfx_forsburn_reappear"), false, noone, .8, .7);
	}	
}

if attack == AT_UAIR {
	if window == 1 && window_timer == 1 and !hitpause {
		sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, .8, 1.1);
	}	
}

if attack == AT_BAIR {
	if window == 1 && window_timer == 4 and !hitpause {
		sound_play(asset_get("sfx_swish_weak"), false, noone, .7, 1.4);
	}	
}


if attack == AT_DAIR {
	if window == 1 && window_timer == 6 and !hitpause {
		sound_play(asset_get("sfx_bite"), false, noone, .7, 1.4);
		sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, .6, 1.3);
	}	
}

if attack == AT_NAIR {
	if window == 1 && window_timer == 4 and !hitpause {
		sound_play(asset_get("sfx_kragg_throw"), false, noone, .6, .6);
	}	
		if window == 4 && window_timer == 5 and !hitpause {
		sound_play(asset_get("sfx_buzzsaw_throw"), false, noone, .8, 1.2);
		sound_play(asset_get("sfx_ice_shatter"), false, noone, .7, 1);

	}	
}

if attack == AT_FSPECIAL {
	if window == 1 && window_timer == 2 and !hitpause {

		sound_play(asset_get("sfx_spin"), false, noone, .85, 1.15);
	}	
	if window == 1 && window_timer == 7 and !hitpause {
		sound_play(asset_get("sfx_ell_utilt_loop"), false, noone, .7, .8);

	}
}

if attack == AT_NSPECIAL {
	if window == 1 && window_timer == 8 and !hitpause {
		sound_play(asset_get("sfx_burnapplied"), false, noone, .7, 1.6);
	}	
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

if ((attack == AT_FTHROW) && window == 1 && window_timer == 3) {
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
#define instance_place_ground()
var _x = argument[0], _y = argument[1];
var _plats = argument_count > 2 ? argument[2] : false;
var _returner = 
		(collision_rectangle(
			_x, _y, 
			_x, _y, 
			asset_get("par_block"), true, true) || 
		(_plats &&
		 collision_rectangle(
			_x, _y, 
			_x, _y, 
			asset_get("par_jumpthrough"), true, true)));
return _returner;

#define is_end_of_window
return window_timer + 1 > get_window_value(attack, window, AG_WINDOW_LENGTH);

#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 6 and spr_dir == 1) or (right_down and state_timer <= 6 and spr_dir == -1) and (b_reversed == false)) {
    	if(free){
    	hsp = 4 * -spr_dir;
    	vsp = -4;
    	}
    	//hsp *= -spr_dir;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 7) {
    	b_reversed = false;
	}
}


