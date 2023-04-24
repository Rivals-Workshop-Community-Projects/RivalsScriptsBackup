//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
    case AT_JAB:
        if (has_hit_player && window = 3 && window_timer >= 4) {
            can_attack = true;
        }
    break;
    case AT_FTILT:
        if ((window == 1 || window == 2) && !hitpause) {
            ftilt_aim = (is_attack_pressed(DIR_DOWN) - is_attack_pressed(DIR_UP));
            if (window_timer >= window_end) {
                if (ftilt_aim == -1) {
                    window = 5;
                    window_timer = 0;
                }
                if (ftilt_aim == 1) {
                    window = 8;
                    window_timer = 0;
                }
            }
        }
    break;
    case AT_UTILT:
    	if (window >= 2) {
    		hud_offset = 160;
    	}
    break;
    case AT_NAIR:
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_SFX_FRAME)) {
            sound_play(sound_get("sfx_anthem_fspecial1"))
        }
    break;
    
    case AT_FAIR:
        if (window == 2 || window == 3) {
            fair_wall_timer = 0;
            if (collision_rectangle(x + 32 * spr_dir, y-40, x + 152 * spr_dir, y-40, asset_get("par_block"), 1, 1) && fair_wall_times < fair_wall_times_max && !hitpause && !has_hit_player && !was_parried) {
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
                hsp = 0;
                vsp = 0;
                if (collision_rectangle(wall_player_x, y-32, wall_player_x + 104 * spr_dir, y-32, asset_get("par_block"), 1, 1)) {
                    while (collision_rectangle(wall_player_x, y-32, wall_player_x + (104 + wall_player_xoffset) * spr_dir, y-32, asset_get("par_block"), 1, 1) && abs(wall_player_xoffset) < 152) {
                        wall_player_xoffset -= 1;
                    }
                }
                else if (collision_rectangle(wall_player_x + 104 * spr_dir, y-32, wall_player_x + 152 * spr_dir, y-32, asset_get("par_block"), 1, 1)) {
                    while (!collision_rectangle(wall_player_x, y-32, wall_player_x + (104 + wall_player_xoffset) * spr_dir , y-32, asset_get("par_block"), 1, 1) && abs(wall_player_xoffset) < 152) {
                        wall_player_xoffset += 1;
                    }
                }
                wall_player_xoffset -= spr_dir;
                var dust = spawn_base_dust(wall_player_x + (wall_player_xoffset + 94) * spr_dir, y - 32, "land", 1);
                dust.draw_angle = spr_dir == -1 ? 270 : 90;
            }
    		//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
    		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
            if (window_timer <= window_length / 2) {
    			x = floor(wall_player_x) + (ease_circOut( 0, floor(wall_player_xoffset * spr_dir), window_timer, floor(window_length / 2)));
            }
        }
        if (window == 6 && !hitpause) {
            djumps = 0;
        	fair_wall_timer ++;
            if (down_down) {
                if (jump_pressed || attack_pressed) {
                    clear_button_buffer(PC_JUMP_PRESSED);
                    clear_button_buffer(PC_DOWN_HARD_PRESSED);
                    window = 8;
                    window_timer = 0;
                    attack_end();
                }
            }
            else {
                if (jump_pressed || (can_tap_jump() && up_pressed)) {
                    clear_button_buffer(PC_JUMP_PRESSED);
                    window = 7;
                    window_timer = 0;
                }
            }
            if (fair_wall_timer > fair_wall_timer_max) {
                can_jump = true;
                window = 8;
                window_timer = 0;
                djumps = 0;
                fair_wall_timer = 0;
                attack_end();
            }
            if (!wall_test(80, -32, 144, 28, x, y)) {
                window = 8;
                window_timer = 0;
                attack_end();
                set_state(PS_PRATFALL);
            }
        }
        if (window == 5 || window == 6) {
            grav = 0;
            can_move = false;
            can_fast_fall = false;
        }
        if (window == 7 && !hitpause) {
            grav = 0;
            can_move = false;
            if (window_timer == window_end) {
                attack_end();
                if (jump_down) {
                    can_fast_fall = true;
                    clear_button_buffer(PC_JUMP_PRESSED);
                    vsp = -jump_speed;
                }
                else {
                    vsp = -short_hop_speed;
                }
                if (left_down)
                    {
                        hsp -= (jump_change * 1.5)
                        if (hsp < (-jump_change))
                            hsp = (-jump_change)
                    }
                    if (right_down)
                    {
                        hsp += (jump_change * 1.5)
                        if (hsp > jump_change)
                            hsp = jump_change
                    }
            }
        }
    break;
    case AT_DAIR:
        if (window == 1) //reset variables
		{
			my_grab_id = noone; 
			grab_time = 0;
		}

		if (instance_exists(my_grab_id)) //if you have grabbed someone
		{
		    with (my_grab_id)
			{
		    	if (other.window == 2) { 
					with (other)
					{
						window = 4;
						window_timer = 0;
						destroy_hitboxes();
					}
					break;
		    	}
		    	if (other.hitpause && other.hitstop > 0 && other.window < 5) {
					other.x = ease_sineInOut(other.x, x, other.grab_time, 6);
            		other.y = ease_sineInOut(other.y, y-80, other.grab_time, 6);
		    	}
    			other.force_depth = true; //this allows us to change the depth of the enemy to make them appear in front
    			other.depth = depth+1;
		    	if (other.window == 4) { 
		    	    if (ceil(other.image_index) == 11)
					{
						x = other.x - 18 * other.spr_dir;
						y = other.y + 28;
					}
		    	    if (ceil(other.image_index) == 12)
					{
						x = other.x - 38 * other.spr_dir;
						y = other.y - 10;
					}
		    	    if (ceil(other.image_index) == 13)
					{
						x = other.x - 18 * other.spr_dir;
						y = other.y + 10;
					}
					if (other.window_timer == other.window_end + 1) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
					{
						x = other.x;
						y = other.y + 38;
					   with (other) {
    						var throw_hbox = create_hitbox(AT_DAIR, 2, round(x), round(y));
    
    						//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
    						//we are disabling the detection of the hitbox for any player that isn't the grabbed player
    						for (var i = 0; i <= 4; ++i)
    						{
    							throw_hbox.can_hit[i] = false;
    							throw_hbox.can_hit[my_grab_id.player] = true;
    						}
					   }
					}
		    	}
			}
			
		}
		if (window == 4) {
		    vsp = 0;
		    hsp = 0;
		    grav = 0;
		    
		    if (window_timer == 4) {
		        sound_play(asset_get("sfx_syl_fspecial_bite"));
		    }
		}
	    can_fast_fall = window != 4;
	    can_move = window != 4;
    break;
    case AT_FSTRONG:
        if (window == 1) //reset variables
		{
			my_grab_id = noone; 
			grab_time = 0;
		}

		if (instance_exists(my_grab_id)) //if you have grabbed someone
		{
		    with (my_grab_id)
			{
		    	if (hitpause && hitstop > 0 && other.window < 4) {
					x = ease_sineInOut(x, other.x + (96 * other.spr_dir), other.grab_time, 4);
            		y = ease_sineInOut(y, other.y - 16, other.grab_time, 4);
		    	}
				
			}
		}
	break;
    case AT_USTRONG:
    	if (window >= 4) {
    		hud_offset = 64;
    	}
    break;
    case AT_DSTRONG:
        if (window == 1) //reset variables
		{
			dstrong_hit_tipper = false;
		}
		
    	if (window == 2 && window_timer == window_end && !hitpause) {
	        var ground_test = collision_point(floor(x + 128 * spr_dir), floor(y), asset_get("par_block"), 1, 1)
	        var plat_test = collision_point(floor(x + 128 * spr_dir), floor(y), asset_get("par_jumpthrough"), 1, 1)
	        if (ground_test || plat_test) {
	            window = 5;
	            window_timer = 0;
    			create_hitbox(AT_DSTRONG, 5, round(x), round(y));
	            sound_play(sound_get("sfx_anthem_hitground"))
	        }
    	}
    break;
    case AT_NSPECIAL:
    	can_fast_fall = false;
    	if (free) hsp = clamp(hsp, -4, 4);
    	var nspecial_can_cancel = false;
    	if (window == 1 && !hitpause) {
    		if (window_timer >= 7 && shield_pressed) nspecial_can_cancel = true;
    		if (window_timer == window_end && !special_down) {
    			window = 6;
    			window_timer = 0
    		}
    	}
    	if (window == 2 && !hitpause) {
    		if (shield_pressed) nspecial_can_cancel = true;
    		if (!special_down) {
    			window = window_timer >= 30 ? 9 : 6;
    			window_timer = 0
    		}
    	}
    	if (window == 3 && !hitpause) {
    		if (window_timer == 24) {
	            sound_play(sound_get("sfx_anthem_nspecial_full"));
    		}
    		if (window_timer == window_end) {
    			var spawn = true;
    			with (obj_article2) {
    				if (player_id.url == other.url && get_player_name(player_id.player) == get_player_name(other.player))
    					spawn = false;
    			}
    			if (spawn)
    				instance_create(0, 0, "obj_article2");
    		}
    	}
    	if (window == 5) 
    		move_cooldown[AT_NSPECIAL] = !has_hit_player ? 100 : 50;
    	if (window == 8) 
    		move_cooldown[AT_NSPECIAL] = !has_hit_player ? 80 : 30;
    	if (window == 11) 
    		move_cooldown[AT_NSPECIAL] = !has_hit_player ? 60 : 15;
    	if (nspecial_can_cancel) {
    		window = 12;
    		window_timer = 0;
    		move_cooldown[AT_NSPECIAL] = 15;
    	}
    break;
    case AT_FSPECIAL:
    	can_fast_fall = false;
    	if (free) hsp = clamp(hsp, -2, 2);
		vsp = min(vsp, 6);
    	if (window == 1 && !hitpause) {
    		if (window_timer >= window_end && special_down) {
    			window = 5;
    			window_timer = 0
    		}
    	}
    	if (window == 5 && !hitpause) {
    		if (!special_down) {
    			window = window_timer >= window_end ? 6 : 2;
    			window_timer = 0
    		}
    	}
    break;
    case AT_USPECIAL:
    	can_fast_fall = false;
    	can_move = window == 10;
    	var min_dist = 96;
    	var max_dist = 256;
    	if (window == 1 && window_timer == 1) {
    		started_free = free;
    		uspecial_portal_angle = 90;
    		uspecial_portal_distance = min_dist;
    				
			uspecial_portal_x = x + lengthdir_x(uspecial_portal_distance, uspecial_portal_angle);
			uspecial_portal_y = y + lengthdir_y(uspecial_portal_distance, uspecial_portal_angle);
    	}
    	if ((window == 1 || window == 2) && !hitpause) {
		    vsp = min(vsp, 4);
	        if (!joy_pad_idle) {
	            var ang = joy_dir
	            uspecial_portal_angle += angle_difference(ang,uspecial_portal_angle) * 0.1;
	    		
	    		if (!started_free) {
		            if (uspecial_portal_angle > 270 || uspecial_portal_angle < 2) {
		                uspecial_portal_angle = 2;
		            }
		            if (uspecial_portal_angle > 178 && uspecial_portal_angle < 270) {
		                uspecial_portal_angle = 178;
		            } 
	    		}
	        }
	        uspecial_portal_angle %= 360;
	        if (uspecial_portal_angle < 90 || uspecial_portal_angle < -90)
	        	spr_dir = -1
	        if (uspecial_portal_angle > 90 || uspecial_portal_angle > -90)
	        	spr_dir = 1
			var _x = x + lengthdir_x(uspecial_portal_distance, uspecial_portal_angle);
			var _y = y + lengthdir_y(uspecial_portal_distance, uspecial_portal_angle);
			if (collision_circle(_x, _y, 2, asset_get("par_block"), 1, 1)) {
				var j = 0;
				while (collision_circle(_x, _y, 2, asset_get("par_block"), 1, 1) && j < 16) {
					_x -= lengthdir_x(2, uspecial_portal_angle) + hsp;
					_y -= lengthdir_y(2, uspecial_portal_angle) + vsp;
					j++
				}
			}
			else {
				if (window == 2) {
		        	if (uspecial_portal_distance < max_dist )
	    				uspecial_portal_distance += ease_linear(1, 5, window_timer, window_end);
				}
			}
			uspecial_portal_x = _x;
			uspecial_portal_y = _y;
			
	        	
			if (!special_down && window == 2) {
				window ++;
				window_timer = 0;
			}
			
    	}
    	
    	if (window == 3 && !hitpause) {
    		hsp = 0;
    		vsp = 0;
    		if (window_timer == 2) {
    			spawn_dust_fx(round(x), round(y - 48), sprite_get("fx_uspecial_effect"), 30);
    		}
    	}
		var charge_amt = (uspecial_portal_distance - min_dist) / max_dist;
		
    	if (window == 3 && window_timer == window_end && !hitpause) {
    		var dust = spawn_dust_fx(round(uspecial_portal_x), round(uspecial_portal_y), sprite_get("fx_uspecial_portal_despawn"), 20);
                dust.draw_angle = uspecial_portal_angle;
    		x = uspecial_portal_x;
    		y = uspecial_portal_y;
    		spawn_dust_fx(round(x), round(y - 48), sprite_get("fx_uspecial_effect"), 30);
    		if (uspecial_portal_angle > 60 && uspecial_portal_angle < 120) {
    			window = 4;
    			window_timer = 0;
    		}
    		else if (uspecial_portal_angle > -120 && uspecial_portal_angle < -60) {
    			window = 4;
    			window_timer = 0;
    		}
    		else {
    			window = 7;
    			window_timer = 0;
    		}
    		set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, ceil(lerp(15, 30, charge_amt)));
    		sound_play(sound_get("sfx_anthem_uspecial1"));
    		hsp = lengthdir_x(lerp(10, 20, charge_amt), uspecial_portal_angle);
    		vsp = lengthdir_y(lerp(10, 20, charge_amt), uspecial_portal_angle);
	        if (sign(hsp) != 0)
	        	spr_dir = sign(hsp)
    	}
    	
    	if ((window >= 4 && window <= 6) || (window >= 7 && window <= 9) ) {
    		hsp *= 0.9;
    		vsp *= 0.9;
    		if ((window == 4 || window == 7) && window_timer == window_end) {
	    		for (var i = 0; i < 4; i++) {
	    			var uncharged= i <= 0 ? 2 : 1;
	    			var charged = i <= 0 ? 4 : 3;
	    			var hbox = spawn_angled_hitbox(AT_USPECIAL, uncharged, 0, -32, (i + 1) * 32, uspecial_portal_angle)
	    			hbox.damage = lerp(get_hitbox_value(AT_USPECIAL, uncharged, HG_DAMAGE), get_hitbox_value(AT_FSPECIAL, charged, HG_DAMAGE), charge_amt)
		    		hbox.kb_value = lerp(get_hitbox_value(AT_USPECIAL, uncharged, HG_BASE_KNOCKBACK), get_hitbox_value(AT_FSPECIAL, charged, HG_BASE_KNOCKBACK), charge_amt)
		    		hbox.kb_scale = lerp(get_hitbox_value(AT_USPECIAL, uncharged, HG_KNOCKBACK_SCALING), get_hitbox_value(AT_FSPECIAL, charged, HG_KNOCKBACK_SCALING), charge_amt);
		    		hbox.image_xscale = (48 + (i * 16) )/200;
		    		hbox.image_yscale = (48 + (i * 16) )/200;
	    		}
	    		window++;
	    		window_timer = 0;
    		}
    	}
    	
    	if (window == 6 || window == 9 || window == 10) {
    		if (uspec_times == 0 && !started_free && has_hit_player && impulse_active) {
    			uspec_times += 1;
    			can_jump = true;
    		}
    	}
    	if (!free){
	    	if ((window == 6 || window == 9) && window_timer == window_end && !hitpause) {
	    		vsp = -2;
	    	}
    	}
    	
    	if (window == 10 && window_timer == window_end && !hitpause) {
			attack_end();
			set_state(PS_PRATFALL);
			window = 1;
			window_timer = 0;
    	}
    	
    	can_wall_jump = window == 6 || window == 9 || window == 10;
    break;
    case AT_DSPECIAL:
    	can_fast_fall = false;
    	can_move = window < 7;
    	move_cooldown[AT_DSPECIAL] = 20;
    	if (free && window < 7) hsp = clamp(hsp, -2, 2);
		if (window < 7) vsp = min(vsp, 1);
    	if (window == 1 && window_timer == window_end && !hitpause) {
			var nspecial_article = instance_create(x + (34 * spr_dir), y - 48, "obj_article1");
			nspecial_article.spr_dir = spr_dir;
    	}
    	if (window >= 8) {
    		hsp = 0;
    		vsp = 0;
    		can_move = false;
    	}
    break;
}
#define wall_test(_x, _y, _w, _h, x_rel, y_rel)
var collision_x1 = _x - _w / 2;
var collision_y1 = _y - _h / 2;
var collision_x2 = _x + _w / 2;
var collision_y2 = _y + _h / 2;
return spr_dir == 1 ? collision_rectangle(x_rel + collision_x1, y_rel + collision_y1, x_rel + collision_x2, y_rel + collision_y2, asset_get("par_block"), 1, 1) 
                : collision_rectangle(x_rel - collision_x2, y_rel + collision_y1, x_rel - collision_x1, y_rel + collision_y2, asset_get("par_block"), 1, 1);

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

#define spawn_angled_hitbox(_attack, _num, _x, _y, _len, _dir)

if hitpause return;

var ld_x = _x + lengthdir_x(_len, _dir);
var ld_y = _y + lengthdir_y(_len, _dir);

var hbox = create_hitbox(_attack, _num, round(x + ld_x), round(y + ld_y));
hbox.x_pos = round(ld_x);
hbox.y_pos = round(ld_y);

return hbox;