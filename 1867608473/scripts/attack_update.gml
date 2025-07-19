//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_2){
    trigger_b_reverse();
}

if !hitpause{
    switch(attack){
        case AT_TAUNT:
            switch(window){
                case 2:
                    if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)){
                        if taunt_down{
                            window = 2;
                            window_timer = 0;
                        }
                    }
                    break;
            }
            break;
        case AT_UTILT:
            if window == 5{
                if has_hit{
                    if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)){
                        set_state(PS_LAND);
                    }
                } else {
                    if ((window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH) * 1.5) - 1)){
                        set_state(PS_LAND);
                    }
                }
            }
            break;
        case AT_DATTACK:
            if !was_parried and has_hit{
                can_jump = true;
                can_tap_jump();
                if jump_pressed{
                    attack_end();
                    destroy_hitboxes();
                }
            }
            break;
        // All Strong_2's are with soul outside of Kris, generally faster, weaker, and lack range.
        case AT_FSTRONG:
            switch(window){
                case 1:
                    if ((window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1)){
                       print_debug("Proceed.");
                    }
                    break;
                case 2:
                    if ((window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1)){
                       sound_play(sfx_fstrong);
                    }
                    break;
                case 4:
                    if ((window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH) - 1)){
                       sound_stop(sfx_fstrong);
                    }
                    break;
            }
            break;
        case AT_FSTRONG_2:
            switch(window){
                case 2:
                    if window_timer == 2{
                        sound_play(sound_get("sfx_kris_slash"))
                    }
                    break;
            }
            break;
        case AT_USTRONG:
            if (window == 2 and (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1)){
                spawn_base_dust(x + 48, y, "dash_start", -spr_dir);
                spawn_base_dust(x + 64, y, "wavedash", -spr_dir);
            }
            break;
        case AT_DSTRONG:
        	if window < 5 {
        		var followup_pos = get_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X);
        		var time_to_hit1 = (get_window_value(attack, 1, AG_WINDOW_LENGTH) + get_window_value(attack, 2, AG_WINDOW_LENGTH)); //im lazy so i counted the time in the attack file. you could totally do this via code
        		var time_to_followup = get_window_value(attack, 4, AG_WINDOW_LENGTH); //counted again. maybe do this via code.
        		for (var p = 0; p < array_length(dstrong_hit_list); p++) {
        			if dstrong_hit_list[p,0] != noone && dstrong_hit_list[p,0].state_cat == SC_HITSTUN {
        				dstrong_hit_list[p,0].x = ease_linear(dstrong_hit_list[p,1], x+(followup_pos*spr_dir), state_timer-strong_charge-time_to_hit1, time_to_followup);
        			}
        		}
        	}
        	if (window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 1) {
        		for (var p = 0; p < array_length(dstrong_hit_list); p++) {
        			if (dstrong_hit_list[p,0] == noone) {
        				break;
        			}
        			else {
        				dstrong_hit_list[p,0] = noone;
        				dstrong_hit_list[p,1] = 0;
        			}
        		}
        	}
            break;
        case AT_DSTRONG_2:
            if window == 1{
                var times_thru = 0;
            }
            switch(window){
                case 1:
                    fall_through = true;
                    if window_timer == 1{
                        dstrong_start_pos = y;
                    }
                    if window_timer <= 6{
                        if !up_down{
                            dstrong_jump_height = 96;
                        } else {
                            dstrong_jump_height = 128;
                        }
                    }
                    break;
                case 2:
                    fall_through = true;
                    can_fast_fall = false;
                    hsp = clamp(hsp, -2.5, 2.5);
                    if window_timer == 1{
                        spawn_base_dust(x, y, "jump", spr_dir);
                    }
                    if y > dstrong_start_pos - dstrong_jump_height{
                        y = lerp(y, dstrong_start_pos - dstrong_jump_height, .4);
                    }
                    break;
                case 3:
                    can_fast_fall = false;
                    free = true;
                    fall_through = true;
                    vsp = 0;
                    if strong_charge == 60{
                        if window_timer == 1{
                            set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 9);
                            
                            sound_play(sound_get("sfx_dstrongcharged"));
                            set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 7);
                            set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.5);
                            set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 8);
                            set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
                            
                            set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_KNOCKBACK, 7);
                            set_hitbox_value(AT_DSTRONG_2, 3, HG_KNOCKBACK_SCALING, 1.5);
                            set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE, 8);
                            set_hitbox_value(AT_DSTRONG_2, 3, HG_HITPAUSE_SCALING, 1);
                            
                            spawn_hit_fx(x, y - 48 ,vfx_dstrongcharge);
                            
                            window = 8;
                            window_timer = 0;
                        }
                    } else {
                            reset_window_value(AT_DSTRONG_2, 4, AG_WINDOW_CUSTOM_GRAVITY);
                        
                            reset_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK);
                            reset_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING);
                            reset_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE);
                            reset_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING);
                            reset_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_KNOCKBACK);
                            reset_hitbox_value(AT_DSTRONG_2, 3, HG_KNOCKBACK_SCALING);
                            reset_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE);
                            reset_hitbox_value(AT_DSTRONG_2, 3, HG_HITPAUSE_SCALING);
                    }
                    break;
                case 4:
                    can_wall_jump = true;
                    hsp = clamp(hsp, -1, 1);
                    if times_thru >= 3{
                        can_jump = true;
                    }
                    
                    if down_down{
                        fall_through = true;
                    }
                    if free{
                        if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1) and !hitpause){
                            times_thru++;
                            window = 4;
                            window_timer = 0;
                        }
                    } else {
                        window = 5;
                        window_timer = 0;
                    }
                    break;
                case 5:
                    destroy_hitboxes();
                    if window_timer == 1{
                        sound_play(asset_get("sfx_ori_energyhit_medium"));
                        spawn_base_dust(x - 24, y, "dash", spr_dir);
                        spawn_base_dust(x + 24, y, "dash", spr_dir);
                    }
                    break;
                case 8:
                    hsp = 0;
                    if ((window_timer == get_window_value(attack, 8, AG_WINDOW_LENGTH) - 1)){
                        window = 4;
                        window_timer = 0;
                    }
                    break;
            }
            if window >= 5{
                can_move = false;
            }
            break;
        case AT_DSPECIAL:   //
            can_wall_jump = true;
            switch(window){
                case 1:
                    move_cooldown[AT_DSPECIAL] = 30;
                    if window_timer == 6{
                        vsp -= 8;
                    }
                    if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH){
                        soft_armor = 12;
                        if soul == noone{
                            soul = instance_create(x + (16 * spr_dir), y + 32, "obj_article2");
                        }
                        soul_cooldown = soul_cool_max;
                    }
                    break;
            }
            break;
        case AT_NSPECIAL:   //
            if !down_pressed{
                vsp = clamp(vsp, -6, 6);
            } else {
                vsp = clamp(vsp, -6, fast_fall);
            }
            if window == 1 and window_timer < get_window_value(attack, 1, AG_WINDOW_LENGTH){
                if soul != noone{
                    soul.x = x + (8 * spr_dir);
                    soul.y = y - 32;
                }
            }
            
            switch(window){
                case 1:
                    if window_timer == 4{
                        if soul == noone{
                            soul = instance_create(x + (8 * spr_dir), y-32, "obj_article2");
                            soul.depth = -10;
                            soul.state = 7;
                            soul_cooldown = soul_cool_max;
                        }
                    }
                    if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH){
                        soul.y = y-52;
                        if !free{
                            vsp = -4;
                        }
                    }
                    break;
            }
            break;
        case AT_USPECIAL:
            can_move = false;
            switch(window){
                case 1:
                    // Charge, this is aiming time
                    
                    // This is purely visual, but have the soul travel towards the end point
                    var travel_frames = 6;
                    /*if (window_timer == 1) {
                        temp_soul_dist_2 = 0;
                        temp_soul_dist_1 = 0;
                        temp_soul_dist = 0;
                        temp_uspec_dir_2 = 0;
                        temp_uspec_dir_1 = 0;
                    }
                    if window_timer % 2 == 0 {
                        temp_soul_dist_2 = temp_soul_dist_1;
                        temp_soul_dist_1 = temp_soul_dist;
                    }*/
                    
                    temp_soul_dist = ease_sineOut(0, uspec_soul_length, min(window_timer, travel_frames), travel_frames);
                case 2:
                    hsp *= 0.9;
                    vsp *= 0.9;
                    if !free vsp = -3;
                    /*
                    if window_timer % 2 == 0 {
                        temp_uspec_dir_2 = temp_uspec_dir_1;
                        temp_uspec_dir_1 = uspec_dir;
                    }
                    */
                    uspec_dir = joy_dir;
                    if (window == 2) {
                        if !special_down
                            window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
                        
                    }
                    
                    break;
                case 3:
                    hsp = 0;
                    vsp = 0;
                    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                        if (sign(lengthdir_x(1, uspec_dir)) == -spr_dir) {
                            spr_dir *= -1;
                        }
                        uspec_start_x = x;
                        uspec_start_y = y;
                        hsp = lengthdir_x(uspec_soul_length, uspec_dir);
                        vsp = lengthdir_y(uspec_soul_length, uspec_dir);
                        var hitbox = create_hitbox(attack, 1, x, y);
                        hitbox.x_pos = lengthdir_x(60, uspec_dir);
                        hitbox.y_pos = lengthdir_y(60, uspec_dir) - 32;
                        hitbox = create_hitbox(attack, 2, x, y);
                        // trail created in animation.gml because i'm Funny or something
                        // jk it's because speed is applied already by then
                    }
                    break;
                case 4:
                    if window_timer == 1{
                        hsp = lengthdir_x(4, uspec_dir);
                        vsp = lengthdir_y(4, uspec_dir);
                    } else {
                        hsp *= 0.85;
                        vsp *= 0.85;
                    }
                    break;
            }
            break;
        case AT_FSPECIAL:
            can_fast_fall = false;
            switch(window){
                case 1:
                    if soul == noone{
                        if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH){
                            soul = instance_create(x + (64 * spr_dir), y - 32, "obj_article2");
                            soul.spr_dir = spr_dir;
                            soul.state = 10;
                            soul.hsp = 8 * spr_dir;
                            soul_cooldown = soul_cool_max;
                            move_cooldown[AT_DSPECIAL] = 80;
                            move_cooldown[AT_NSPECIAL] = 80;
                            move_cooldown[AT_FSPECIAL] = 80;
                        }
                    }
                    break;
            }
            break;
        case AT_FSPECIAL_2:
            move_cooldown[AT_FSPECIAL_2] = 60;
            can_fast_fall = false;
            can_wall_jump = true;
            if window < 3{
                soul_cooldown = 99999;
            } else {
                if window_timer > 4{
                    soul_cooldown = 0;
                }
            }
            if window > 1{
                can_attack = true;
                can_strong = true;
                can_ustrong = true;
                can_jump = true;
                can_tap_jump();
                if (jump_pressed or attack_pressed or special_pressed or is_strong_pressed(DIR_ANY)){
                    soul.state = 1;
                    soul.state_timer = 0;
                    soul_cooldown = 0;
                }
            }
            switch(window){
                case 1:
                    if soul.x < x{
                        spr_dir = -1;
                    }
                    if soul.x > x{
                        spr_dir = 1;
                    }
                    if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)){
                        soul.state = 2;
                        soul.state_timer = 0;
                    }
                    break;
                case 2:
                    if soul.state == 2{
                        var move_dir = point_direction(x, y, soul.x, soul.y);
                        var move_rate = .75;
                        
                        can_move = false;
                        
                        if point_distance(x, y, soul.x, soul.y) > 30{
                            hsp += lengthdir_x(move_rate, move_dir);
                            vsp += lengthdir_y(move_rate, move_dir);
                        } else {
                            hsp = 0;
                            vsp = 0;
                            window = 3;
                            window_timer = 0;
                        }
                    }
                    
                    break;
                case 3:
                    if soul != noone{
                        soul.state = 1;
                        soul.state_timer = 0;
                        if point_distance(x, y, soul.x, soul.y) > 30{
                            soul_cooldown = 0;
                            attack_end();
                            destroy_hitboxes();
                        } else {
                            move_cooldown[AT_NSPECIAL] = 60;
                            move_cooldown[AT_FSPECIAL] = 60;
                            move_cooldown[AT_DSPECIAL] = 60;
                        }
                    }
                    break;
            }
            break;
        case AT_DSPECIAL_2:
            can_fast_fall = false;
            can_wall_jump = true;
            
            if window < 3{
                soul_cooldown = 99999;
            } else {
                if window_timer > 4{
                    soul_cooldown = 0;
                }
            }
            switch(window){
                case 2:
                    if soul != noone{
                        soul.state = 5;
                        soul.state_timer = 5;
                    }
                    break;
                case 3:
                    hsp = 0;
                    vsp = 0;
                    break;
            }
            break;
    }
}

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
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
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;