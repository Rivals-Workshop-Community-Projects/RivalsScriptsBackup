//B - Reversals
if (attack == AT_USPECIAL)
{
    if (state_timer <= 6){
        can_fast_fall = false;
        can_move = false;

        if(right_down)
            spr_dir = 1;
        if(left_down)
            spr_dir = -1;}
}


if (attack == AT_JAB) {
	move_cooldown[AT_JAB] = 80;
    if (window == 2 && window_timer == 1 && !hitpause) {
       create_smoke(x, y - 40, 10, 40, 0, 359, 8, 8, 0.18)
    }
}

if (attack == AT_USPECIAL) {
	
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	grab_timer = 0;
    }
    
	if (window == 4) {
		can_move = true;
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	set_state(PS_PRATFALL);
        }
    }
    
    if (window == 8) {
		can_move = true;
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	window = 25
        	window_timer = 0;
        }
    }
    
    if (instance_exists(grabbed_player_obj)) {
	    if (window >= 7) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
			grabbed_player_obj = noone; 
		}
	    else {
	    		if (window_timer <= 1) {
	    			grabbed_player_relative_x = grabbed_player_obj.x - x;
	    			grabbed_player_relative_y = grabbed_player_obj.y - y;
	    		}
	    		//keep the grabbed player in hitstop until the grab is complete.
	    		grabbed_player_obj.hitstop = 2;
	    		grabbed_player_obj.hitpause = true;
	    		
	    		//if this is the first frame of a window, store the grabbed player's relative position.
	    		var pull_to_x = 0
	    		var pull_to_y = 0;
	    		var window_length = 4;
	    		 
	    		//on the first window, pull the opponent into the grab.
	    		if (window == 5 || window == 6) { 
	    			attack_invince = 1;
	    		    window_length = 4;
	    			pull_to_x = 44 * spr_dir;
	    			pull_to_y = -24;
	    		}
	    		
	    		
	    		if (window == 5 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) { 
	    			grab_timer++;
	    			if (grab_timer >= 3) {
		    			window = 6;
		    			window_timer = 0;
		        	}
	    		}
	    		
	    		if (window == 6) { 
	    			attack_invince = 1;
			    	pull_to_x = 44 * spr_dir;
	    			pull_to_y = -24;
	    		}
	    		
	    		grabbed_player_obj.x = x + ease_linear( grabbed_player_relative_x, pull_to_x , window_timer, window_length);
				grabbed_player_obj.y = y + ease_linear( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
	    }
    }
}

if (attack == AT_DAIR) {
	
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	grabbed_timer = 0;
    }
	can_fast_fall = false;
	if (window == 4) {
		fall_through = true;
	}
	print(window);
	if (instance_exists(grabbed_player_obj)) {
	    if (window >= 6) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
			grabbed_player_obj = noone; 
		}
	    else {
	    		//keep the grabbed player in hitstop until the grab is complete.
	    		grabbed_player_obj.hitstop = 2;
	    		grabbed_player_obj.hitstop_full = 4;
	    		grabbed_player_obj.hitpause = true;
	    		
	    		//if this is the first frame of a window, store the grabbed player's relative position.
	    		var pull_to_x = 0
	    		var pull_to_y = 40;
	    		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	    		
	    		
				//if this is the first frame of a window, store the grabbed player's relative position.
				if (window_timer <= 1) {
					grabbed_player_relative_x = round(grabbed_player_obj.x - x);
					grabbed_player_relative_y = round(grabbed_player_obj.y - y);
				}
				 
	    		
	    		grabbed_player_obj.x = x + ease_linear( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_linear( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
	    		
	    		if (window == 4) { 	
	    			if (window_timer == 1 && !hitpause) {
	    				vsp = -5;
	    			}
	    			with (grabbed_player_obj) {
	    				if (place_meeting(x, y, asset_get("par_block"))) {
	    					with other {
			    				window = 5;
			    				window_timer = 0;
			    				vsp = 0;
	    					}
	    				}
	    			}
	    			if (place_meeting(x, y, asset_get("par_block")))
	    			{
	    				window = 5;
	    				window_timer = 0;
	    				vsp = 0;
					}
	    		}
	    }
    }
	if (window == 6) { 	
		if (window_timer == 1 && !hitpause) {
			vsp = -9;
			hsp = -2 * spr_dir
		}
	}
}

if (attack == AT_UTILT) {
	if (window == 2 && !hitpause) {
		if (window_timer % 10 == 1) {
			var spawn_x = round(x + 64 * spr_dir)
			var spawn_y = round(y)
			
			if (place_meeting(spawn_x, spawn_y + 2, asset_get("par_block")) || place_meeting(spawn_x, spawn_y + 2, asset_get("par_jumpthrough"))) {
				var hit_fx = spawn_hit_fx(spawn_x, spawn_y, dust_effect[0]);
				hit_fx.spr_dir = spr_dir 
			}
				
			sound_play(sound_get("wheesh"),false,noone,0.6,1.2 + (window_timer/40))
		}
	}
	if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
		shake_camera(10, 4);
	}
}

#define create_smoke(_x, _y, _amount, _length, _dir_min, _dir_max, _spd_min, _spd_max, _frict)
   for (var i = 0; i < _amount; i++) {
	var smoke = create_hitbox(AT_JAB, 2, _x, _y);
	smoke.smoke_length = _length;
	smoke.smoke_particle_amount = _amount;
	smoke.spr_dir = spr_dir;
	smoke.smoke_spread_dir_min = _dir_min;
	smoke.smoke_spread_dir_max = _dir_max;
	smoke.smoke_speed_min = _spd_min;
	smoke.smoke_speed_max = _spd_max;
	smoke.smoke_friction = _frict;
	smoke.dir = _dir_min + ((_dir_max - _dir_min) * (i/_amount))
	smoke.spd =  _spd_min + (random_func(i+2, round(_spd_max - _spd_min), false))
	smoke.x = _x + lengthdir_x(smoke.spd*2, smoke.dir) * spr_dir;
	smoke.y = _y + lengthdir_y(smoke.spd*2, smoke.dir);
	smoke.size = random_func(i, 3, true);
	smoke.fade_offset = random_func(i+3, 7, true);
	smoke.float_offset = -90 + random_func(i+4, 180, true);
	smoke.hit = false;
	if (has_hit_player && instance_exists(hit_player_obj))
	smoke.can_hit[hit_player_obj.player] = false;
}
