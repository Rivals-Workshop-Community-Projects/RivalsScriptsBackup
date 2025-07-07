
// Growth Nectar outline
if (nectar_mult > 1 && common_count > 0) {
    if (array_equals(outline_color, [0, 0, 0]) || array_equals(outline_color, self_prev_outline)) {
        var vibrancy = clamp(common_count/15, 0, 0.5);
        vibrancy += (sin(get_gameplay_time()*pi/60)+1)*0.1;
        outline_color = [201*vibrancy, 158*vibrancy, 30*vibrancy];
        self_prev_outline = outline_color;
        init_shader();
    }
    else self_prev_outline = [0, 0, 0];
}

else if (!array_equals([0, 0, 0], self_prev_outline) && array_equals(outline_color, self_prev_outline)) {
    outline_color = [0, 0, 0];
    self_prev_outline = [0, 0, 0];
    init_shader();
}


switch(state) {
    case PS_DASH_START:
        // 'moonwalk' (dashing backwards) animation
        if (dash_moonwalks) {
            if (hsp * spr_dir < 0) {
                sprite_index = sprite_get("moonwalk");
            }
        }
        break;
    // air movement
    case PS_FIRST_JUMP:
        // idle air loop
        if (idle_air_loops) {
            if (image_index == jump_frames && !idle_air_looping) {
                idle_air_looping = true;
            }
            if (idle_air_looping) {
                sprite_index = sprite_get("jumploop");
                image_index = state_timer * idle_air_loop_speed;
            }
        }
        break;
    case PS_IDLE_AIR:
        if prev_state = PS_AIR_DODGE || (prev_state == PS_ATTACK_AIR && attack == AT_FSPECIAL_AIR) {
            image_index =  image_number-1
        }
        if prev_state = PS_DOUBLE_JUMP {
            image_index =  image_number-1
        }
        if (prev_state == PS_ATTACK_AIR && attack == AT_USPECIAL) {
            sprite_index = sprite_get("uspecial")
            image_index = 6
        }
        // Animation for when dropping from a platform
        if (idle_air_platfalls && !idle_air_looping) {
            if (state_timer == 1 && prev_state == PS_CROUCH && ground_type == 2) {
                idle_air_platfalling = true;
            }
            if (state_timer * idle_air_platfall_speed >= idle_air_platfall_frames) {
                idle_air_platfalling = false;
            }
            
            if (idle_air_platfalling) {
                sprite_index = sprite_get("platfall");
                image_index = state_timer * idle_air_platfall_speed;
            }
            
        }
        // idle air loop
        if (idle_air_loops && !idle_air_platfalling) {
            if (image_index == jump_frames && !idle_air_looping) {
                idle_air_looping = true;
            }
            if (idle_air_looping) {
                sprite_index = sprite_get("jumploop");
                image_index = state_timer * idle_air_loop_speed;
            }
        }
        
        //if neither, make sure it's jump
        //if (!idle_air_looping && !idle_air_platfalling) {
        //    sprite_index = sprite_get("jump");
        //}
        break;
    case PS_DOUBLE_JUMP:
        if state_timer == 0 {
            if djumps > 1 {
                sound_play(sound_get("feather_djump"))
                spawn_hit_fx(x, y, fx_djump)
            } else {
                sound_play(asset_get("sfx_ell_small_missile_ground"), 0, noone, 0.7, 1.1)
            }
            
            
        }
        break;

    
    // attacks
    case PS_ATTACK_GROUND:
        // UTilt
        if (attack == AT_UTILT && utilt_advance_frame && window == 2) image_index = 2;
        // loop strong charge window, if the loop is set
        if (window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) && get_window_value(attack,window,AG_WINDOW_HAS_CHARGE_LOOP) && strong_charge > 0) {
            image_index = get_window_value(attack,window,AG_WINDOW_CHARGE_FRAME_START) + (round(strong_charge * get_window_value(attack,window,AG_WINDOW_CHARGE_LOOP_SPEED)) mod get_window_value(attack,window,AG_WINDOW_CHARGE_FRAMES));
        }
        break;
    case PS_ATTACK_AIR:
        if (window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) && get_window_value(attack,window,AG_WINDOW_HAS_CHARGE_LOOP) && strong_charge > 0) {
            image_index = get_window_value(attack,window,AG_WINDOW_CHARGE_FRAME_START) + (round(strong_charge * get_window_value(attack,window,AG_WINDOW_CHARGE_LOOP_SPEED)) mod get_window_value(attack,window,AG_WINDOW_CHARGE_FRAMES));
        }
        break;
}
