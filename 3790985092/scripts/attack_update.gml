//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//Other Code
switch (attack) {
    case AT_JAB:
        if (window == 1) {
            if (window_time_is(1) ) {
                has_ink_for_attack = true;
                if (ink_level < 10) {
                    has_ink_for_attack = false;
                    sound_play(sound_get("no_ink_fire"));
                } else ink_level -= 10;
            }
        }
        if (window == 1) {
            clear_button_buffer( PC_ATTACK_PRESSED );
        }
        if (window_time_is(3) && !has_hit) {
            if (window == 2) {
                 //if (has_ink_for_attack == true) {
                 //   create_hitbox( AT_JAB, 3, x+28*spr_dir, y-28);
                 //   ink_level -= 10;
                 //}
            } else if (window == 5) {
                 if (has_ink_for_attack == true && ink_level >= 10){
                  create_hitbox( AT_JAB, 3, x+28*spr_dir, y-28);
                  ink_level -= 10;
                 }
            }
        }
        if ( (window == 2 || window == 5) && window_time_is(1) ) {
             if (has_ink_for_attack == true) spawn_ink_series(gridpos-24*spr_dir, y, 6, spr_dir);
        }
    break;
    case AT_FTILT:
        if (window == 1) {
            if (window_time_is(1) ) {
                set_attack_value(AT_FTILT, AG_STRONG_CHARGE_WINDOW, 1);
                has_ink_for_attack = true;
                if (ink_level < 15) {
                    has_ink_for_attack = false;
                    sound_play(sound_get("no_ink_fire"));
                    set_attack_value(AT_FTILT, AG_STRONG_CHARGE_WINDOW, 0);
                } else ink_level -= 15;
            }
        }
        if(window = 2 && window_time_is(2) ) {
            sound_play(sound_get("wiper_swipe2") );
        }
        if (window == 3 && window_time_is(1) ) {
            if (has_ink_for_attack == true) spawn_ink_series(gridpos-8*spr_dir, y, 8, spr_dir);
        }
    break;
    case AT_UTILT:
        if (window == 1) {
            if (window_time_is(5) ) {
                has_ink_for_attack = true;
                if (ink_level < 10) {
                    has_ink_for_attack = false;
                    sound_play(sound_get("no_ink_fire"));
                } else { 
                ink_level -= 10;
                sound_play(sound_get("ink_shoot"));
                }
            }
        }
        if (window == 2) {
            // if (window_time_is(1) ) {
            //     if (has_ink_for_attack == true) spawn_ink_series(gridpos-8*spr_dir, y, 6, spr_dir);
            // }
            if (window_time_is(3) && has_ink_for_attack == true) {
                if (!has_hit) {
                    create_hitbox( AT_UTILT, 5, x+20*spr_dir, y-60);
                } else {
                    window = 4;
                    window_timer = 0;
                }
            }
        }
        /*if (window == 3) {
            if (window_timer < 7 && attack_down) {
                window = 4;
                window_timer = 0;
            }
        }*/
        if ( (window == 4 || window == 5) && window_time_is(window_end(attack, window) ) ) {
            window++;
            window_timer = 0;
        }
    break;
    case AT_DATTACK:
        // if (window == 1 && window_time_is(1) ) {
        //     spawn_ink_series(gridpos-24*spr_dir, y, 6, spr_dir);
        // }
        if (window == 2 && window_time_is(1) ) {
            spawn_hit_fx(x-20*spr_dir, y, fx_dattack);
        }
        if (window == 3 && window_time_is(window_end(attack, window)) && attack_down) {
            window = 5;
            window_timer = 0;
        }
        if (window == 3 && y > get_stage_data(SD_Y_POS)) {
            can_jump = true;
            can_shield = true;
        }
        if(free){
        vsp = clamp(vsp, 0, 3)
        }
        if (window == 5) {
            if (window_time_is(window_end(attack, window)) ) {
                if (attack_down) {
                    window = 5;
                    window_timer = 0;
                } else {
                    window = 4;
                    window_timer = 0;
                }
            }
            if (window_time_is(1) || window_time_is(7) ) {
                if (ink_level >= 0.1 * max_ink_level) {
                    create_hitbox(attack, 2, x-24*spr_dir, y-16)
                    sound_play(asset_get("sfx_swipe_weak1"));
                    sound_play(sound_get("ink_shoot"));
                    ink_level -= 0.1 * max_ink_level;
                } else {
                    sound_play(sound_get("no_ink_fire"));
                }
            }
        }
    break;
    case AT_FAIR:
        if (window == 2 && window_time_is(window_end(attack, window)) && (attack_down || ((left_strong_down || left_stick_down) && spr_dir == -1) || ((right_strong_down || right_stick_down) && spr_dir == 1))) {
            window = 5;
            window_timer = 0;
        }
        if (window == 5) {
            if (window_time_is(window_end(attack, window)) ) {
                if (attack_down || ((left_strong_down || left_stick_down) && spr_dir == -1) || ((right_strong_down || right_stick_down) && spr_dir == 1)) {
                    window = 5;
                    window_timer = 0;
                } else {
                    window = 4;
                    window_timer = 0;
                }
            }
            if (window_time_is(1) ) {
                if (ink_level >= 0.04 * max_ink_level) {
                    create_hitbox(attack, 3, x+64*spr_dir, y-52)
                    sound_play(asset_get("sfx_swipe_weak1"));
                    sound_play(sound_get("ink_shoot"));
                    ink_level -= 0.04 * max_ink_level;
                } else {
                    sound_play(sound_get("no_ink_fire"));
                }
            }
        }
    break;
    case AT_BAIR:
        if (window == 2 && window_time_is(window_end(attack, window)) && (attack_down || ((left_strong_down || left_stick_down) && spr_dir == 1) || ((right_strong_down || right_stick_down) && spr_dir == -1))) {
            window = 4;
            window_timer = 0;
        }
        if (window == 4) {
            if (window_time_is(window_end(attack, window)) ) {
                if (attack_down || ((left_strong_down || left_stick_down) && spr_dir == 1) || ((right_strong_down || right_stick_down) && spr_dir == -1)) {
                    window = 4;
                    window_timer = 0;
                } else {
                    window = 3;
                    window_timer = 0;
                }
            }
            if (window_time_is(1) ) {
                if (ink_level >= 0.04 * max_ink_level) {
                    create_hitbox(attack, 2, x-64*spr_dir, y-24)
                    sound_play(asset_get("sfx_swipe_weak1"));
                    sound_play(sound_get("ink_shoot"));
                    ink_level -= 0.04 * max_ink_level;
                } else {
                    sound_play(sound_get("no_ink_fire"));
                }
            }
        }
    break;
    case AT_UAIR:
        if ( (window == 1 && window_time_is(get_window_value(attack, window, AG_WINDOW_LENGTH) ) ) || window == 2) {
            hud_offset = 55;
        }
    break;
    case AT_DAIR:
        if (window == 1 && window_time_is(1)) {
            sound_play(sound_get("dair_charge"))
            if(has_daired){
            set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -2);
            }else{
            reset_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED);
            }
        }
        if (window == 2 && window_time_is(get_window_value(attack, window, AG_WINDOW_LENGTH))) {
            sound_play(sound_get("dair_shoot"))
            sound_stop(sound_get("dair_charge"))
            has_daired = true;
        }
    break;
    case AT_FSTRONG:
        if (window == 1) {
            if (window_time_is(1) ) {
                splatling_charge = 0;
                has_ink_for_attack = true;
                if (ink_level < 25) {
                    has_ink_for_attack = false;
                    sound_play(sound_get("no_ink_fire"));
                } else ink_level -= 25;
            }
            if (smash_charging && strong_charge mod 12 == 0) {
                sound_play(sound_get("splatling_rev") );
                if (has_ink_for_attack == true) ink_level -= 5;
            }
            if (has_ink_for_attack == true && ink_level >= 5) splatling_charge = strong_charge;
        }
        if (window == 2) {
            if (window_time_is(4) && has_ink_for_attack == false) {
                window = 4;
                window_timer = 0;
            }
        }
        if (window == 3) {
            if (window_time_is(1) || window_time_is(3) || window_time_is(6) || window_time_is(9)) {
                sound_play(sound_get("splatling_shot") );
            }
            if (window_time_is(1) ) {
                if (has_ink_for_attack == true) spawn_ink_series(gridpos+8*spr_dir, y, 3, spr_dir);
            }
            if (window_time_is(11)) {
                if (splatling_charge >= 20) {
                    window_timer = 0;
                    window = 6;
                    splatling_charge -= 20;
                }
            }
        }
        if (window == 4 && window_time_is(6) ) {
            if (has_ink_for_attack == true) spawn_ink_series(gridpos+56*spr_dir, y, 3, spr_dir);
            sound_play(sound_get("splatling_shot") );
        }
        if (window == 6) {
            if (window_time_is(1) || window_time_is(3) || window_time_is(6) || window_time_is(9)) {
                sound_play(sound_get("splatling_shot") );
            }
            if (window_time_is(1) ) {
                spawn_ink_series(gridpos+8*spr_dir, y, 3, spr_dir);
            }
            if (window_time_is(11)) {
                if (splatling_charge >= 20) {
                    window_timer = 0;
                    window = 3;
                    splatling_charge -= 20;
                } else {
                    window_timer = 0;
                    window = 4;
                }
            }
        }
    break;
    case AT_DSTRONG:
        if (window == 1) {
            if (window_time_is(1) ) {
                has_ink_for_attack = true;
                if (ink_level < 20) {
                    has_ink_for_attack = false;
                    sound_play(sound_get("no_ink_fire"));
                } else ink_level -= 20;
            }
        }
        if (window == 2 && window_time_is(window_end(attack,window))) {
            sound_play( sound_get( "bucket_swipe" ))
        }
        if (window == 3) {
            if (window_time_is(1) ) {
                 if (has_ink_for_attack == true) spawn_ink_series(gridpos-8*spr_dir, y, 6, spr_dir);
            }
            if (window_time_is(4) ) {
                 if (has_ink_for_attack == true) spawn_ink_series(gridpos-24*spr_dir, y, 5, -spr_dir);
            }
        }
    break;
    case AT_USTRONG:
        if (window == 1) {
            if (window_time_is(1) ) {
                has_ink_for_attack = true;
                if (ink_level < 30) {
                    has_ink_for_attack = false;
                    sound_play(sound_get("no_ink_fire"));
                } else ink_level -= 30;
            }
        }
        if (window == 1 || window == 2) {
            if (!has_hit) {
                if (shield_down && has_ink_for_attack == true) {
                    ustrong_jump = true;
                }
            }
        }
        if (window == 4 && window_time_is(1) ) {
            sound_play( sound_get( "blaster_shot" ) )
        }
        if (window == 5) {
            if (window_time_is(1) ) {
                if (ustrong_jump == false) {
                    if (has_ink_for_attack == true) spawn_ink_series(gridpos-40*spr_dir, y, 7, spr_dir);
                    create_hitbox(attack, 2, x+10*spr_dir, y-72);
                    if (has_ink_for_attack == true) create_hitbox(attack, 3, x+10*spr_dir, y-72);
                    if (has_ink_for_attack == true) sound_play( sound_get( "blaster_explo" ) )
                } else {
                    create_hitbox(attack, 4, x+10*spr_dir, y-72);
                }
            }
        }
    break;
    case AT_NSPECIAL:
        if (window == 1) {
        	if(window_timer = 4){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
        	sound_play(sound_get("stringer_charge"))
        	}
            nspec_vmult = 1;
            nspec_hmult = 1;
            nspec_charge = false;
            set_num_hitboxes(AT_NSPECIAL, 3);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT);

            reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);

            reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER);

            reset_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER);
        }
        if (window == 2) {
            if (!special_down || (ink_level < 20 && window_time_is(1) ) ) {
                if (ink_level < 20) {
                    set_num_hitboxes(AT_NSPECIAL, 0);
                    sound_play(sound_get("no_ink_fire"));
                }
                sound_stop(sound_get("stringer_charge"))
                sound_play(sound_get("stringer_shoot"))
                window = 4;
                window_timer = 0;
                
            }
            if (window_time_is(1) ) {
                ink_level -= 20;
            }
            if (window_timer mod 3 == 0) {
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 10*nspec_hmult);
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -5*nspec_vmult);
                set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10*nspec_hmult);
                set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -2*nspec_vmult);
                set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 10*nspec_hmult);
                set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 1*nspec_vmult);            
                nspec_vmult -= 0.075;
                nspec_hmult += 0.1;
                if (window_timer != 0) ink_level -= 2;
            }
            if (window_timer mod 12 == 0) {
                var nspec_grav = get_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY) - 0.075;
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, nspec_grav);
                set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, nspec_grav);
                set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, nspec_grav);
            }
            if (window_time_is(35) ) {
                set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
                set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
                set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
                set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
                set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
                set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
                set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
                set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
                set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 0);
                set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 0);
                set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 0);
                nspec_charge = true;
                white_flash_timer = 10;
                ink_level -= 5;
            }
        }
        if (window == 3) {
            if(state_timer mod 10 = 1){
			sound_play(sound_get("stringer_charge_loop"))
            }
            if (!special_down) {
            	sound_stop(sound_get("stringer_charge"))
            	sound_stop(sound_get("stringer_charge_loop"))
            	sound_play(sound_get("stringer_shoot_max"))
                window = 4;
                window_timer = 0;
            }
            if (window_time_is(get_window_value(attack, window, AG_WINDOW_LENGTH) ) ) {
                window_timer = 0;
            }
        }
    break;
    case AT_FSPECIAL:
        if (window == 1) {
            if (window_time_is(1) ) {
                has_ink_for_attack = true;
                set_num_hitboxes(AT_FSPECIAL, 3);
                if (ink_level < 30) {
                    has_ink_for_attack = false;
                    sound_play(sound_get("no_ink_fire"));
                    set_num_hitboxes(AT_FSPECIAL, 1);
                } else ink_level -= 30;
            }
            if (window_time_is(window_end(attack, window))) {
                sound_play( sound_get("roller_splat") );
                sound_play( sound_get("roller_swing") );
            }
            if ((jump_down || (can_tap_jump() && tap_jump_pressed)) && !free) {
                vsp = -6;
            }
        }
        if (window == 2) {
            if (window_time_is(1) && !free) {
                if (has_ink_for_attack) spawn_ink_series(gridpos-8*spr_dir, y, 9, spr_dir);
            }
        }
        hsp = clamp(hsp, -5, 5);
    break;
    case AT_USPECIAL:
        can_fast_fall = false;
        if!has_hit{
        move_cooldown[attack] = 20;
        }
        if (window == 1) {
            uspec_should_tether = 0;
            grabbed_player_obj = noone; 
            grabbed_player_relative_x = 0;
            grabbed_player_relative_y = 0;
        }
        
        if (free && window == 4 && window_timer >= 1 + has_hit_player && !uspec_should_tether) {
            var sol_1  = collision_ellipse(x + (uspec_grabs[0][0] * spr_dir) - uspec_grabs[0][2], y - uspec_grabs[0][1] - uspec_grabs[0][3], x + (uspec_grabs[0][0] * spr_dir) + uspec_grabs[0][2], y - uspec_grabs[0][1] + uspec_grabs[0][3], asset_get("par_block"), false, true);
            var sol_2  = collision_ellipse(x + (uspec_grabs[1][0] * spr_dir) - uspec_grabs[1][2], y - uspec_grabs[1][1] - uspec_grabs[1][3], x + (uspec_grabs[1][0] * spr_dir) + uspec_grabs[1][2], y - uspec_grabs[1][1] + uspec_grabs[1][3], asset_get("par_block"), false, true);
            var sol_3  = collision_ellipse(x + (uspec_grabs[2][0] * spr_dir) - uspec_grabs[2][2], y - uspec_grabs[2][1] - uspec_grabs[2][3], x + (uspec_grabs[2][0] * spr_dir) + uspec_grabs[2][2], y - uspec_grabs[2][1] + uspec_grabs[2][3],   asset_get("par_block"), false, true);
            var sol_4  = collision_ellipse(x + (uspec_grabs[3][0] * spr_dir) - uspec_grabs[3][2], y - uspec_grabs[3][1] - uspec_grabs[3][3], x + (uspec_grabs[3][0] * spr_dir) + uspec_grabs[3][2], y - uspec_grabs[3][1] + uspec_grabs[3][3],   asset_get("par_block"), false, true);
            
            var plat_1 = collision_ellipse(x + (uspec_grabs[0][0] * spr_dir) - uspec_grabs[0][2], y - uspec_grabs[0][1] - uspec_grabs[0][3], x + (uspec_grabs[0][0] * spr_dir) + uspec_grabs[0][2], y - uspec_grabs[0][1] + uspec_grabs[0][3], asset_get("par_jumpthrough"), false, true);
            var plat_2 = collision_ellipse(x + (uspec_grabs[1][0] * spr_dir) - uspec_grabs[1][2], y - uspec_grabs[1][1] - uspec_grabs[1][3], x + (uspec_grabs[1][0] * spr_dir) + uspec_grabs[1][2], y - uspec_grabs[1][1] + uspec_grabs[1][3], asset_get("par_jumpthrough"), false, true);
            var plat_3 = collision_ellipse(x + (uspec_grabs[2][0] * spr_dir) - uspec_grabs[2][2], y - uspec_grabs[2][1] - uspec_grabs[2][3], x + (uspec_grabs[2][0] * spr_dir) + uspec_grabs[2][2], y - uspec_grabs[2][1] + uspec_grabs[2][3],   asset_get("par_jumpthrough"), false, true);
            
            if(sol_1 || sol_2 || sol_3 || sol_4 || plat_1 || plat_2 || plat_3) && uspecial_limit < 3 {
                if (!instance_exists(grabbed_player_obj)) {
                    vsp = 0;
                    hsp = 0;
                }
                sound_play(asset_get("sfx_hod_ustrong_whip"))
                // sound_play(sound_get("zip_fling"))
                destroy_hitboxes();
                if(sol_1 || plat_1){
                    spawn_hit_fx(x + 60 * spr_dir, y - 178, HFX_GEN_SWEET);
                    uspec_should_tether = 1;
                } else if(sol_2 || plat_2){
                    spawn_hit_fx(x + 35 * spr_dir, y - 118, HFX_GEN_SWEET);
                    uspec_should_tether = 2;
                } else if(sol_3 || plat_3){
                    spawn_hit_fx(x + 15 * spr_dir, y - 68, HFX_GEN_SWEET);
                    uspec_should_tether = 3;
                } else if(sol_4){
                    spawn_hit_fx(x + 15 * spr_dir, y - 44, HFX_GEN_SWEET);
                    uspec_should_tether = 4;
                }
            }
        }

        if (instance_exists(grabbed_player_obj)) {
        
            //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
            if (window >= 8) { grabbed_player_obj = noone; }
            else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

            else {
                //keep the grabbed player in hitstop until the grab is complete.
                grabbed_player_obj.hitstop = 2;
                grabbed_player_obj.hitpause = true;
                
                //if this is the first frame of a window, store the grabbed player's relative position.
                //if (window_timer <= 1) {
                //	grabbed_player_relative_x = grabbed_player_obj.x - x;
                //	grabbed_player_relative_y = grabbed_player_obj.y - y;
                //}
                
                //on the first window, pull the opponent into the grab.
                if (window == 4) { 
                    //change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
                    var pull_to_x = 66 * spr_dir;
                    var pull_to_y = -156;
                    
                    //using an easing function, smoothly pull the opponent into the grab over the duration of this window.
                    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) + get_window_value(attack, window+1, AG_WINDOW_LENGTH);
                    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
                    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
                }
                if (window == 4) { 
                    //change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
                    var pull_to_x = 66 * spr_dir;
                    var pull_to_y = -156;
                    
                    //using an easing function, smoothly pull the opponent into the grab over the duration of this window.
                    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
                    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
                }
                //the above block can be copied for as many windows as necessary.
                //e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
            }
        }
        if (window == 4 && window_time_is(5) ) {
            if (instance_exists(grabbed_player_obj) ) {
                vsp = -12;
                hsp = 6*spr_dir;
                destroy_hitboxes();
                window = 7;
                window_timer = 0;
                djumps = 0;
                has_airdodge = true;
                has_walljump = true;
            }
            else if (uspec_should_tether) {
                window = 9;
                window_timer = 0;
                vsp = -14 + 2 * (uspec_should_tether-1); // -16 + 3, -15
                uspecial_limit++;
            }
        }
    break;
    case AT_DSPECIAL:
        if (window == 1) {
        move_cooldown[AT_DSPECIAL] = 60;
            if (shield_down) {
                window = 4;
                bomb_type += 1
                clear_button_buffer(PC_SHIELD_PRESSED)
                clear_button_buffer(PC_SPECIAL_PRESSED)
            }
        }
        if (window == 2 && window_time_is(1) ) {
            if ( (bomb_type == 0 && ink_level >= 0.2 * max_ink_level) || (bomb_type == 1 && ink_level >= 0.1 * max_ink_level) || (bomb_type == 2 && ink_level >= 0.5 * max_ink_level) ) {
                var thrown_bomb = instance_create(x+32*spr_dir, y-floor(char_height*2/3), "obj_article3");
                thrown_bomb.type = bomb_type;
                switch (bomb_type) {
                    case 0:
                        ink_level -= 0.2 * max_ink_level;
                    break;
                    case 1:
                        ink_level -= 0.1 * max_ink_level;
                    break;
                    case 2:
                        ink_level -= 0.5 * max_ink_level;
                    break;
                }
                bomb_type += 1;
            }
        }
        if (bomb_type >= 3) {
            bomb_type = 0;
        }
    break;
    case AT_TAUNT:
    	if(window = 1){
    	if(window_timer = 5){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    	sound_play(asset_get("sfx_swipe_weak2"))
    	}
    	if(window_timer = 23){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    	sound_play(asset_get("sfx_swipe_medium2"))
    	sound_play(asset_get("sfx_blow_weak1"))
    	}
    	}
    	if(window = 3){
    	if(window_timer = 1){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    	sound_play(asset_get("sfx_blow_weak2"))
    	}
    	}
    	if(window = 4 && window_timer = 1){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    	sound_play(asset_get("sfx_swipe_weak1"))
    	}
        if (window == 3 && window_time_is(window_end(attack, window))) {
            if (taunt_down) {
                window_timer = window_end(attack, window) - 1;
            }
        }
    break;
}


#define window_end(att, wind)
    return floor(get_window_value(att, wind, AG_WINDOW_LENGTH) * ((get_window_value(att, wind, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

#define ground_at_pos(xpos, ypos)
    return position_meeting(xpos, ypos, asset_get("par_block")) || (position_meeting(xpos, ypos, asset_get("par_jumpthrough")) && !position_meeting(xpos, ypos-2, asset_get("par_jumpthrough")));

/*#define spawn_ink(xpos, ypos, id)
    if ground_at_pos(xpos, ypos) var g = spawn_hit_fx(xpos, ypos, fx_inktile[id]);
    else return noone;
    g.spr_dir = 1;
    return g;

#define spawn_ink_series(startx, starty, num, dir)
    var main = noone;
    var n = 0;
    var r = 0;
    var spr = floor(startx/16)%am;
    var arr = ink_sprites;
    repeat(num){
        var h = spawn_ink(startx + 16*r*dir, starty, arr[spr]);
        if h != noone n++;
        if main = noone && h != noone main = h;
        else if h = noone || r+1 = num{
            with main if "ink_data" not in self ink_data = n*dir;
            main = noone;
            n = 0;
        }
        spr = (spr+dir)%am;
        if spr < 0 spr = am -1;
        r++;
    }*/

#define spawn_ink(xpos, ypos)
    if (ground_at_pos(xpos, ypos) && !ground_at_pos(xpos, ypos-8)) {
        var g = instance_create(xpos, ypos, "obj_article2");
        g.spr_dir = 1;
        return g;
    }
    else return noone;

#define spawn_ink_series(startx, starty, num, dir)
    var main = noone;
    var n = 0;
    var r = 0;
    repeat(num){
        var h = spawn_ink(startx + 16*r*dir, starty);
        r++;
    }

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion