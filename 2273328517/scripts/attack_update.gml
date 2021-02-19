// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

switch (attack) {
	case AT_EXTRA_2:
		if (window == 1) {
			if (state_timer == 9) {
				sound_play(sound_get("crackling"),true);
			}
			x += dash_speed * spr_dir;
			vsp = run_flight_speed;
			if ((right_down - left_down) == spr_dir) {
				if (window_timer == window_length) {
					window_timer = 0;
				}
			} else {
				hsp *= 0.5;
				window_timer = 0;
				window = 2;
			}
			if (attack_pressed) {
				set_attack(AT_DATTACK);
			}
		}
		free = false;
		can_jump = true;
		can_ustrong = true;
		can_strong = true;
		can_wall_jump = true;
		can_ustrong = true;
		can_shield = true;
		break;
	case AT_DATTACK:
	    if window == 2 && window_timer == 1 {
	        x += dattack_offset*spr_dir;
	        spr_dir *= -1;
	        hsp *= -1;
	    }
		can_wall_jump = true;
		break;
	case AT_NAIR:
		if (vsp > 0 && window != 1 && window != 4) {
			grav = 0;
		} else {
			grav = gravity_speed;
		}
		if (window == 1 && window_timer == window_length && !hitpause) {
			vsp = min(0, vsp);
		}
		if (window == 3 && window_timer == 1 && !hitpause) {
			sound_play(asset_get("sfx_sand_screech"));
		}
		break;
	case AT_EXTRA_1:
		//char_height = -300;
	    char_height = lerp(char_height,-300,char_height);
	    if window_timer == 60 char_height = char_heigh_orig;
	    if window_timer == 10 sound_play(asset_get("sfx_swipe_medium1"));
	    if window_timer == 35 sound_play(asset_get("sfx_syl_fspecial_bite"));
	    if window_timer == 20 sound_play(sound_get("snap1"));
    	break;
    case AT_DSPECIAL:
    	//Mojibake Code
    	/*char_height = dspec_char_height; 
	    if window == 2 {
	        sound_play(sound_get("elu"));
	        if (attack_down || special_down || taunt_down ){
	            dspec_attack = attack_down;
	            dspec_special = special_down;
	            dspec_down = down_down;
	            dspec_up = up_down;
	            dspec_left = left_down;
	            dspec_right = right_down;
	            dspec_taunt = taunt_down;
	            window_timer = 0;
	            window = 3;
	        }
	    }
	    if window == 3 {
	        with asset_get("oPlayer") {
	            if id != other.id {
	                if (taunt_down && other.dspec_taunt) || ((attack_down && attack_down == other.dspec_attack) || (special_down && special_down == other.dspec_special)) && 
	                (other.dspec_down == down_down && other.dspec_up == up_down && (other.dspec_left == left_down || other.dspec_right == right_down)) {
	                    //print_debug("AAAA");
	                    with other {
	                        create_hitbox(AT_DSPECIAL,1,other.x,other.y);
	                        sound_play(asset_get("jack_grunt"));
	                        window_timer = 0;
	                        window = 4;
	                    }
	                }
	            }
	        }
	    }
	    if window == 4 char_height = char_heigh_orig;*/
	    if window == 2 && window_timer == 1 {
	    	cam_frozen = !cam_frozen;
    		if (cam_frozen) {
    			cam_freeze_timer = cam_freeze_time;
    		}
    		
    		cam_pos = [get_instance_x(camera_obj),get_instance_y(camera_obj)];
	    }
    	break;
    case AT_FSPECIAL:
    	if (window == 1 && window_timer == window_length) {
    		if (ds_list_size(edge_statics) > 0) {
				for (i = 0; i < ds_list_size(edge_statics); i++) {
				    ds_list_find_value(edge_statics, i).cd = static_death;
				    var static_x = ds_list_find_value(edge_statics, i).x;
        			var static_y = ds_list_find_value(edge_statics, i).y;
				    var tendril = instance_create(0, 0, "obj_article2");
				    switch string_char_at(ds_list_find_value(edge_static_labels, i), 0) {
				    	case "b":
				    		// bottom
				    		tendril.rotation = 0;
				    		tendril._x = static_x - 64;
				    		tendril._y = static_y - 188;
				    		break;
				    	case "r":
				    		// right
				    		tendril.rotation = 1;
				    		tendril._x = static_x - 192;
				    		tendril._y = static_y + 64;
				    		break;
				    	case "t":
				    		// top
				    		tendril.rotation = 2;
				    		tendril._x = static_x + 64;
				    		tendril._y = static_y + 198;
				    		break;
				    	case "l":
				    		// left
				    		tendril.rotation = 3;
				    		tendril._x = static_x + 198;
				    		tendril._y = static_y - 64;
				    }
				}
			}
    	}
    	break;
    case AT_DTILT:
    	if (window == 3 && window_timer == window_length) {
    		dtilt_end = true;
    	}
    	break;
    case AT_FSTRONG:
    	if window == 1 && window_timer == 20 sound_play(sound_get("modem1"));
    	break;
    case AT_USTRONG:
    	if window == 1 && window_timer == 12 sound_play(sound_get("modem2"));
    	break;
    case AT_DSTRONG:
    	if (free) {
			if (window == 3 && dstrong_loops >= max_dstrong_loops) {
				can_jump = true;
			}
    		can_wall_jump = true;
    	}
    	if (window == 3 && (!free || dstrong_hit) && !hitpause) {
    		if (dstrong_hit) {
    			hsp *= 1/3;
    		}
    		sound_play(land_sound);
			var dust = spawn_dust_fx(x + hsp, y, asset_get("dust_land_spr"), 18);
			if (instance_exists(dust)) {
				dust.spr_dir *= 0.5;
				dust.image_yscale = 0.5;
			}
    		window_timer = 0;
    		window = 4;
    		with (pHitBox) {
    			if (player_id == other && attack == AT_DSTRONG && hbox_num == 1) {
    				instance_destroy(self);
    			}
    		}
    	}
    	if (window == 3 && window_timer == window_length) {
    		dstrong_loops++;
    	}
    	if (dstrong_hit) {
    		free = false;
    	}
    	break;
    case AT_NSPECIAL:
    	if (window == 1) {
    		vsp = min(0, vsp);
    		if right_down spr_dir = 1;
    		if left_down spr_dir = -1;
    	}
    	if (window == 2 && window_timer == 3) {
    		if (!instance_exists(nspecial_in)) {
        		nspecial_in = instance_create(x-ustrong_offset[0]*spr_dir,y-ustrong_offset[1],"obj_article3");
    		} else {
    			nspecial_in.state = 2;
    			nspecial_in.state_timer = 0;
    			nspecial_in = instance_create(x-ustrong_offset[0]*spr_dir,y-ustrong_offset[1],"obj_article3");
    		}
    	}
    	break;
    case AT_JAB:
    	if (window == 2 && window_timer == 1) {
    		temp_jab_offset = jab_offset;
		    while (!collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("par_block"),true,true) && 
		           !collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("jumpthrough_32_obj"),true,true)) && 
		           !free && temp_jab_offset > -10 {
		        temp_jab_offset -= 1;
		    }
		    //if !collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("par_block"),true,true) temp_jab_offset = 0;
		    var jab_art = instance_create(x+spr_dir*temp_jab_offset,y,"obj_article1");
		    jab_art.att = AT_JAB;
		    //jab_art._init = 1;
    	}
    	break;
    case AT_USPECIAL:
    	can_move = false;
		if (special_down && window == 1 && window_timer == window_length) {
			nspec_tele = true;
		}
		if (window == 1 || u_scanlines && (state_timer % 8 == 0 || window == 2 && window_timer == window_length - 1)) {
			uspec_rot = joy_dir;
		}
		if (window == 1 && window_timer == 1) {
			uspec_res_max = [view_get_wview()/2 + get_instance_x(camera_obj), view_get_hview()/2 + get_instance_y(camera_obj)];
			uspec_res_min = [get_instance_x(camera_obj) - view_get_wview()/2, get_instance_y(camera_obj) - view_get_hview()/2];
			uspec_top_right_angle = arctan((y - uspec_res_min[1])/(uspec_res_max[0] - x));
			uspec_top_left_angle = pi - arctan((y - uspec_res_min[1])/(x - uspec_res_min[0]));
			uspec_bottom_left_angle = pi + arctan((uspec_res_max[1] - y)/(x - uspec_res_min[0]));
			uspec_bottom_right_angle = (2 * pi) - arctan((uspec_res_max[1] - y)/(uspec_res_max[0] - x));
		}
		var adj = 0;
		var opp = 0;
		var ang = degtorad(uspec_rot);
		if (ang >= uspec_top_right_angle && ang <= uspec_top_left_angle) {
			// top
			opp = y - uspec_res_min[1];
			adj = round(opp/tan(ang));
			var side = "top";
		} else if (ang >= uspec_bottom_left_angle && ang <= uspec_bottom_right_angle) {
			// bottom
			opp = y - uspec_res_max[1];
			adj = round(opp/tan(ang));
			var side = "bottom";
		} else if (ang > uspec_top_left_angle && ang < uspec_bottom_left_angle) {
			// left
			adj = uspec_res_min[0] - x;
			opp = adj * tan(ang);
			var side = "left";
		} else {
			// right
			adj = uspec_res_max[0] - x;
			opp = adj * tan(ang);
			var side = "right";
		}
		var new_dest = [clamp(x + adj, uspec_res_min[0], uspec_res_max[0]), clamp(y - opp, uspec_res_min[1], uspec_res_max[1])];
		if (window == 2 && window_timer == window_length && !nspec_tele) {
			switch (side) {
				case "top":
				case "bottom":
					var tele_dest = [0, side == "top" ? min_edge_pos[1] : max_edge_pos[1]];
					var tele_side = "v";
					var real_pos = new_dest[0] - (get_instance_x(camera_obj) - view_get_wview()/2);
					var index = clamp(round(res_ratios[@0] * real_pos), 0, edge_amounts[0] - 1);
					if ((real_pos - top_edge_array[index - 1][0]) > 0) {
						var closer_to = 0;
					} else if ((real_pos - top_edge_array[index - 1][0]) < 0) {
						var closer_to = 1;
					} else {
						var closer_to = spr_dir == 1 ? 1 : 0;
					}
					break;
				case "left":
				case "right":
					var tele_dest = [side == "left" ? min_edge_pos[0] : max_edge_pos[0], 0];
					var tele_side = "h";
					var real_pos = new_dest[1] - (get_instance_y(camera_obj) - view_get_hview()/2);
					var index = clamp(round(res_ratios[@1] * real_pos), 0, edge_amounts[1] - 1);
					if ((real_pos - left_edge_array[index - 1][0]) > 0) {
						var closer_to = 1;
					} else if ((real_pos - left_edge_array[index - 1][0]) < 0) {
						var closer_to = 0;
					} else {
						// always go up if prioritized. i mean, it's a recovery
						var closer_to = 0;
					}
					break;
			}
			switch (side) {
				case "top":
					vsp = uspec_speed;
					hsp = -1 * (uspec_speed * ((index - edge_amounts[0]/2)/(edge_amounts[0]/2)));
					break;
				case "bottom":
					vsp = -uspec_speed;
					hsp = -1 * (uspec_speed * ((index - edge_amounts[0]/2)/(edge_amounts[0]/2)));
					break;
				case "left":
					vsp = -1 * (uspec_speed * ((index - edge_amounts[1]/2)/(edge_amounts[1]/2)));
					hsp = uspec_speed;
					break;
				case "right":
					vsp = -1 * (uspec_speed * ((index - edge_amounts[1]/2)/(edge_amounts[1]/2)));
					hsp = -uspec_speed;
					break;
			}
			var label = side + string(index);
			var alt_labels = [side + string(index - 1), side + string(index + 1)];
			var alt_index = [index - 1, index + 1];
			var teleporting = false;
			if (ds_list_find_index(edge_static_labels, label) != -1) {
				ds_list_set(edge_static_labels, ds_list_find_index(edge_static_labels, label), "dead");
				if (tele_side == "v") {
					tele_dest[0] = top_edge_array[index][0];
				} else {
					tele_dest[1] = left_edge_array[index][1];
				}
				teleporting = true;
			} else if (ds_list_find_index(edge_static_labels, alt_labels[0]) != -1) && (ds_list_find_index(edge_static_labels, alt_labels[1]) != -1) {
				ds_list_set(edge_static_labels, ds_list_find_index(edge_static_labels, alt_labels[closer_to]), "dead");
				if (tele_side == "v") {
					tele_dest[0] = top_edge_array[alt_index[closer_to]][0];
				} else {
					tele_dest[1] = left_edge_array[alt_index[closer_to]][1];
				}
				teleporting = true;
			} else if (ds_list_find_index(edge_static_labels, alt_labels[0]) != -1) {
				ds_list_set(edge_static_labels, ds_list_find_index(edge_static_labels, alt_labels[0]), "dead");
				if (tele_side == "v") {
					tele_dest[0] = top_edge_array[alt_index[0]][0];
				} else {
					tele_dest[1] = left_edge_array[alt_index[0]][1];
				}
				teleporting = true;
			} else if (ds_list_find_index(edge_static_labels, alt_labels[1]) != -1) {
				ds_list_set(edge_static_labels, ds_list_find_index(edge_static_labels, alt_labels[1]), "dead");
				if (tele_side == "v") {
					tele_dest[0] = top_edge_array[alt_index[1]][0];
				} else {
					tele_dest[1] = left_edge_array[alt_index[1]][1];
				}
				teleporting = true;
			}
			if (teleporting) {
				x = tele_dest[0] - (sprite_width/4 * spr_dir) + (get_instance_x(camera_obj) - view_get_wview()/2);
				y = tele_dest[1] + (get_instance_y(camera_obj) - view_get_hview()/2);
				window = 4;
				window_timer = 0;
				free = true;
			} else {
				hsp = 0;
				vsp = 0;
			}
		}
		if (window == 2 && window_timer == window_length && nspec_tele && instance_exists(nspecial_in) && nspecial_in != 0) {
			window = 4;
			window_timer = 0;
		}
		if (window == 4) {
			if window_timer < 5 sound_play(sound_get("static_hard"));
			fall_through = true;
		}
		if (window == 4 && instance_exists(nspecial_in) && nspecial_in != 0 && nspec_tele) {
			//sound_play(sound_get("tv_hit"));
			hsp = nspecial_in.hsp;
			vsp = nspecial_in.vsp;
			if (nspecial_in.state != 2) {
				x = nspecial_in.x;
				y = nspecial_in.y;
				nspecial_in.state = 2;
				nspecial_in.state_timer = 0;
			}
			nspecial_in.depth = depth+1;
		}
    	break;
    /*case AT_TAUNT:
    	with pet_obj {
			if variable_instance_exists(self,"yebth_eaten") && yebth_eaten == false && point_distance(x,y,other.x,other.y) < other.cone_dist {
				yebth_eaten = true;
				with other set_attack(AT_EXTRA_1);
			}
		}
	    if window == 1 {
	        //sound_play(sound_get("weird_hit1"));
	        if window_timer == 1 sound_play(sound_get("ssstop"));
	        taunt_type = 0; 
	        
	    } else sound_stop(sound_get("ssstop"));*/
	    //if window == 3 sound_play(sound_get("weird_hit1"));
	    break;
}