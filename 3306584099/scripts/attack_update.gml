//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
	
	case AT_JAB:
		if (window == 4 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_oly_dspecial_dashcancel"), false, noone, 0.7, 1.2);
		}
	break;
	
	case AT_FTILT:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_oly_uspecial_kick"), false, noone, 0.7, 1.2);
		}
	break;
	
	case AT_UTILT:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_oly_fspecial_dash"), false, noone, 0.7, 1.2);
		}
	break;
	
	case AT_DTILT:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_oly_fspecial_dash"), false, noone, 0.7, 0.9);
		}
		
		if (window == 3 && window_timer >= 4 && !hitpause) {
			if (has_hit_player && !was_parried) {
				can_jump = true;
			}
		}
	break;
	
	case AT_DATTACK:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_oly_uspecial_kick"), false, noone, 0.7, 0.9);
		}
		
		var cancel_window_frame = 2;
		can_jump = window == 3 && window_timer >= cancel_window_frame && has_hit_player;
	break;
	
	case AT_FSTRONG:
		if (window == 2 && window_timer == window_end && !hitpause)  {
			sound_play(sound_get("sfx_delta_swipe_medium"), false, noone, 0.7, 1);
		}
		if (window == 3 && window_timer == window_end && !hitpause)  {
			sound_play(sound_get("sfx_delta_swipe_big"), false, noone, 0.8, 1.2);
		}
	break;
	
	case AT_USTRONG:
		if (window == 2 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_oly_uspecial_twirl"), false, noone, 0.7, 1.2);
			sound_play(sound_get("sfx_delta_swipe_medium"), false, noone, 0.7, 1.1);
		}
	break;
	
	case AT_DSTRONG:
		if (window == 2 && window_timer == window_end && !hitpause)  {
			sound_play(sound_get("sfx_delta_swipe_medium"), false, noone, 0.7, 1.15);
		}
	break;
	
	case AT_NAIR:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.7, 1);
		}
	break;
	
	case AT_FAIR:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(asset_get("sfx_oly_uspecial_hit"), false, noone, 0.6, 1);
		}
	break;
	
	case AT_BAIR:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(sound_get("sfx_delta_swipe_medium"), false, noone, 0.6, 1);
		}
	break;
	
	case AT_DAIR:
		if (window == 1 && window_timer == window_end && !hitpause)  {
			sound_play(sound_get("sfx_delta_swipe_medium"), false, noone, 0.6, 1.3);
		}
	break;
	
	case AT_NSPECIAL:
		move_cooldown[AT_NSPECIAL] = 30;
		can_fast_fall = false;
		can_wall_jump = false;
    	if (free) {
			if (window == 2 || window == 6) {
				grav = 0.45;
				vsp = min(vsp, 6);
			}
			if ((window == 4 || window == 7) && window_timer == 1 && !hitpause) {
				vsp -= 6;
			}
			if ((window == 5 || window == 9)) {
    			hsp = clamp(hsp, -1, 1);
				vsp = min(vsp, 8);
			}
			else {
    			hsp = clamp(hsp, -1, 1);
			}
    	}
    	
		if (window == 1 && window_timer == 1 && !hitpause) {
			window_timer_prev = 0;
			window_loops_prev = 0;
			nspecial_charge = 0;
		}
		
		if (window == 2 && !hitpause) {
			var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);
			
			if (window_timer == window_end-1) {
				if (window_loops >= window_loop_value) {
					window = 6;
					window_timer = 0;
					window_loops = 0;
				}
			}
			
			if (!special_down) {
				window = 3;
				window_timer = 0;
				window_loops = 0;
			}
			else
				nspecial_charge ++;
			
			//Cancelling 
			if (window_loops >= 2) {
				if (shield_pressed) {
					window = 10;
					window_timer = 0;
					clear_button_buffer(PC_SHIELD_PRESSED);
				}
				var dir_pressed = sign(right_down - left_down);
				if (dir_pressed != spr_dir && dir_pressed != 0 && window_loops > window_loops_prev) {
					window = 9;
					window_timer = 0;
					spr_dir = -spr_dir;
					window_timer_prev = window_timer + 1;
					window_loops_prev = window_loops;
				}
			}
		}
		
		if (window == 6 && !hitpause) {
			var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);
			
			if (window_loops == 1 && window_timer == 1) {
				sound_play(sound_get("sfx_nspecial_charge_full"));
			}
		}
		
		if (window == 9 && window_timer == window_end && !hitpause) {
			window = 2;
			window_timer = window_timer_prev;
			window_loops = window_loops_prev;
		}
		if (window == 10 && window_timer == window_end && !hitpause) {
			if (left_down || right_down) {
				set_state(PS_PARRY_START);
			}
		}
	break;
	case AT_FSPECIAL:
		move_cooldown[AT_FSPECIAL] = 60;
		
		can_fast_fall = false;
		can_wall_jump = false;
		
    	if (free) hsp = clamp(hsp, -2, 2);
		vsp = min(vsp, 6);
	break;
	
	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = false;
		if (window == 1 && !hitpause) {
			if(window_timer == 1) {
				uspecial_landed = true;
				with (obj_article_platform) {
					if (player == other.player && player_id == other.id) {
						if (state != 2 && state != 4) {
							state = 4;
							state_timer = 0;
						}
					}
				}
			}
			if (!uspecial_can_spawn || shield_down) {
				if (free) {
					if(window_timer == 1) vsp = -1;
					hsp = clamp(hsp, -2, 2);
				}
				if(window_timer == window_end) {
					window = 4;
					window_timer = 0;
				}
			}
			else {
				if (window_timer == 1) {
					uspecial_y_min = 100;
					uspecial_y_max = 240;
					uspecial_ystart = y;
					if (uspecial_2_cancel_times >= 1)
						uspecial_2_cancel_times ++;
				}
				if(free) {
					hsp = clamp(hsp, -2, 2);
					vsp = 0;
	                if (y > room_height - uspecial_y_min)
	                {
	                    y += ((room_height - uspecial_y_min) - y) / 8
	                }
	                else if (y < 0 + uspecial_y_max)
	                {
	                    y += ((0 + uspecial_y_max) - y) / 8
	                }
	                else {
						if((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom + 80, asset_get("par_block"), 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom + 80, asset_get("par_jumpthrough"), 0, 0))) {
							y -= 8;
						}
						else {
							y = lerp(uspecial_ystart, uspecial_ystart - 80, window_timer / window_end)
						}
	                }
				}
                
				if(window_timer == window_end) {
					if(!free) {
                    	var _art = instance_create(round(x),round(y + 2),"obj_article_platform")
                    	_art.from_ground = true;
						spawn_hit_fx(round(x), round(y), fx_uspecial_spawn);
					}
					else {
                    	var _art = instance_create(round(x),round(room_height + 128),"obj_article_platform")
                    	_art.from_ground = false;
					}
					sound_play(asset_get("sfx_ice_uspecial_jump"))
					sound_play(asset_get("sfx_kragg_spike"))
				}
			}
		}
		if (window == 2 && !hitpause) {
			can_move = false;
		}
		if (window == 3 && window_timer >= 12 && !hitpause) {
			if (has_hit_player && !was_parried)
				can_jump = true;
		}
		if (window == 5 && window_timer == window_end && !hitpause) {
			attack_end();
			set_state(PS_PRATFALL);
		}
	break;
	
	case AT_USPECIAL_2:
		can_fast_fall = false;
		
		var uspecial_move_speed = 3.5;
		
		if (window == 1 && !hitpause) {
			if (window_timer == 1) {
				uspecial_hsp = 0;
				uspecial_vsp = 0;
				uspecial_stored_plat = noone;
				uspecial_landed = false;
			}
			if (instance_exists(uspecial_on_plat)) {
				x += (uspecial_on_plat.x - x) / 5;
				uspecial_stored_plat = uspecial_on_plat;
			}
			
			if(window_timer == window_end) {
				if (instance_exists(uspecial_stored_plat)) {
					if (uspecial_stored_plat.state != 2) {
						uspecial_stored_plat.state = 3;
						uspecial_stored_plat.state_timer = 0;
					}
					spawn_base_dust(x, y, "djump");
				}
				sound_play(asset_get("sfx_ice_uspecial_jump"))
				sound_play(asset_get("sfx_kragg_spike"))
				
				uspecial_2_cancel_times ++;
				uspecial_can_spawn = uspecial_2_cancel_times == 1 ? true : false;
			}
		}
		if ((window == 2 ||window == 3) && !hitpause) {
			can_move = window == 2;
			
			if (was_parried) {
				window = 7;
				window_timer = 0;
				destroy_hitboxes();
			}
			
		}
		
		if (window == 4 && !hitpause) {
			can_move = true;
			grav = 0.6;
			can_wall_jump = true;
			hsp = clamp(hsp, -4, 4)
			
			//A safer way to do faster falling... maybe
			if (vsp >= max_fall) {
				uspecial_vsp += grav;
			}
			else {
				uspecial_vsp = vsp;
			}
			
			uspecial_vsp = min(uspecial_vsp, 12);
			
			if (!place_meeting(x, y + uspecial_vsp, asset_get("par_jumpthrough")))
				y += uspecial_vsp;
				
			if (shield_pressed) {
				window = 7;
				window_timer = 0;
				destroy_hitboxes();
			}
			
			if (!free) {
				window ++;
				window_timer = 0;
				sound_play(asset_get("sfx_ori_stomp_hit"));
				sound_play(asset_get("sfx_ori_energyhit_heavy"));
				destroy_hitboxes();
				var _fx = spawn_hit_fx(round(x), round(y), fx_uspecial_expl);
				_fx.depth = depth - 2
				_fx.pause = 8;
			}
		}
	break;
	
	case AT_DSPECIAL:
		can_fast_fall = false;
		if (window == 1 && window_timer == 1 && !hitpause) {
			can_spawn_wall = true;
		}
		
		if (free) {
			if (window <= 3) {
				grav = 0.4;
				vsp = min(vsp, 1);
			}
			if (window == 4) {
				vsp -= can_spawn_wall ? 2 : 0.5;
			}
			
			hsp = clamp(hsp, -1, 1);
		}
		
		if (window == 2 && window_timer == 2 && !hitpause) {
			//check_spawn_wall(x + (64 * spr_dir), y - 64);
			spawn_wall(16, -128);
		}
		
		if (window == 2 && !hitpause)
		{
			if (window_timer > 12 && (!can_spawn_wall || !special_down)) {
				window ++;
				window_timer = 0;
			}
		}
		if (window == window_last && !hitpause) {
	    	move_cooldown[AT_DSPECIAL] = 30;
		}
	break;
	case AT_TAUNT:
    	if (window == 2 && !hitpause) {
            if (!joy_pad_idle || jump_pressed || tap_jump_pressed || is_attack_pressed(DIR_ANY) || is_strong_pressed(DIR_ANY) || is_special_pressed(DIR_ANY) || shield_pressed || taunt_pressed) {
                window = 7;
                window_timer = 0;
            }
    	}
	break;
	case 2:
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); // put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		
		if (window == 1 && window_timer == window_end-6 && !hitpause) {
			spawn_dust_fx(round(x), round(y), sprite_get("intro_fx"), 48);
		    sound_play(asset_get("sfx_ori_grenade_hit_ground"));
		    sound_play(asset_get("sfx_ice_dspecial_ground"));
		}
	break;
}

#define spawn_wall(_spawn_x, _spawn_y)
var old_mask_index = mask_index
mask_index = sprite_get("icewall_collision");

var _x = x;
var _y = y;
x = round(x + (_spawn_x * spr_dir));
y = (round(y + _spawn_y) div 32) * 32;

var i = 0;

if (place_meeting(x, y, asset_get("par_block")))
	can_spawn_wall = false;

if (can_spawn_wall) {
	while (!place_meeting(x, y, asset_get("par_block")))
	{
	    y += 32;
	    i++
		can_spawn_wall = true;
	    if (y > room_height || i >= 60)
	    {
	    	can_spawn_wall = false;
	        break;
	    }
	}
	//print("Collided " + string(i) + " times.")
}

if (can_spawn_wall) {
	var off_r = !position_meeting(bbox_right + 2, bbox_bottom + 4, asset_get("par_block")) && !position_meeting(bbox_right + 2, bbox_bottom + 4, asset_get("par_block"))
	var off_l = !position_meeting(bbox_left - 2, bbox_bottom + 4, asset_get("par_block")) && !position_meeting(bbox_left - 2, bbox_bottom + 4, asset_get("par_block"))

	if (off_r || off_l) {
		//can_spawn_wall = false;
	}
}

_spawn_x = round(x);
_spawn_y = round(y);

x = _x;
y = _y;
mask_index = old_mask_index;

if (can_spawn_wall) {
	sound_play(asset_get("sfx_kragg_spike"))
	var wall = instance_create(round(_spawn_x), round(_spawn_y), "obj_article_solid")
	wall.spr_dir = -spr_dir;
	wall.hsp = 3 * -wall.spr_dir;
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
    for(var i = 1; i < prec; i+= 16) {
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

