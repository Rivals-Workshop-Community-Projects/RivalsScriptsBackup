//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_TAUNT:
        switch(window){
            case 1:
                if window_timer < 4{
                    if shield_down or shield_pressed{
                        set_attack(AT_TAUNT_2);
                    }
                }
                break;
            case 2:
                if window_timer == 24{
                    sound_play(asset_get("sfx_swipe_weak2"));
                }
                if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
                    if !taunt_down{
                        window = 3;
                        window_timer = 0;
                    }
                }
                break;
        }
        break;
    case AT_TAUNT_2:
        switch(window){
            case 1:
                if window_timer == 1{
                    shades_to_equip = 1;
                    /*
                    if attack_down{
                        shades_to_equip = 2;
                    }*/
                }
                if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 2{
                    sound_play(asset_get("sfx_blow_weak1"))
                }
                break;
            case 3:
                if window_timer == 1{
                    if shades != 1{
                        sound_play(asset_get("mfx_star"));
                    } else {
                        sound_play(asset_get("mfx_unstar"));
                    }
                }
                // Equip
                if window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH){
                    if shades < 1{
                        if shades_to_equip == 2{
                            shades = 2;
                        } else {
                            shades = 1;
                        }
                    } else {
                        shades = 0;
                    }
                }
                break;
        }
        break;
    case AT_EXTRA_1:
        can_jump = true;
        if taunt_down and !jump_pressed{
            window_timer = 0;
        } else {
            sound_stop(get_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX));
        }
        break;
    case AT_NTHROW:
        is_shifting = true;
        if window > 2 and jump_down{
            spr_dir *= -1;
            attack_end();
            destroy_hitboxes();
            set_state(PS_JUMPSQUAT);
        }
        if window >= 1{
            can_jump = true;
            can_shield = true;
            //can_attack = true;
            can_special = true;
            can_ustrong = true;
            can_strong = true;
            if down_down {
                attack_end();
                destroy_hitboxes();
                set_state(PS_CROUCH);
                hsp = turbocrawl_speed * spr_dir;
            }
            if (!down_down and (up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed)){
                // SPEED BOOST
                hsp = hydroplane_speed * spr_dir;
            }
        }
        
        if window == 4 and window_timer < get_window_value(attack, 4, AG_WINDOW_LENGTH){
            switch(spr_dir){
                case -1:
                    if right_down{
                        spr_dir = 1;
                        hsp = pivot_boost;
                    }
                    break;
                case 1:
                    if left_down{
                        spr_dir = -1;
                        hsp = -pivot_boost;
                    }
                    break;
            }
        }
        switch(window){
            case 1:
                if window_timer == 1{
                    hsp = (shift_speed * -spr_dir);
                    spr_dir *= -1;
                }
                if jump_pressed{
                    hsp = (shiftjump_speed * spr_dir);
                    spr_dir *= -1;
                }
                break;
            case 2:
                if window_timer == 1{
                    spr_dir *= -1;
                }
                break;
            case 3:
                break;
            case 4:
                if window_timer == get_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH) - 1{
                    if (left_down or right_down){
                        set_state(PS_DASH);
                        //spr_dir *= -1;
                    }
                    if down_down{
                        hsp = turbocrawl_speed * spr_dir;
                    }
                }
                break;
        }
        break;
    
    case AT_DTILT:
        if window == 1 and window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 2{
            sound_play(asset_get("sfx_watergun_splash"));
        }
        break;
    case AT_DSTRONG:
        if window == 2 and window_timer == 1{
            sound_play(asset_get("sfx_swish_medium"));
        }
        break;
    case AT_FSTRONG:
        if window == 2 and window_timer == 1{
            sound_play(asset_get("sfx_swipe_medium1"));
        }
        break;
    case AT_FAIR:
        if window == 1 and window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 2{
            sound_play(asset_get("sfx_swish_medium"));
        }
        break;
    
    case AT_DAIR:
        if window > 1 and window < 5 and !has_hit{
            can_fast_fall = false;
        }
        break;
    case AT_NSPECIAL:
        if window == 1 and window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 2{
            sound_play(asset_get("sfx_swipe_weak1"));
        }
        if window == 3{
            if window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) or window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) * 1.5{
                move_cooldown[AT_NSPECIAL] = 45;
                move_cooldown[AT_NSPECIAL_AIR] = 45;
            }
        }
        break;
    case AT_NSPECIAL_AIR:
        can_fast_fall = false;
        can_wall_jump = true;
        if has_rune("A"){
            trigger_ult_b_reverse();
        } else {
            trigger_b_reverse();
        }
        if window == 1 and window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 2{
            sound_play(asset_get("sfx_swipe_weak1"));
        }
        if window == 3{
            if window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) or window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) * 1.5{
                move_cooldown[AT_NSPECIAL] = 45;
                move_cooldown[AT_NSPECIAL_AIR] = 45;
            }
        }
        break;
    case AT_FSPECIAL:
        if window > 1{
            soft_armor = 8;
        }
        
        if window < 3{
            can_fast_fall = false;
            if (!moved_up){
                if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                    for (var i = 0; i < 20; i++){
                        if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                            y -= i;
                            moved_up = true;
                            break;
                        }
                    }
                }
            }
        }
        
        switch(window){
            case 1:
                if window_timer == 1{
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                    can_escape = false;
                    hit_wall = false;
                    var timer_wall = 0;
                    var timer_wall_max = 8;
                    sound_play(asset_get("sfx_spin"));
                    set_num_hitboxes(AT_FSPECIAL, 1);
                }
                if window_timer == 4{
                    if !special_down{
                        // CHECK
                        set_num_hitboxes(AT_FSPECIAL, 1);
                    } else {
                        set_num_hitboxes(AT_FSPECIAL, 2);
                    }
                }
                if window_timer == 10 and get_num_hitboxes(attack) == 2{
                    spawn_hit_fx((x + 6) * spr_dir, y - 15, 19);
                }
                if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1{
                    sound_play(sound_get("sfx_fspecial_loop"), true, false);
                }
                break;
            case 2:
                // FUCK
                move_cooldown[AT_FSPECIAL] = 60;
                hsp = fspecial_speed * spr_dir;
                if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
                    can_escape = true;
                }
                if place_meeting(x + 8 *spr_dir,y,asset_get("par_block")){
                    //
                    var stor_hsp = hsp;
                    var stor_vsp = vsp;
                    stor_hsp *= -1;
                    spr_dir *= -1;
                    hit_wall = true;
                    djumps = 0;
                    if timer_wall < timer_wall_max{
                        hsp = 0;
                        vsp = 0;
                        timer_wall++;
                    } else {
                        if timer_wall >= timer_wall_max{
                            hsp = stor_hsp;
                            vsp = stor_vsp;
                        }
                    }
                }
                if can_escape and !was_parried{
                    if special_pressed or shield_pressed{
                        window = 3;
                        window_timer = 0;
                        sound_stop(sound_get("sfx_fspecial_loop"));
                    }
                    if !has_hit{
                        move_cooldown[AT_FSPECIAL] = 120;
                    }
                }
                if hit_wall{
                    can_jump = true;
                    can_shield = true;
                }
                if has_hit and !was_parried{
                    move_cooldown[AT_FSTRONG] = 20;
                    move_cooldown[AT_USTRONG] = 20;
                    move_cooldown[AT_DSTRONG] = 20;
                    set_state(PS_JUMPSQUAT);
                }
                break;
        }
        break;
    case AT_USPECIAL:
        can_move = false;
        can_wall_jump = true;
        if window < 3{
            if (!moved_up){
                if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                    for (var i = 0; i < 20; i++){
                        if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                            y -= i;
                            moved_up = true;
                            break;
                        }
                    }
                }
            }
        }
        switch(window){
            case 1:
                if window_timer == 1{
                        reset_window_value(attack, 2, AG_WINDOW_HSPEED);
                        reset_window_value(attack, 2, AG_WINDOW_VSPEED);
                }
                if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1{
                    // check if holding back
                    if ((spr_dir == -1 and right_down) or (spr_dir == 1 and left_down)){
                        set_window_value(attack, 2, AG_WINDOW_HSPEED, 1);
                        set_window_value(attack, 2, AG_WINDOW_VSPEED, -9);
                        set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
                        set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
                        set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
                    } else {
                        if ((spr_dir == -1 and left_down) or (spr_dir == 1 and right_down)){
                            set_window_value(attack, 2, AG_WINDOW_HSPEED, 5);
                            set_window_value(attack, 2, AG_WINDOW_VSPEED, -6);
                            set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 65);
                            set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 75);
                            set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 75);
                        } else {
                            set_window_value(attack, 2, AG_WINDOW_HSPEED, 4);
                            set_window_value(attack, 2, AG_WINDOW_VSPEED, -8);
                            set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
                            set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 80);
                            set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 80);
                        }
                    }
                }
                break;
            case 2:
                if window_timer % 6 == 0{
                    sound_play(sound_get("sfx_uspecial"))
                }
                break;
            case 3:
                // spawn visual effect
                if window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 6{
                    spawn_hit_fx(x + 26 * spr_dir, y - 40, hfx_waterfallfinal)
                }
                break;
        }
        break;
    case AT_DSPECIAL:
        can_fast_fall = false;
        can_wall_jump = true;
        switch(window){
            case 2:
                if window_timer == 14{
                    sound_play(sound_get("sfx_thunder"));
                }
                if window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) - 1{
                    // Create
                    raincloud = instance_create(x, round(get_stage_data(SD_TOP_BLASTZONE) / 3), "obj_article1");
                    raincloud.player_id = id;
                }
                break;
        }
        break;
    case AT_DSPECIAL_2:
        can_fast_fall = false;
        can_wall_jump = true;
        if window == 1 and raincloud != noone and window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1{
            if x > get_stage_data(SD_X_POS) and x < room_width - get_stage_data(SD_X_POS){
                sound_play(asset_get("sfx_absa_cloud_send"))
                raincloud.state = 2;
            }
        }
        if window == 2{
            // slowly move the cloud over.
            if x > get_stage_data(SD_X_POS) and x < room_width - get_stage_data(SD_X_POS){
                raincloud.x = lerp(raincloud.x, x, .025);
            }
            if window_timer >= 10{
                can_jump = true;
            }
            if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
                if !special_down{
                    window = 3;
                    window_timer = 0;
                }
            }
        }
        if window == 3 and window_timer == 1{
            // Cool
            if raincloud != noone{
                raincloud.state = 1;
            }
        }
        break;
}

#define trigger_ult_b_reverse

if (left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) && attack_hasBReversed == false {
    hsp*=-1;
    spr_dir*=-1;
    attack_hasBReversed = true;
} else if state_timer == 6 {
    attack_hasBReversed = false;
}
