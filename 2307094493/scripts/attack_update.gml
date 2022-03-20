//B - Reversals
if (attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR ||attack == AT_DSPECIAL_AIR ||attack == AT_DSPECIAL){
    trigger_b_reverse();
}

if attack == AT_TAUNT && window == 2 && window_timer == 30 && taunt_down { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	window = 2;
	window_timer = 0;
}

if attack == AT_TAUNT && window == 2 && window_timer > 15 {
if  window_timer == 15 && taunt_down { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	window_timer = 3;
}}

if (attack == AT_DATTACK && window == 2 && window_timer == 1 && has_hit) {
		can_ustrong = true;}

if (attack == AT_FAIR && window == 2 && window_timer == 1 && has_hit) {
		can_special = true;}
        
if (attack == AT_NSPECIAL_AIR) {
    if (window == 2 && window_timer == 1) {
        var nut = instance_create(x + 8 * spr_dir, y - 65, "obj_article3");
        nut.player_id = id;
        nut_count++;
    }
}

if (attack == AT_FSPECIAL_AIR) {
    if (window == 2) {

        if(instance_exists(acorn)) {
            acorn.state = 4;
            acorn.state_timer = 0;
        }

        acorn = instance_create(x + 18 * spr_dir, y - 30,"obj_article1");
        acorn.player_id = id;
        acorn_time_created = get_gameplay_time();
        acorn.charge = charge;
        charge = 0;
    }

    if (window == 3) {
        if (!special_down || get_gameplay_time() >= acorn_time_created + acorn_max_hold_time) {
            window = 4;
            window_timer = 0;
        }
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL) {
	can_wall_jump = true;
    can_fast_fall = false;
    if (window == 1) {

        if (abs(hsp) > air_max_speed) {
            hsp *= 0.5;
        }

    	if (!joy_pad_idle) {
            direc = (floor((joy_dir + 180 div us_num_directions)/(360 div us_num_directions)) * (360 div us_num_directions)) % 360;
        } else {
            direc = 180*(spr_dir == -1);
        }
    }
    if (window == 2) {
        if (window_timer == 1) {
            
            //Auto-aim at acorn if it's within a certain tolerance.
            // print_debug("Direc: " + string(direc));
            if((instance_exists(acorn)) && point_distance(x, y+height/2, acorn.x, acorn.y+15) <= 416) {
                var dir_to_acorn = point_direction(x, y+height/2, acorn.x, acorn.y+15);
                if(abs(angle_difference(dir_to_acorn, direc)) <= us_magnetism) {
                    direc = dir_to_acorn;
                }
                // print_debug("Auto-Aim Direc — Intended: " + string(dir_to_acorn) + ", Actual: " + string(direc));
            }

        	var us_loc = (bbox_top - bbox_bottom)/2;
            hook = instance_create(x,y+us_loc,"obj_article2");
            hook.direc = direc;
            sound_play(asset_get("mfx_coin_portal"));
        }
    }
    if (window == 4 && hitpause == 0) {
        djumps = 0;
        if (jump_pressed) {
        	can_jump = true;
            if (instance_exists(hook) && hook.stuck_in_player) {
                if (special_pressed) {
                    hook.state = 4;
                }
                iasa_script();
            }
        }
    }
}

if (attack == AT_DSPECIAL) {
    if (window == 1 && window_timer == 1) {
        ds_time_start = get_gameplay_time();    //At the beginning of the move, check at what time it started.
    }

    // if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    //     sound_play(ds_crackle_sound, true);
    // }

    if (window == 2) {
        if(window_timer == 1) {
            sound_play(ds_crackle_sound);
        }
        
        if (charge != 0) {  //Behavior when charged.
            if (get_gameplay_time() - ds_time_start == ds_discharge_time && instance_exists(acorn)) {   //If special has been held long enough, go to the charge line window.
                window = 5;
                window_timer = 0;
            }
            //If special is let go and Loadent has gone through the window at least once, go to then endlag window.
            if (!special_down && get_gameplay_time() - ds_time_start >= (18)) {    
                window = 3;
                window_timer = 0;
            }
        } else {    //If not charged, end after one loop to get a charge.
            if (get_gameplay_time() - ds_time_start >= (18)) {    
                window = 3;
                window_timer = 0;
            }
        }
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {   //When the window loops, refresh the hitboxes.
            attack_end();
        }
    }

    if (window == 3) {  //During window 3, invert the charge. If charge is currently neutral, default to positive.
        if (window_timer == 1) {
            if (charge == 0) {
                charge = 1;
            } else {
                charge *= -1;
            }
            
            time_charge_starts = get_gameplay_time();
        }
    }

    if (window == 5) {
        if (window_timer == 1) {
            ds_hit_list = ds_list_create();
            if (instance_exists(acorn)) {

                with(acorn) {
                    state = 2;
                    state_timer = 0;
                    charge = other.charge;
                    time_charged = get_gameplay_time();
                    sound_stop(player_id.field_pos_active_sound);
                    sound_stop(player_id.field_neg_active_sound);
                }

                if (acorn.charge == 1) {
                    sound_play(field_pos_open_sound);
                } else if (acorn.charge == -1) {
                    sound_play(field_neg_open_sound);
                }

                charge = 0;
            }
        }

        //If the acorn exists, check for players along the line from Loadent to the acorn and if any are found, create a hitbox on their center of mass.
        if (instance_exists(acorn) && acorn.charge != 0) {
            ds_hit_list = collision_line_list(x, y + height / 2, acorn.x, acorn.y, asset_get("oPlayer"), true, true);
            // print_debug(string(ds_hit_list));
            if(ds_list_valid(ds_hit_list)) {
                for(var i=0; i < ds_list_size(ds_hit_list); i++) {
                    var target = ds_list_find_value(ds_hit_list, i);
                    var height = target.bbox_bottom - target.bbox_top;
                    // print_debug(get_char_info(target.player, INFO_STR_NAME) + ": (" + string(target.x) + ", " + string(target.y) + ")");
                    create_hitbox(AT_DSPECIAL, 6, target.x, target.y-height/2);
                    // draw_circle_color(target.x, target.y-height/2, 5, c_yellow, c_yellow, false)
                    
                }
            } 
        }

        if (window_timer == 10) {//get_window_value(attack, window, AG_WINDOW_LENGTH)) {   //When the window ends, go to endlag.
            window = 4;
            window_timer = 0;
        }
    }

    can_fast_fall = false;
}

#define collision_line_list {
    /// collision_line_list(x1,y1,x2,y2,obj,prec,notme)
    //
    //  Returns a list data structure populated with the ids of instances 
    //  colliding with a given line, or noone if no instances found.
    //
    //      x1,y1       start point of the collision line, real
    //      x2,y2       end point of the collision line, real
    //      obj         object to check for collision (or all), real
    //      prec        true for precise collision checking, bool
    //      notme       true to ignore the calling instance, bool
    //
    /// GMLscripts.com/license
    {
        var x1,y1,x2,y2,obj,prec,notme,dsid,i;
        x1 = argument0;
        y1 = argument1;
        x2 = argument2;
        y2 = argument3;
        obj = argument4;
        prec = argument5;
        notme = argument6;
        dsid = ds_list_create();
        with (obj) {
            if (!notme || id != other.id) {
                i = collision_line(x1,y1,x2,y2,id,prec,false);
                if (i != noone) ds_list_add(dsid,i);
            }
        }
        if (ds_list_size(dsid) == 0) {
            ds_list_destroy(dsid);
            dsid = noone;
        }
        return dsid;
    }
}