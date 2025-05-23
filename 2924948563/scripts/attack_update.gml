//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

switch(attack){
     case AT_DTILT:
        if window == 1 && window_timer == 4{
                sound_play(asset_get("sfx_waveland_oly"));
        }
    break;
    case AT_FSTRONG:
        if window == 2 && window_timer == 8{
                sound_play(asset_get("sfx_ell_strong_attack_explosion"));
        }
    break;
    case AT_DSTRONG:
        if window == 2 && window_timer == 3{
                sound_play(asset_get("sfx_kragg_rock_shatter"));
        }
    break;
    case AT_TAUNT:
        if window == 1 && window_timer == 13{
                sound_play(asset_get("sfx_spin"),false,noone,1.0,1.1);
        }
    break;
    case AT_NSPECIAL:
        if ((window == 1 && window_timer == window_length) || window > 1) {
            can_wall_jump = true;
        }
        if(window == 1 && window_timer == 1)move_cooldown[attack] = 999;
         if (has_hit && (window == 5 || window == 8) && !was_parried) can_jump = true;
        vsp = min(vsp,1);
        if(free)hsp*=.7;
    break;
    case AT_FSPECIAL:
        switch (window) {
            case 1:
                if (window_timer == 1 && !free) {
                    vsp = -glide_jump_speed;
                }
            break;
            case 2:
                if(window_timer >= 3 && has_hit && !hitpause && !was_parried) can_jump = true;
            case 3:
                if (window == 2 && window_timer == window_length || window == 3) {
                    hsp = glide_speed * spr_dir;
                    vsp = glide_fall_speed;
                }
                if (window == 3) {
                    //can_attack = true;
                    if(!was_parried) can_jump = true;
                    if (!special_down) {
                        window_timer = window_length;
                    }
                    if (window_timer == window_length - 1) {
                        window_timer = 0;
                    }
                    if (spr_dir == 1 && left_down || spr_dir == -1 && right_down) {
                        window = 6;
                        window_timer = 0;
                        spr_dir *= -1;
                    }
                }

            break;
            case 4:
                if(!was_parried) can_jump = true;
            break;
            case 6:
                if (window_timer == window_length - 1) {
                    if (special_down) {
                        window = 3;
                        window_timer = 0;
                    } else {
                        window = 4;
                        window_timer = 0;
                    }
                }
                vsp = glide_fall_speed;
                if (hsp * spr_dir <= glide_speed - glide_turn_speed) {
                    hsp += glide_turn_speed * spr_dir
                } else {
                    hsp = glide_speed * spr_dir;
                }
            break;
        }
        can_wall_jump = true;
        can_fast_fall = false;
        can_move = false;
    break;

    case AT_USPECIAL:
        can_wall_jump = true;
        can_fast_fall = false;
    break;
    
    case AT_DSPECIAL:
        if (window == 3 && window_timer == window_length) {
            has_uppercutted = true;
        }
        if (window == 2 || window == 6) {
            if (!special_down) {
                window = 3;
                window_timer = 0;
            } else {
                if (window_timer == window_length - 1) {
                    window_timer = 0;
                }
                if (window == 2) {
                    if (left_down || right_down) {
                        window = 6;
                    }
                } else {
                    if (!left_down && !right_down) {
                        window = 2;
                    }
                    if (left_down - right_down != 0) {
                        spr_dir = right_down - left_down;
                    }
                    hsp = dig_speed * spr_dir;
                }
            }
            if (!hitpause) {
               dig_timer++;
            }
            if (dig_timer >= dig_max_time) {
                window = 3;
                window_timer = 0;
            }
        }
        
        if (window == 3) {
            hsp = 0;
            if (window_timer == 0) {
                if (instance_exists(mound_1)) {
                    if (place_meeting(x, y, mound_1)) {
                        x = mound_1.x;
                        spr_dir = mound_1.spr_dir;
                    }
                }
                if (instance_exists(mound_2)) {
                    if (place_meeting(x, y, mound_2)) {
                        x = mound_2.x;
                        spr_dir = mound_2.spr_dir;
                    }   
                }
            }
            if (window_timer == 1){
                spawn_base_dust(x,y,"land",1* spr_dir)
                sound_play(asset_get("sfx_kragg_rock_shatter"));
                }
        }
        
        can_fast_fall = false;
        if (window == 5 || window == 4 && (window_timer == window_length)) {
            can_move = true;
        } else {
            can_move = false;
        }
        if (window == 5){
            move_cooldown[AT_DSPECIAL] = 40
            move_cooldown[AT_DSPECIAL_AIR] = 60
        }
    break;
    
    case AT_DSPECIAL_AIR:
        if (window == 1) {
            vsp = min(vsp, 1);
        }
        if (window == 2) {
            if (drill_timer >= drill_cancel_time) {
                can_jump = true;
                if (move_cooldown[AT_USPECIAL] == 0 && up_down && special_down) {
                    set_attack(AT_USPECIAL);
                }
            }
            if (!hitpause) {
                drill_timer++;
            }
            if (window_timer == window_length - 1) {
                window_timer = 0;
            }
            hsp = 0;
            can_move = false;
            if(!free){
                if(shield_down){
                    sound_play(sound_get("sfx_airdodge"));
                    set_state(PS_LANDING_LAG);
                    if has_hit {
                        landing_lag_time= 16
                    }else{
                        landing_lag_time= 24
                    }
                    
                    //hsp = 4*spr_dir;
                }
            }
        }
        if (window == 3 && window_timer == window_length - 1) {
            set_attack(AT_DSPECIAL);
            window_timer = 0;
            if (free || !freemd) {
                window = 3;
            } else {
                window = 2;
            }
        }
        can_fast_fall = false;
    break;
    case AT_DSPECIAL_2:
        if (window == 2) {
            move_cooldown[AT_DSPECIAL] = 0
            if (state_timer >= mound_max) {
                set_attack(AT_DSPECIAL);
                window = 3;
                window_timer = 0;
            }
            if (window_timer == window_length - 1) {
                window_timer = 0;
            }
            if (entered_mound == 1) {
                if (sign(x - mound_2.x) == 1) {
                    hsp = -mound_speed;
                    spr_dir = -1;
                } else {
                    hsp = mound_speed;
                    spr_dir = 1;
                }
                if (instance_exists(mound_2)) {
                    if (place_meeting(x + hsp, y, mound_2)) {
                        set_attack(AT_DSPECIAL);
                        window = 3;
                        window_timer = 0;
                        x = mound_2.x;
                        y = mound_2.y;
                    }
                } else {
                    set_attack(AT_DSPECIAL);
                    window = 3;
                    window_timer = 0;
                }
            } else {
                if (sign(x - mound_1.x) == 1) {
                    hsp = -mound_speed;
                    spr_dir = -1;
                } else {
                    hsp = mound_speed;
                    spr_dir = 1;
                }
                if (instance_exists(mound_1)) {
                    if (place_meeting(x + hsp, y, mound_1)) {
                        hsp = 0;
                        set_attack(AT_DSPECIAL);
                        window = 3;
                        window_timer = 0;
                        x = mound_1.x;
                        y = mound_1.y;
                    }
                } else {
                    set_attack(AT_DSPECIAL);
                    window = 3;
                    window_timer = 0;
                }
            }
        }
        can_fast_fall = false;
        can_move = false;
    break;
}

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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