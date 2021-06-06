//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack != AT_NSPECIAL || attack != AT_USPECIAL) {
	if (window == 1 && window_timer == 1) {
		lowest = 10;
	}
}

if (attack == AT_NSPECIAL){
    if (babycount < 3 && babyfollowingcount == 0) {
    	if (window == 1 && window_timer == 1) {
    		babying = true; //lock into making a baby
    	}
    }
    if (babying) {
    	if (window == 3 && window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)) {
	        instance_create(x, y-50, "obj_article2");
	        sound_play(sfx_eggspew);
    	}
    	if (window == 4 && window_timer == get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH)) {
    		set_state(PS_IDLE);
    		babying = false;
    	}
    }
    else {
    	if (object_index != oTestPlayer) {
	    	if (window == 1 && window_timer == 1) {
		    	window = 4;
		    	window_timer = 0;
		    	//lowest = 10;
		    	//i dont know if you need 2 with statements here but hey it works
		    	with (obj_article2) { //initial with() to get the lowest bat id
		    		if (player_id == other.id) {
						if (state == 3 && babyid < other.lowest) {
							other.lowest = babyid;
						}   
		    		}
		    	}
				with (obj_article2) { //second with() to do something with the lowest bat id
					if (player_id == other.id) {
						if (babyid == other.lowest && !isthrown && state == 3 && other.object_index != oTestPlayer) {
							isthrown = true;
						}
					}
		    	}
	    	}
    	}
    }
}

/*if (attack == AT_JAB && window == 1 && window_timer == 1){
	//get the lowest id bat and kill it
	var lowest = 2;
	with (obj_article2) {
		if (player_id == other.id) {
			if (state == 5 && babyid < lowest) {
				lowest = babyid;
			}
		}
	}
	with (obj_article2) {
		if (player_id == other.id) {
			if (state == 5 && babyid == lowest) {
				state = 2;
				state_timer = 0;
			}
		}
	}
}*/

if (attack == AT_USTRONG) {
	if (window < 7) {
		if (!free) {
			can_move = false;
			hsp = 0;
			vsp = 0;
		}
	}
	if (window = 2) {
		x += 7*-spr_dir;
	}
	if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
		hsp = 6*spr_dir;
		vsp = -9;
	}
	if (window == 7) {
		vsp += 1.5;
		if (!free) {
			window = 8;
			window_timer = 0;
		}
	}
}

if (attack == AT_FSTRONG) {
	if (window == 1 && window_timer == 1) {
		timesspun = 0;
	}
	if (window == 3) {
		if (window_timer == 1) {
			create_hitbox(AT_FSTRONG, timesspun+1, x, y);
			if (timesspun < 1 && !has_hit) {
				sound_play(asset_get("sfx_spin"), false, false, 1, 1);
			}
		}
	    if (timesspun < SPIN_TIMES-1 && window_timer >= 6) {
			window_timer = 0;
			timesspun++;
    	}
	}
	if (!has_hit_player && window == 6) { //BIGGER WHIFFLAG
		set_window_value(attack,window,AG_WINDOW_LENGTH, 30);
	} else {
	  set_window_value(attack,window,AG_WINDOW_LENGTH, 15);
	}
}

if (attack == AT_FSPECIAL){
	hookorigin = x+(50*spr_dir);
	can_move = false;
	if (object_index != oTestPlayer) {
	    if (hookattached) {
	    	if (window == 2 && window_timer == 1) {
		    	hk = instance_create(hookorigin, y-10, "obj_article3");
	    		hookattached = false;
	    	}
	    }
	    else {
	    	if (hk.ispulled) {
				if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					window_timer = 0;
				}
	    	}
	    	with (obj_article3) {
				if (other.id == player_id) {
				    if (player_id.window == 1 &&player_id.window_timer == 1) {
				    	player_id.ux = player_id.x+(90*player_id.spr_dir);
				    	player_id.uy = player_id.y-6;
				    	htemp_x = x;
				    	htemp_y = y;
		    			if (state == 1) {
							state = 3;
							state_timer = 0;
	    				}
				    }
	    			if (state == 3) {
	    				x = ease_circInOut(htemp_x, player_id.ux, state_timer, player_id.hookpulltime);
	    				y = ease_circInOut(htemp_y, player_id.uy, state_timer, player_id.hookpulltime);
	    				with (latchedid) {
							can_move = 0;
							hitstop = 2;
							hitpause = true;
		    				//set_state(PS_HITSTUN);
		    				hsp = 0;
		    				vsp = 0;
		    				x = other.x;
		    				y = other.y;
	    				}
	    			}
	    			if (state == 5) {
	    				if (state_timer == 1) {
	    					player_id.ux = floor(player_id.x);
				    		player_id.uy = floor(player_id.y);
					    	htemp_x = floor(x);
				    		htemp_y = floor(y);
	    				}
	    				x = htemp_x;
	    				y = htemp_y;
	    				player_id.can_move = false;
	    				player_id.hsp = 0;
	    				player_id.vsp = 0;
	    				player_id.x = ease_circInOut(player_id.ux, htemp_x, state_timer, player_id.hookpulltime);
	    				player_id.y = ease_circInOut(player_id.uy, htemp_y, state_timer, player_id.hookpulltime);
	    			}
	    		}
	    	}
	    }
	}
    //if (phone_cheats[cheat_fspecial_cancel] && window > 1) iasa_script();
}

if (attack == AT_USPECIAL) {
	if (window == 1 && window_timer == 1) {
		y -= 1;
	}
	can_wall_jump = true;
	has_walljump = true;
	free = true;
	//if(window == 1 && window_timer == 1) { lowest = 10; }
	//i dont know if you need 2 with statements here but hey it works
	with (obj_article2) { //initial with() to get the lowest bat id
		if (player_id == other.id) {
			if (state > 2 && state != 5 && babyid < other.lowest) {
				other.lowest = babyid;
			}   
		}
	}
	
	if (window < 3) {can_move = false;}
	
    if (window == 1) {
    	hsp = 0;
    	vsp = 0;
		if (!joy_pad_idle) {
			udir = round(joy_dir / 22.5) * 22.5;
		}
		udest_x = floor(x + dcos(udir)*uradius);
		udest_y = floor(y - dsin(udir)*uradius);
		ux = x;
		uy = y;
		//check for ground so leechums wont go through it
		var grnd = collision_line_point(x,y,udest_x,udest_y,asset_get("par_block"), true, true);
		if is_array(grnd) {
		    if (grnd[0] != noone) {
		        udest_x = floor(grnd[1]);
		        udest_y = floor(grnd[2]);
		    }
		} 
		utimer++;
		with (obj_article2) { //second with() to do something with the lowest bat id
			if (player_id == other.id) {
				if (babyid == other.lowest) {
					state = 6;
					var dist = distance_to_point(player_id.udest_x, player_id.udest_y);
					var dir = point_direction(x, y, player_id.udest_x, player_id.udest_y);
					hsp = lengthdir_x(.2 * dist, dir);
					if (dist > 0) {vsp = lengthdir_y(.2 * dist, dir);}
				}
			}
		}
		if (!special_down) {
			window = 2;
			window_timer = 0;
		}
    }
    if (window == 2) {
    	utimer = 0;
    	hsp = 0;
    	vsp = 0;
    	if (window_timer == 1) {
    		create_hitbox(AT_USPECIAL, 1, x, y);
    		create_hitbox(AT_USPECIAL, 2, x, y);
    		create_hitbox(AT_USPECIAL, 3, x, y);
    		with (obj_article2) { //second with() to do something with the lowest bat id
			if (player_id == other.id) {
				if (babyid == other.lowest) {
						player_id.uatebaby = true;
						player_id.babyfollowingcount--;
						state = 9;
						state_timer = 0;
					}
				}
			}
    	}
		if (uatebaby) {
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
			if (window_timer == 1) {
				sound_play(asset_get("sfx_orca_crunch"), false, false, 1, 1);
			}
		}
		else {
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
		}

    	x = ease_sineInOut(ux, udest_x, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
    	y = ease_sineInOut(uy, udest_y, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
    	
    	
    }
    if (window == 3 && window_timer == 1) {
    	hsp = lengthdir_x(1, udir)*10;
		vsp = lengthdir_y(1, udir)*6;
		uatebaby = false;
    }
	if (window < 3) {
		spr_angle = udir-90;
	}
}

if (attack == AT_DSPECIAL){
	hsp = hsp/6;
	vsp = vsp/6;
	if (window == 2) {
	    if (cloudspittimer < 60) {
	    	if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {window_timer = 0;}
	    	if (cloudspittimer == 25) {instance_create(x, y, "obj_article1");}
	    	cloudspittimer++;
	    }
	    else {
			cloudspittimer = 0;
			window = 3;
	    }
	}
	if (window == 3 && window_timer = 1) {
		take_damage(player, -1, 7);
	}
}

//forward tilt
if (attack == AT_FTILT){
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !has_hit) {
    	sound_play(asset_get("sfx_orca_bite"), false, false, 1, 1);
    }
}

//up tilt
if (attack == AT_UTILT){
	if (window == 1 && window_timer == 1) {
		temp_x = floor(x - dcos(dangle)*(50*spr_dir));
		temp_y = floor((y-60) - dsin(dangle)*100);
	}
	if (window == 2) {
		if (window_timer == 1) {
			create_hitbox(AT_UTILT, 1, floor(x - dcos(dangle)*50), floor((y-60) - dsin(dangle)*50));
		}
		//print_debug(" angle: " + string(dangle));
		temp_x = floor(x - dcos(dangle)*(50*spr_dir));
		temp_y = floor((y-60) - dsin(dangle)*100);
		
		with (obj_article2) {
    		if (player_id == other.id) {
    			if (state == 3) {
    				state = 6;
    			}
				if (state == 6 && babyfollowing == true) {
					image_angle = point_direction(x, y, other.x, other.y-50)+90;
					x = floor(other.temp_x - (dcos((babyid*120))*(40*other.spr_dir)))
					y = floor(other.temp_y - (dsin((babyid*120))*(40*other.spr_dir)))
				}
    		}
    	}
		dangle += 16;
	}
	if (window == 3) {
		temp_x = x;
		temp_y = y+600;
		with (obj_article2) {
    		if (player_id == other.id) {
    			if (state == 6) {
    				state = 3;
    			}
    		}
		}
		dangle = 0;
	}
}

//down tilt
if (attack == AT_DTILT){

}

if (attack == AT_DATTACK) {
	vsp = 0;
	if (window == 1) {
		//hsp = 0.3*spr_dir;
	}
	if (window == 2) {
		if (window_timer == 1) {
			hsp = 10*spr_dir;
		}
	    if (currdashrepeat < DASH_REPEAT_AMT) {
	    	if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
	    		window_timer = 0;
	    		currdashrepeat++;
	    	}
	    }
	    else {
			currdashrepeat = 0;
			window = 3;
	    }
	    hsp += (window_timer/3)*spr_dir;
	}
}

//taunt
if (attack == AT_TAUNT) {
	if (window == 3) {
		if (!taunt_down && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			window = 4;
			window_timer = 0;
		};
	}
}

if (attack == AT_BAIR) {
	if (window == 1 && window_timer == 1) {
		temp_x = floor(x + dcos(bangle)*(80*spr_dir));
		temp_y = floor((y-40) + dsin(bangle)*20);
	}
	if (window == 2) {
		temp_x = floor(x + dcos(bangle)*(80*spr_dir));
		temp_y = floor((y-40) + dsin(bangle)*30);
		if (window_timer == 1) {
			create_hitbox(AT_BAIR, 1, temp_x, temp_y);
		}
		//print_debug(" angle: " + string(dangle));
		
		
		with (obj_article2) {
    		if (player_id == other.id) {
    			if (state == 3) {
    				state = 6;
    				sprite_index = sprite_get("babyfly");
    				//spr_dir = -spr_dir;
    			}
				if (state == 6 && babyfollowing == true) {
					image_angle = point_direction(x, y, other.x, other.y-50)-90;
					x = floor(other.temp_x - (dcos((babyid*120))*(30*other.spr_dir)))
					y = floor(other.temp_y - (dsin((babyid*120))*(30*other.spr_dir)))
				}
    		}
    	}
		bangle -= 10;
	}
	if (window == 3) {
		with (obj_article2) {
			temp_x = x;
			temp_y = y+600;
    		if (player_id == other.id) {
    			if (state == 6) {
    				state = 3;
    			}
    		}
		}
		bangle = BANGLE_START;
	}
}

//grab attack
if (attack == AT_NAIR) {
    if (window == 2 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

//throw attack
if (attack == AT_NSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
			vsp = vsp/2;
		}
		 
		if (window == 1) { 
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 2) {
			var pull_to_x = -30 * spr_dir;
			var pull_to_y = 0;
			
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}
}

if ((attack == AT_NAIR && window == 2 && window_timer == get_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH)) ||
	(attack == AT_NSPECIAL_2 && window == 3 && window_timer == get_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH))) {
    spr_dir = -spr_dir;
}

if (attack == AT_NSPECIAL_2 && window == 3 && window_timer == get_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH)) {
    take_damage(player, -1, -3);
}

#define collision_line_point
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;