//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Rune
if (has_rune("A")) {
	if (attack == AT_DATTACK) {
		if (window > 2) {
			can_ustrong = true;
		}
	}
}


//Tilts
if(attack == AT_JAB){
    if(window == 1 && window_timer == 1){
        last_hit_stun = false;
    }
    if(was_parried && window < 4){
        was_parried = false;
        last_hit_stun = true;
    }
    if(window >= 4 && last_hit_stun){
        was_parried = true;
    }
}

if (attack == AT_UTILT) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    
    if (instance_exists(grabbed_player_obj)) {
        //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
    	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
    	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
    
    	else {
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		
    		//if this is the first frame of a window, store the grabbed player's relative position.
    		if (hitstop <= hitstop_full) {
				grabbed_player_relative_x = round(grabbed_player_obj.x - x);
				grabbed_player_relative_y = round(grabbed_player_obj.y - y);
    		}
    		 
    		//on the first window, pull the opponent into the grab.
    		if (window == 1) { 
    			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
    			var pull_to_x = 15 * spr_dir;
    			var pull_to_y = -98;
    			
    			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
    			var window_length = hitstop_full;
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, hitstop_full - hitstop, hitstop_full);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, hitstop_full - hitstop, hitstop_full);
    		}
    		//the above block can be copied for as many windows as necessary.
    		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
    	}
    }
}

//Strongs
if (attack == AT_DSTRONG) {
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        var ground_test = spr_dir == 1 ? collision_rectangle(x + 80, y, x + 112, y + 2, asset_get("par_block"), 1, 1) : collision_rectangle(x - 112, y, x - 80, y + 2, asset_get("par_block"), 1, 1)
        var plat_test = spr_dir == 1 ? collision_rectangle(x + 80, y, x + 112, y + 2, asset_get("par_jumpthrough"), 1, 1) : collision_rectangle(x - 112, y, x - 80, y + 2, asset_get("par_jumpthrough"), 1, 1)
        if (ground_test || plat_test) {
            window = 3;
            window_timer = 0;
            var vines = spawn_hit_fx(x + 128 * spr_dir, y, fx_dstrong);
            vines.spr_dir = spr_dir;
            vines.depth = -4;
            sound_play(sound_get("sfx_anthem_swipe3"))
        }
        else {
            window = 4;
            window_timer = 0;
        }
    }
}

//Aerials

if (attack == AT_FAIR) {
    var collision_x = 48;
    var collision_y = -16;
    var collision_w = 96;
    var collision_h = 4;
    var collision_x1 = collision_x - collision_w / 2;
    var collision_y1 = collision_y - collision_h / 2;
    var collision_x2 = collision_x + collision_w / 2;
    var collision_y2 = collision_y + collision_h / 2;
    var wall_test = false;
    if (window != 1 || window != 4) {
        wall_test = spr_dir == 1 ? collision_rectangle(x + collision_x1, y + collision_y1, x + collision_x2, y + collision_y2, asset_get("par_block"), 1, 1) 
            : collision_rectangle(x - collision_x2, y + collision_y1, x - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
    }
    if (window == 2 || window == 3) {
        fair_wall_timer = 0;
        if (wall_test && fair_wall_times < fair_wall_times_max) {
            window = 5;
            window_timer = 0;
            hsp = 0;
            vsp = 0;
            wall_player_x = x;
            wall_player_xoffset = 0;
            fair_wall_times++;
            destroy_hitboxes();
        }
       
    }
    
    if (window == 5) {
        if (window_timer == 1) {
        	uspecial_used = false;
            hsp = 0;
            vsp = 0;
            var wall_test2 = wall_test
            while (wall_test2 && abs(wall_player_xoffset) <= 480) {
                wall_player_xoffset -= spr_dir
                wall_test2 = spr_dir == 1 ? collision_rectangle(wall_player_x + wall_player_xoffset + collision_x1, y + collision_y1, wall_player_x + wall_player_xoffset + collision_x2, y + collision_y2, asset_get("par_block"), 1, 1) 
                        : collision_rectangle(wall_player_x + wall_player_xoffset - collision_x2, y + collision_y1, wall_player_x + wall_player_xoffset - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
            }
            wall_player_xoffset -= spr_dir;
            var dust = spawn_base_dust(wall_player_x + wall_player_xoffset + 94 * spr_dir, y - 32, "land", 1);
            dust.draw_angle = spr_dir == -1 ? 270 : 90;
        }
		//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
        if (window_timer <= window_length / 2) {
			x = wall_player_x + ease_circOut( 0, wall_player_xoffset, window_timer, window_length / 2);
        }
    }
    if (window == 6) {
    	fair_wall_timer ++;
        if (down_down) {
            can_jump = false;
            if (jump_pressed || attack_pressed || (can_tap_jump() && up_pressed)) {
                window = 7;
                window_timer = 0;
                attack_end();
            }
        }
        else {
            if (jump_pressed || (can_tap_jump() && up_pressed)) {
                can_jump = true;
                window = 7;
                window_timer = 0;
                djumps = 0;
            }
        }
        if (fair_wall_timer > fair_wall_timer_max) {
            can_jump = true;
            window = 7;
            window_timer = 0;
            djumps = 0;
            fair_wall_timer = 0;
        }
    }
    if (window == 5 || window == 6) {
        grav = 0;
        can_move = false;
        can_fast_fall = false;
        move_cooldown[AT_FAIR] = 15;
        var wall_test3 = spr_dir == 1 ? collision_rectangle(x + collision_x1, y + collision_y1, x + collision_x2 + 2, y + collision_y2, asset_get("par_block"), 1, 1) 
            : collision_rectangle(x - collision_x2 - 2, y + collision_y1, x - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
        if (!wall_test3) {
            window = 7;
            window_timer = 0;
            attack_end();
            set_state(PS_PRATFALL);
        }
    }
    if (window == 7) {
        djumps = 0;
    }
}

//attack_update.gml
if (attack == AT_DAIR) {
	var collision_x = 0;
    var collision_y = 36;
    var collision_w = 32;
    var collision_h = 72;
    var collision_x1 = collision_x - collision_w / 2;
    var collision_y1 = collision_y - collision_h / 2;
    var collision_x2 = collision_x + collision_w / 2;
    var collision_y2 = collision_y + collision_h / 2;
    var wall_test = false;
    if (window >= 4) {
        wall_test = spr_dir == 1 ? collision_rectangle(x + collision_x1, y + collision_y1, x + collision_x2, y + collision_y2, asset_get("par_block"), 1, 1) 
            : collision_rectangle(x - collision_x2, y + collision_y1, x - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
    }
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
   
    if (window >= 5 && instance_exists(grabbed_player_obj)) {
	
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 7) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			hsp = 0;
			vsp = 0;
			grav = 0;
			djumps = 0;
			can_fast_fall = false;
			can_move = false;
			
			if (window == 5) { 
				if (window_timer == 1) {
		            hsp = 0;
		            vsp = 0;
		            var wall_test2 = wall_test
		            while (wall_test2 && abs(wall_player_xoffset) <= 480) {
		                wall_player_xoffset -= 1
		                wall_test2 = spr_dir == 1 ? collision_rectangle(x + collision_x1, wall_player_x + wall_player_xoffset + collision_y1, x + collision_x2, wall_player_x + wall_player_xoffset + collision_y2, asset_get("par_block"), 1, 1) 
		                        : collision_rectangle(x - collision_x2, wall_player_x + wall_player_xoffset + collision_y1, x - collision_x1, wall_player_x + wall_player_xoffset + collision_y2, asset_get("par_block"), 1, 1)
		            }
		        }
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		        if (window_timer <= window_length / 2) {
					y = wall_player_x + ease_circOut( 0, wall_player_xoffset, window_timer, window_length / 2);
		        }
			}
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = round(grabbed_player_obj.x - x);
				grabbed_player_relative_y = round(grabbed_player_obj.y - y);
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window == 5) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 14 * spr_dir;
				var pull_to_y = 64;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			
			if (window == 6) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = -96 * spr_dir;
				var pull_to_y = -51;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
	}
}

//Specials
if (attack == AT_NSPECIAL) {
	if (state_timer == 2) {
		if (instance_exists(nspecial_article)) {
		    if (nspecial_article.window > 1) {
		    	window = 4;
		    	window_timer = 0;
		    }
		}
	}
	
	if (window == 2) {
		var window_third = round(get_window_value(attack, window, AG_WINDOW_LENGTH) / 3);
		if (window_timer == 1) {
			nspecial_article = instance_create(x + (80 * spr_dir), y - 48, "obj_article1");
			nspecial_article.spr_dir = spr_dir;
		}
		if (instance_exists(nspecial_article)) {
			nspecial_article.x = x + (80 * spr_dir);
			nspecial_article.y = y - 48;
		}
		if ((window_timer >= 1 && window_timer <= window_third - 2)
			|| (window_timer >= window_third * 2 - 10 && window_timer <= window_third * 2 - 2)
			|| (window_timer >= window_third * 3 - 10 && window_timer <= window_third * 3 - 2)
			) {
			if (!special_down) {
				if (instance_exists(nspecial_article)) {
					nspecial_article.let_go = true;
				}
			}
		}
		if (window_timer == window_third - 1 || window_timer == window_third * 2 - 1 || window_timer == window_third * 3 - 1) {
            sound_play(asset_get("sfx_abyss_hazard_start"))
			if (instance_exists(nspecial_article)) {
				if (nspecial_article.let_go) {
					window = 3;
					window_timer = 0;
				}
			}
			else {
				window = 3;
				window_timer = 0;
			}
		}
	}
	
	if (window == 5) {
		if (window_timer == 1) {
		    if (nspecial_article.window == 2 || nspecial_article.window == 4 || nspecial_article.window == 6) {
		        nspecial_article.window_timer = 299;
		    }
		}
	}
	
	if (window > 5) {
		move_cooldown[AT_NSPECIAL] = 30;
	}
}


if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL] = 30;
    if (state_timer == 1 ){
    	fspecial_times = 0;
    	fspecial_dir = spr_dir == 1 ? 0 : 180;
    }
    if (window == 2){
    	if (window_timer == 1 && fspecial_times < 3) {
    		fspecial_times++;
    		if (!joy_pad_idle) {
				var dd = angle_difference(fspecial_dir, joy_dir);
    			fspecial_dir += min(abs(dd), fspecial_dir_inc) * -sign(dd);
    		}
    		var xdir = lengthdir_x(48 * fspecial_times, fspecial_dir);
    		var ydir = lengthdir_y(48 * fspecial_times, fspecial_dir);
    		create_hitbox(AT_FSPECIAL, fspecial_times, round(x + (48 * spr_dir) + xdir), round(y - 24 + ydir))
    		if (fspecial_times == 2) {
    			sound_play(asset_get("sfx_abyss_explosion_big"));
    		}
    		else {
    			sound_play(asset_get("sfx_abyss_explosion"));
    		}
    	}
    }
    if (window == 4) {
    	var recovery_time = 6 * fspecial_times
        if (special_down && window_timer == recovery_time / 2 && fspecial_times < 3){
            window = 1;
            window_timer = 0;
        }
    	if (window_timer >= recovery_time) {
            window = 5;
            window_timer = 0;
    	}
    }
}
if (attack == AT_USPECIAL){
	if(window == 1) {
		can_fast_fall = false;
		uspecial_nodestart_x = x;
		uspecial_nodestart_y = y;
		uspecial_node_x = uspecial_nodestart_x;
		uspecial_node_y = uspecial_nodestart_y;
		uspecial_grounded = !free
		uspecial_nodestart_dir = 90;	
		if (!joy_pad_idle) {
			var dd = angle_difference(uspecial_nodestart_dir, joy_dir);
			uspecial_nodestart_dir += min(abs(dd), 24) * -sign(dd);
		}
		uspecial_index = 3;
		uspecial_dist = 96;
		if (!special_down && window_timer >= 8) {
			if (window_timer < 16) {
				window = 2;
				window_timer = 0;
				uspecial_dist = 96;
				sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
			}
			else if (window_timer >= 16 && window_timer < 32) {
				window = 3;
				window_timer = 0;
				uspecial_dist = 144;
				sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
			}
			else {
				window = 4;
				window_timer = 0;
				uspecial_dist = 256;
				sound_play(asset_get("sfx_syl_dspecial_growth"));
			}
		}
		if (window_timer == 46) {
			window = 4;
			window_timer = 0;
			uspecial_dist = 256;
			sound_play(asset_get("sfx_syl_dspecial_growth"));
		}
	}
	if(window == 2 || window == 3 || window == 4) {
		can_fast_fall = false;
		can_move = false;
	}
	if(window == 5) {
		uspecial_grounded = false;
		can_fast_fall = false;
	}
	if (window == 2 || window == 3 || window == 4) {
		spr_angle = uspecial_nodestart_dir - 90;
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		var dist = point_distance(uspecial_node_x, uspecial_node_y, x, y);
		var spd = uspecial_dist / window_length;
		hsp = lengthdir_x(spd, uspecial_nodestart_dir);
		vsp = lengthdir_y(spd, uspecial_nodestart_dir);
		
		grav = 0;
		uspecial_index = max(0, ease_linear(3, 0, window_timer, window_length));
	}
	if (window == 5) {
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		grav = 0;
		vsp *= 0.8;
		uspecial_node_x = ease_circIn(round(uspecial_nodestart_x), round(x), window_timer, window_length)
		uspecial_node_y = ease_circIn(round(uspecial_nodestart_y), round(y), window_timer, window_length)
		uspecial_used = true;
		var dist = point_distance(uspecial_node_x, uspecial_node_y, x, y);
		uspecial_index = max(0, ease_circInOut(0, 3, window_timer, window_length));
	}
	if (window == 6) {
		can_fast_fall = false;
		spr_angle = 0;
	}
}

if (attack == AT_DSPECIAL){
	can_fast_fall = 0; //Prevent the player from accidentally fast falling during the move.
    
    //Startup Logic
    if(window == 1) {
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {    //Check to see if the window is at its end.
            var tp_angle = 0;   //The angle at which the teleport will go.
            if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
            	if (joy_dir > 180 && joy_dir < 360 && !free) {
            		if (left_down)
            			tp_angle = 175;
            		else if (right_down)
            			tp_angle = 5;
            		else
                		tp_angle = 270;
            	} 
            	else
                	tp_angle = joy_dir;
	        
	            var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
	            var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
	            
	            x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
	            y_ = y + tp_dist_y;
            }
            else {
	            x_ = x
	            y_ = y
            }
        }
    }
    
    //Teleportation Logic
    if(window == 2) {
        if(window_timer == 1) { //Teleport during the first frame of the active window.
            if(place_meeting(x_, y_, asset_get("par_block"))) { //Check to see if destination is colliding with the stage.
                var tp_dest = stage_collide_alt(x, y, x_, y_, tp_prec); //Use alternate collision function to determine the new teleportation destination.
                x_ = tp_dest[0];
                y_ = tp_dest[1];
            }
            
            //Change the player's location to the teleport destination.
            x = x_;
            y = y_;
        }
    }
    if(window == 3) {
        if(window_timer == 1) { //Teleport during the first frame of the active window.
        	if (right_down - left_down != 0) {
        		spr_dir = right_down - left_down;
        	}
        }
    }
    if (window == 5) {
    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {   
    		if (free) {
    			set_state(PS_PRATFALL)
    		}
    		attack_end();
    	}
    }
}

if (attack == AT_TAUNT) {
	hud_offset = 64;
    if (window == 3){
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            if (!taunt_down) {
                window = 4;
                window_timer = 0;
            }
        }
    }
}

//Final Smash
if (attack == 49) {
	if (window == 1) {	
		ds_list_clear(fs_players)
	}
	
	if (window == 6 || window == 7) {
		with (oPlayer) {
			if (id != other.id) {
				hitstop = 2;
				hitpause = true;
				attack_invince = true;
				invince_time = 2
			}
		}
	}
	
	if (window == 6) {
		shake_camera(12, 2);
	}
	
	if (window == 7) {
		if (window_timer == 90) {
			sound_play(sound_get("sfx_anthem_final2"));
		}
		if (window_timer == 256) {
			sound_play(sound_get("sfx_anthem_final3a"));
		}
		if (window_timer == 276) {
			sound_play(sound_get("sfx_anthem_final3b"));
		}
	}
	if (window == 8) {
		
		for (var i = 0; i < ds_list_size(fs_players); i++) {
			if (window_timer == 1) {
				fs_players[| i].hitstop = 0;
				fs_players[| i].hitpause = false;
				fs_players[| i].invincible = false;
				fs_players[| i].invince_time = 0;
			}
			if (window_timer == 2) {
				var hb = create_hitbox(49, 4, fs_players[| i].x, fs_players[| i].y - 24)
				hb.type = 1;
				hb.x_pos = fs_players[| i].x - x;
				hb.y_pos = fs_players[| i].y - y;
				hb.anthem_track_player = fs_players[| i];
			    var random_effect = random_func(i+1, 2, true);
			    
			    switch (random_effect) {
			        case 0:
			            hb.effect = 1;
			            break;
			        case 1:
			            hb.effect = 10;
			            break;
			        case 2:
			            hb.effect = 11;
			            break;
			    }
	    
				shake_camera(14, 12);
			}
		}
	}
}
//-------------------------------------------------------------------------------------------------------------
//Alternate stage collide function. This must go at the end of attack_update.
#define stage_collide_alt
///stage_collide_alt(x1, y1, x2, y2, prec)
//This recursive script checks from (x1, y1) to (x2, y2) for the location of coordinates
//of the edge of the stage along that line, returning it as an array formated: [x, y].
//
//This script assumes that there is a collision at (x2,y2) and would need to be modified
//if this is not assumed in order to function properly.
//
//  Arguments:
//      x1      The x cooridnate of the starting point, real.
//      y1      The y coordinate of the starting point, real.
//      x2      The x coordinate of the ending point, real.
//      y2      The y coordinate of the ending point, real.
//      prec    The number of samples taken for the measurement, real.
//
//Script by Deor

var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var prec = argument[4];

var qpu_x = (x2 - x1) / prec;  //One nth the length of the x component of the input vector, where n is prec.
var qpu_y = (y2 - y1) / prec;  //One nth the length of the y component of the input vector.
var x_ = x2;    //The location of the closest detection point that is colliding with the
var y_ = y2;    //stage, the default being the destination point.

//Check each detection point to find which is the closest to (x1,y1) while still colliding with the stage.
for(var i = 1; i < prec; i++) {
    if(place_meeting(x2 - qpu_x * i, y2 - qpu_y * i, asset_get("par_block"))) {
        x_ = x2 - qpu_x * i;
        y_ = y2 - qpu_y * i;
    }
}

//If the closest colliding detection point is not the destination, recurse with the new destination being the closest colliding point.
if(x_ != x2 && y_ != y2) {
    return stage_collide_alt(x1, y1, x_, y_, prec);
}
    
//Otherwise, return the closest free detection point.
else {
    return [x2 - qpu_x, y2 - qpu_y];
}
    
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;