//B - Reversals
if (attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR  || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL){
    trigger_b_reverse();
}
/*
if attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL {
    if has_hit && !hitpause {
        if special_pressed && gold_obj != 0|| special_down && gold_obj != 0 {
            attack_end();
            destroy_hitboxes();
            attack = AT_NSPECIAL_2
            window = 1;
            window_timer = 8;
            has_hit = 0;
            
        }
    }
}*/


switch attack {
    
    //#region Tilts ------------------------------------------------------------
    
    case AT_JAB:
        if window == 1 && window_timer == 6 {
            sound_play(asset_get("sfx_bite"),noone,0, 1, .8)
        }
        was_parried = false;
        if (state_timer == 1) clear_button_buffer( PC_ATTACK_PRESSED );
        break;
    
    case AT_DATTACK:
        if window == 2 && has_hit || window == 3 && has_hit {
            //can_attack = true;
        }
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_shovel_swing_med1"), 0, noone, 1, .9)
        }
        if window == 3 && window_timer == 1 {
            sound_play(asset_get("sfx_shovel_swing_med1"), 0, noone, 1, 1)
        }
        break;
    
    case AT_FTILT:
        babypitch = babypitch - .02
        sound_pitch(babysound, babypitch)
        break;
    
    case AT_UTILT: 
        if (state_timer > 6) hud_offset = 65;
        break;
    
    case AT_DTILT: 
        if (adrenaline_timer > 0 && has_hit_player && window == 3) {
            can_jump = true;
        }
        if window == 3 && window_timer == get_window_value( AT_DTILT, 3, AG_WINDOW_LENGTH ) && !was_parried {
            hurtboxID.sprite_index = sprite_get("hurts")
            attack_end();
            state = PS_IDLE         
        }
        break;
    
    //#endregion
    
    //#region Aerials ----------------------------------------------------------
    
    case AT_FAIR:
        if window == 1 && window_timer == 3 {
            sound_play(asset_get("sfx_shovel_swing_med2"), noone, 0, 1, .7)
        }
        if (adrenaline_timer > 0) {
            if window_timer == 1 && window == 1 {
                //hsp += 3 * spr_dir;
            }
            spawn_sparkle();
        }
        break;
    
    case AT_BAIR:
        hud_offset = 30;
        
        if (adrenaline_timer > 0) {
            if window_timer == 1 && window == 1 {
                //hsp -= 3 * spr_dir;
            }
        }
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_swipe_medium1"), noone, 0, 1, .7)
        }
        if window == 1 && window_timer == 12 {
            sound_play(asset_get("sfx_shovel_swing_med1"), noone, 0, 1, .7)
        }
        
        break;
    
    case AT_UAIR:
        if window == 1 && window_timer == 8 {
            sound_play(asset_get("sfx_shovel_swing_med1"), noone, 0, 1, .9)
        }
        break;
    
     case AT_DAIR:
        if window == 1 && window_timer == 5 {
            sound_play(asset_get("sfx_shovel_swing_med1"), noone, 0, 1, .8)
        }
        if (adrenaline_timer > 0) {
            if window_timer == 1 && window == 1 {
                //hsp += 3 * spr_dir;
            }
        }
    
        break;
    
    //#endregion
    
    //#region Strongs ----------------------------------------------------------
    
    case AT_FSTRONG:
        do_strong_adrenaline_effects();
        
        if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_shovel_swing_med1"), noone, 0, 1, .8)
        }
        if window == 2 && window_timer == 7 {
            sound_play(asset_get("sfx_zetter_downb"), noone, 0, 1, 1)
        }
        
        break;
    
    case AT_USTRONG:
        do_strong_adrenaline_effects();
        
        if (window > 1 && window < 5) hud_offset = 60;
        else if (window == 5 && window_timer < 14) hud_offset = 60;
        
        if window == 3 && window_timer == 2 {
            sound_play(asset_get("sfx_shovel_swing_med1"), noone, 0, 1, .7)
        }
        
        break;
    
    case AT_DSTRONG:
        do_strong_adrenaline_effects();
        
        if window == 2 && window_timer == 1 {
            //sound_play(asset_get("sfx_shovel_dig"))
            sound_play(asset_get("sfx_shovel_swing_heavy1"))
        }
        
        break;
    
    //#endregion
    
    //#region NSpecial ---------------------------------------------------------
    
    case AT_NSPECIAL_2 :
        if window == 4 {
            if has_hit && window_timer >= 6 {
                iasa_script();
            }
        }
        break;
        
    case AT_NSPECIAL_AIR :
        if window <= 3 {
        can_fast_fall = false
        } else {
            if has_hit can_fast_fall = true
        }
        switch (window) {
            
            case 1:
            case 4:
                if (!free) {
                    if was_parried { 
                        attack_end();
                    } else {
                        set_state(PS_LANDING_LAG);
                        landing_lag_time = 17
                    }
                }
                break;
                
            case 2:
                //on-hit multihit speed clamp (also in hit_player)
                if (has_hit) clamp(hsp, -3, 3);
            case 3:
                if (!free) {
                    window = 5;
                    window_timer = 0;
                    sound_play(asset_get("sfx_zetter_downb"))
                    destroy_hitboxes();
                }
                break;
            
        }
        break;
    
    // Deprecated
    case AT_NSPECIAL: 
        move_cooldown[AT_NSPECIAL] = 65;
        break;
    
    //#endregion
    
    //#region FSpecial ---------------------------------------------------------
    case AT_FSPECIAL:
        spawn_sparkle();
        if free {
            started_air = 1
        }
        if window_timer == 1 && window == 1 {
            set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
            started_air = 0
        }
        can_wall_jump = true
        if (adrenaline_timer > 0) {
            if window_timer == 1 && window == 1 {
                hsp -= 3 * spr_dir;
            }
            
        }
        if !free {
            set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
            if started_air == 1 && window != 5 {
                window = 5 
                window_timer = 0
                sound_play(asset_get("sfx_hod_flip1"))
                destroy_hitboxes();
            }
            if started_air == 0 && window == 4 && window_timer > 5 {
                window = 5 
                window_timer = 0
                sound_play(asset_get("sfx_hod_flip1"))
                destroy_hitboxes();
            }
        } 
        if window == 1 && window_timer == 6  {
            sound_play(asset_get("sfx_oly_fspecial_dash"))
            sound_play(asset_get("sfx_oly_dspecial_dashcancel"))
        }
        move_cooldown[AT_FSPECIAL] = 50;
        can_fast_fall = false
        can_move = false
    
    
        if (window > 1){
            if has_hit && !hitpause {
                can_attack = true
                can_special = true
                can_jump = true
                can_ustrong = true 
                can_strong = true
                can_shield = true 
    
                if (is_special_pressed( DIR_LEFT ) || is_special_pressed( DIR_RIGHT )) {
                    if (!free) set_state(PS_IDLE);
                    else set_state(PS_IDLE_AIR);
                    
                    if (is_special_pressed( DIR_LEFT ) && spr_dir == 1) spr_dir = -1;
                    else if (is_special_pressed( DIR_RIGHT ) && spr_dir == -1) spr_dir = 1;
                    
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                }
                if (jump_pressed && free) {
                    set_state(PS_DOUBLE_JUMP);
                    djumps = 1
                    vsp = -djump_speed;
                    hsp = clamp(hsp, -12, 12);
                    clear_button_buffer(PC_JUMP_PRESSED);
                }
               
            }
        }
        
        break;
    
    //#endregion
    
    //#region USpecial ---------------------------------------------------------
    
    case AT_USPECIAL:
        can_wall_jump = true
        can_fast_fall = false
        hud_offset = 70
        //can_move = false;
        if (window == 2) spawn_sparkle();
        if (!free && window > 1) {
            set_state(PS_PRATLAND)
        }
        //print_debug("old: " + string(old_vsp));
        break;
    
    //#endregion
    
    //#region DSpecial ---------------------------------------------------------
    
    case AT_DSPECIAL_AIR:
        move_cooldown[AT_DSPECIAL] = 60
        move_cooldown[AT_DSPECIAL_AIR] = 60
        can_fast_fall = false
        break;
        
    case AT_DSPECIAL:
        move_cooldown[AT_DSPECIAL] = 60
        move_cooldown[AT_DSPECIAL_AIR] = 60
        can_fast_fall = false;
        can_move = false
        if window == 1 && window_timer == 13 {
            sound_play(asset_get("sfx_zetter_downb"))
            spawn_hit_fx( x + 20 * spr_dir, y - 15, 301 )
        }
        break;
    
    //#endregion
    
    //#region Grinding ---------------------------------------------------------
    
    case AT_EXTRA_3:
        spawn_sparkle();
        //spawn_hit_fx( x, y, 14    )
        if (window_timer == 1 && !grinding) {
            grinding = true;
            if (abs(hsp) < 0.01) grind_dir = spr_dir; // floats :(
            else grind_dir = hsp > 0 ? 1 : -1;
            hsp = 12 * grind_dir;
            leave_ground_max = 10;
            max_jump_hsp = 10;
        }
        if (abs(hsp) > 9) hsp -= (0.6*grind_dir);
        
        var platdropping = down_hard_pressed && position_meeting(x, y+1, asset_get("par_jumpthrough"));
        var stick_pressed = up_stick_down || down_stick_down || left_stick_down || right_stick_down;
        if ((attack_pressed || special_pressed  || jump_pressed  || strong_down || stick_pressed || platdropping)  && state_timer > 3) {
            iasa_script();
        }

        
        break;
    
    //#endregion
    
    //#region Taunts -----------------------------------------------------------
    
    case AT_TAUNT:
        if window == 2 {
            if taunt_pressed || attack_pressed || special_pressed || shield_pressed {
                window = 3
                window_timer = 0
            }
        }
        break;
    
    case AT_EXTRA_1:
        hud_offset = 1000000
        if window_timer > 90 && taunt_down {
            window_timer = 91
        }
        break;
        
    case AT_EXTRA_2:
        hud_offset = 1000000
        if window_timer > 58 && taunt_down {
            window_timer = 0
        }
        break;
        
    //#region Graffitti
    case AT_TAUNT_2:
        if window == 3 && window_timer == 1 {
            // destroy old graffiti
            with obj_article3 {
                if player_id == other.id && num = "graffiti"{
                    instance_destroy();
                }
            }
            // create new graffiti
            graffiti_tagging = true;
            graffiti_id = instance_create(x, y, "obj_article3");
            graffiti_tagging = false;
        }
        break;
    //#endregion
    
    //#endregion
    
}


#define add_afterimage(in_lifetime)
    var afterimage = {
        ai_x : x,
        ai_y : y,
        ai_sprite_index : sprite_index,
        ai_image_index : image_index,
        ai_lifetime : in_lifetime,
        ai_max_lifetime : in_lifetime,
        ai_spr_dir : spr_dir
    };
    ds_list_add(afterimage_list, afterimage);
    
#define spawn_sparkle()
    var sparkle_type = random_func_2(42, 4, true);
    if (sparkle_type == 0) spawn_particle_random("sparkle_m1", 20, 20);
    else if (sparkle_type == 1) spawn_particle_random("sparkle_m2", 24, 20);
    else if (sparkle_type <= 3) spawn_particle_random("sparkle_s", 16, 20);

#define spawn_particle_random(in_sprite, lifetime, seed)
    var width = 70;
    var height = 70;
    var x_offset = -30 * spr_dir * (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG);
    var y_offset = -20 - (15 * (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG));
    var _x = floor(x - (width/2) + x_offset + random_func_2(seed, width, false));
    var _y = floor(y - (height/2) + y_offset + random_func_2(seed+1, height, false));
    var sparkle = {
        sp_x : _x,
        sp_y : _y,
        sp_sprite_index : sprite_get(in_sprite),
        sp_lifetime : 0,
        sp_max_lifetime : lifetime,
        sp_spr_dir : spr_dir
    };
    ds_list_add(sparkle_list, sparkle);

#define do_strong_adrenaline_effects() {
    if adrenaline_timer > 0 {
        if (window != get_attack_value(attack, AG_NUM_WINDOWS)) {
            spawn_sparkle();
            spawn_sparkle();
        }
        if window_timer == 1 && window == 1 {
            hsp = hsp * 1.45
        }
    }
}