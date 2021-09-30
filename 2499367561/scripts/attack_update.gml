 //B - Reversals
if ( attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_USTRONG){
    if(window == 1){
        char_height = lerp(char_height, 40, 0.35)
    }
    if(window == 2){
        char_height = lerp(char_height, 85, 0.35)
    }
    if(window == 3 && window_timer > 15){
        char_height = lerp(char_height, 50, 0.35)
    }
}
if(attack == AT_UTILT){
    if(window == 1){
        char_height = lerp(char_height, 85, 0.35)
    }
    if(window == 2 && window_timer == 1){
        momentum /= 2.5
        hsp /= 2.5
    }
    if(window > 2 && has_hit_player){
        can_jump = true
        can_tap_jump = true
        can_attack = true
    }
    if(window == 3){
        char_height = lerp(char_height, 50, 0.35)
    }
}

if(attack == AT_FTILT){
    if(window == 1 && window_timer == 7){
        sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
    } 
    if(window > 2){
        if(has_hit_player){
            can_attack = true
            can_jump = true
            can_tap_jump = true
        }
    }
    if(window == 2 && window_timer == 1){
        if(spr_dir = 1 && momentum <= 0){
            momentum = 4
        }else if(spr_dir = -1 && momentum >= 0){
            momentum = -4
        }else if(momentum < 7 && momentum > -7){
            momentum += 4*spr_dir
        }
    }
    if(window == 4 && window_timer == 1){
        momentum /= 1.2
    }
}

if(attack == AT_JAB){
    vsp = 0
    if(window == 3 && window_timer == 1 && momentum < 4 && momentum > -4){
        momentum += 1*spr_dir
    }
    if(window == 5 && window_timer == 1 && momentum < 4 && momentum > -4){
        momentum += 2*spr_dir
    }
}
if(attack == AT_DTILT){
    if(window == 1){
        char_height = lerp(char_height, 30, 0.35)
    }
    if(window == 2 && window_timer == 1){
        momentum /= 1.5
        hsp /= 1.5
    }
    if(has_hit_player && window > 2 || has_hit_player && window == 2 && window_timer > 4){
        can_attack = true
        can_jump = true
        can_tap_jump = true
    }
}

if(attack == AT_FAIR){
    if(window == 1 && window_timer == 8){
        sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
    }
    if(window == 2 && window_timer == 1){
        if(hsp < 0 && spr_dir == 1){
            hsp = 2
        }else if(hsp > 0 && spr_dir == -1){
            hsp = -2
        }
    }
}

if(attack == AT_BAIR){
    if(window == 3 && window_timer == 8){
        sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
    } 
}

if(attack == AT_UAIR){
    if(window == 2){
        char_height = lerp(char_height, 85, 0.35)
    }
    if(window == 4 && window_timer > 6){
        char_height = lerp(char_height, 50, 0.35)
    }
    if(hsp > 3 || hsp < -3){
        if(hsp > 3){
            if(spr_dir = 1){
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 55);
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 55);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
                set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 4);
            }else{
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 125);
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 125);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
                set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 4);
            }
        }else if(hsp < -3){
            if(spr_dir = -1){
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 55);
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 55);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
                set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 4);
            }else{
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 125);
                set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 125);
                set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
                set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
                set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 4);
            }
        }
    }else{
        set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 85);
        set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 7);
        set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 85);
        set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 7);
        set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 2);
        set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 2);
    }
    if(window == 1 && window_timer == 9){
        sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
    } 
    if(window == 2 && window_timer == 7){
        sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
    } 
}

if(attack == AT_BAIR){
    if(window == 2){
        if(window_timer == 1){
            spr_dir *= -1
        }
        vsp = 0
        hsp = 6*spr_dir
    }
    if(window == 3){
        can_jump = true
        can_tap_jump = true
        if(window_timer == 0){
            hsp = 6*spr_dir
        }
    }
}

if(attack == AT_FAIR || attack == AT_BAIR || attack == AT_UAIR || attack == AT_DAIR || attack == AT_NAIR){
    if(!free && has_hit_player){
        can_jump = true
        can_tap_jump = true
        can_attack = true
        can_special = true
        can_strong = true
        can_ustrong = true
    }
}

/*
if attack == AT_NSPECIAL {
    nspecial_used = true
    if(window < 3){
        if(instance_exists(blackhole)){
            blackhole.hsp += (0.25 * cos(degtorad(point_direction(blackhole.x, blackhole.y, x, y))));
            blackhole.vsp += (-0.25 * sin(degtorad(point_direction(blackhole.x, blackhole.y, x, y))));
        }
    }
    if(window == 3){
        sound_stop(asset_get( "sfx_ell_hover" ));
    }
        if window == 1 && window_timer == 1 {
        sound_play(asset_get( "sfx_ell_hover" ));
       }
    if window_timer == 1 reversed = 0;
    if spr_dir == -1 && right_pressed && reversed == 0 || spr_dir == 1 && left_pressed && reversed = 0{
        spr_dir = -spr_dir;
        reversed = 1;
    }
    can_fast_fall = false;
    can_move = false;
    if window == 2 {
        if hsp > 8 hsp = 8
        if hsp < -8 hsp = -8
        if vsp > 8 || vsp < -8 vsp *= .6
       if up_down {
           vsp -= 0.2;
       }  else if down_down {
           vsp += 0.03
       } 
        else vsp *= 0.8
        if right_down {
           hsp += 0.2
       } else if left_down {
           hsp -= 0.2
       }
       can_jump = true;
       can_attack = true;
       if attack_pressed || jump_pressed sound_stop(asset_get("sfx_ell_hover"));

    }
    if window == 2 && !special_down {
        window = 3;
        window_timer = 1;
        sound_stop(asset_get("sfx_ell_hover"));
    }
}
*/

if(attack == AT_NSPECIAL){
    nspecial_used = true
    need_remove_hover_sound = true
    can_fast_fall = false
    can_move = false
    if(window < 3){
        if(instance_exists(blackhole)){
            blackhole.hsp += (0.2 * cos(degtorad(point_direction(blackhole.x, blackhole.y, x, y))));
            blackhole.vsp += (-0.2 * sin(degtorad(point_direction(blackhole.x, blackhole.y, x, y))));
        }
    }
    if(window == 1){
        if window_timer == 1 { 
            reverse = 0;
        }
        if (left_down && spr_dir == 1 || right_down && spr_dir == -1 && reverse == false) {
            hsp *= -1;
            spr_dir *= -1;
            reverse = true;
        } 
        if(free){
            jetpack_vsp = vsp
            jetpack_hsp = hsp
        }else{
            jetpack_vsp = 0
            jetpack_hsp = momentum
        }
        if(window_timer == 1){
            sound_play(asset_get( "sfx_ell_hover" ));
        }
    }if(window == 2){
        if(state_timer > 60){
            window = 3
            window_timer = 0
            jetpack = instance_create(x - 10*spr_dir, y - 40, "obj_article3")
        }else if(state_timer > 20){
            if(!special_down){
                window = 3
                window_timer = 0
                jetpack = instance_create(x - 10*spr_dir, y - 40, "obj_article3")
            }
        }
        //can_attack = true
        //can_special = true
        //can_jump = true
        //can_tap_jump = true
        if(!left_down && !right_down){
            jetpack_hsp /= 1.1
        }
        if(!up_down && !down_down){
            jetpack_vsp /= 1.1
        }
        if(jetpack_vsp >= -5 && jetpack_vsp <= 5){
            if(up_down || up_pressed){
                jetpack_vsp -= 0.2
            }else if(down_down || down_pressed){
                jetpack_vsp += 0.2
            }
        }else if(jetpack_vsp < -5){
            jetpack_vsp = -3
        }else if(jetpack_vsp > 5){
            jetpack_vsp = 3
        }
        if(jetpack_hsp >= -5 && jetpack_hsp <= 5){
            if(left_down || left_pressed){
                jetpack_hsp -= 0.3
            }else if(right_down || right_pressed){
                jetpack_hsp += 0.3
            }
        }else if(jetpack_hsp < -5){
            jetpack_hsp = -5
        }else if(jetpack_hsp > 5){
            jetpack_hsp = 5
        }
        hsp = jetpack_hsp
        vsp = jetpack_vsp
        momentum = jetpack_hsp
    }
    if(window == 3 && window_timer == 1){
        sound_stop(asset_get("sfx_ell_hover"))
        sound_play(asset_get("sfx_ell_utilt_retract"))
    }
    /*if (shield_pressed && window != 3){
        set_state(PS_IDLE_AIR);
        sound_stop(asset_get("sfx_ell_hover"));
        clear_button_buffer( PC_SHIELD_PRESSED );
        clear_button_buffer( PC_SPECIAL_PRESSED );
        spawn_hit_fx( x, y, 301 );
        sound_play(asset_get("sfx_ell_steam_hit"))
        hsp = jetpack_hsp * 1.5;
        vsp = jetpack_vsp * 1.5;
    } */
}

if(attack == AT_DSPECIAL){
    can_fast_fall = false
    if(window == 1 && window_timer == 1){
        if(instance_exists(blackhole)){
            set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_spin"));
            set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
        }else{
            set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_throw"));
            set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
        }
    }
    if(window == 2 && window_timer == 1){
        if(special_down){
            if(instance_exists(blackhole)){
                if(blackhole.state != 2){
                    blackhole.detonate = true
                    blackhole.image_index = 0
                    blackhole.state_timer = 0
                }
            }

        }
        if(!instance_exists(blackhole)){
            if(free){
                blackhole = instance_create(x,y, "obj_article1");
                if(left_down){
                    blackhole.hsp = 4
                }
                if(right_down){
                    blackhole.hsp = -4
                }
                blackhole.vsp = 4
                vsp = -3
            }else{
                blackhole = instance_create(x,y - 70, "obj_article1");
                vsp = -4
            }
        }else{
            if(blackhole.detonate != true){
                sound_play(asset_get("sfx_clairen_sword_activate"))
                blackhole.hsp = (10.5 * cos(degtorad(point_direction(blackhole.x, blackhole.y, x, y))));
        		blackhole.vsp = (-10.5 * sin(degtorad(point_direction(blackhole.x, blackhole.y, x, y))));
        		move_cooldown[AT_DSPECIAL] = 50
            }
        }
    }
}

if(attack == AT_FSPECIAL){
    can_fast_fall = false
    move_cooldown[AT_FSPECIAL] = 15
    if(window == 2 && window_timer > 4 || window == 3){
        //can_jump = true
        can_attack = true
        can_special = true
        //can_shield = true
        can_strong = true
    }
    if(window == 2 && window_timer == 1 && !instance_exists(star)){
        star = create_hitbox( AT_FSPECIAL, 1, x + 60*spr_dir, y - 30)
        spawn_hit_fx(star.x, star.y, vfx_space_small)
        sound_play(asset_get("sfx_clairen_tip_weak"))
        sound_play(asset_get("sfx_clairen_sword_activate"))
    }
}
if(attack == AT_USPECIAL && window < 3){
    if vsp > 2 vsp = 2
}
if attack == AT_USPECIAL && window == 2{
    can_jump = true;
    can_tap_jump = true
    can_fast_fall = false;

    if jump_pressed {
        momentum = momentum * 1.5;
        sound_stop( asset_get("sfx_ell_missile_loop") )
    }
    /*if shield_pressed {
        window = 4;
        window_timer = 1;
        vsp += -4
        sound_play(asset_get( "sfx_ell_steam_release" ));
        sound_stop( asset_get("sfx_ell_missile_loop") )
    }*/
    if(!special_down || window_timer == 29){
        window = 3
        vsp = (7 + window_timer / 8) * -1
        window_timer = 0
    sound_stop( asset_get("sfx_ell_missile_loop"));
    sound_stop(asset_get("sfx_ell_overheat"))
    sound_play(asset_get( "mfx_star" ));
    sound_play(asset_get( "sfx_blink_dash" ));
    sound_play(asset_get( "sfx_absa_cloud_pop" ));
    }
}



if(attack == AT_EXTRA_1){
    if(window == 1 && window_timer < 4){
        if(down_pressed && freemd|| down_down && freemd){
            set_state(PS_ROLL_BACKWARD)
            spot_dodge = true
        }
    }
    if(window == 1 && window_timer == 1){
        instance_create(x, y, "obj_article2")
    }
    if(window == 2){
        can_fast_fall = false;
        if(hitpause == false){
            if((up_down || up_pressed) && special_pressed){
                set_attack(AT_USPECIAL)
            }
            can_jump = true
            can_tap_jump = true
            can_ustrong = true
            if (down_pressed && !free && !freemd){
                    y = y + 10;
                    set_state(PS_IDLE_AIR);
            }
            if(left_pressed && !free){
                if(spr_dir == 1){
                    set_state(PS_ROLL_BACKWARD)
                }else{
                    set_state(PS_ROLL_FORWARD)
                }
            }else if(right_pressed && !free){
                if(spr_dir == 1){
                    set_state(PS_ROLL_FORWARD)
                }else{
                    set_state(PS_ROLL_BACKWARD)
                }
            }else if(down_pressed && !free){
                set_state(PS_ROLL_BACKWARD)
                spot_dodge = true
            }
        }
    }
    if(window < 3){
        invincible = true
    }
    if(!special_down && window == 2 && state_timer > 10){
        window = 3
        window_timer = 0
    }

}

if attack == AT_BAIR && window == 2 {
    can_fast_fall = false;
}

if attack == AT_FSTRONG && window == 2 && window_timer == 1 && !hitpause{
    hsp += 5 * spr_dir;
}

if(attack == AT_TAUNT){
    if(window_timer > 30 && window_timer < 50){
        char_height = lerp(char_height, 70, 0.4)
    }else{
        char_height = lerp(char_height, 50, 0.2)
    }
    if(window_timer == 5){
        sound_play(asset_get("sfx_spin"))
        sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
    }
    if(window_timer == 30){
        sound_play(asset_get("sfx_clairen_swing_mega_instant"))
        sound_play(asset_get("sfx_clairen_sword_deactivate"))
    }
}

if(attack == AT_TAUNT_2){
    if(window == 2){
      char_height = lerp(char_height, 35, 0.25)
    }
    if(window_timer == 1 && window == 1){
        kazot_playing = true
        sound_play(sound_get("mus_kazotsky_kick"), true, 0)
    }
    if(state_timer > 20){
        can_jump = true
        can_tap_jump = true
        if jump_pressed{
            sound_stop(sound_get("mus_kazotsky_kick"))
        }
        if(!taunt_down){
            set_state(PS_IDLE)
            sound_stop(sound_get("mus_kazotsky_kick"))
        }
    }
    can_move = true;
    if (right_down){
        spr_dir = 1;
        momentum += 0.1 * spr_dir;
        hsp = momentum;
    }
    if (left_down){
        spr_dir = -1;
        momentum += 0.1 * spr_dir;
        hsp = momentum;
    }
    if(momentum >= 2){
        momentum = 2;
    }
    if(momentum <= -2){
        momentum = -2;
    }
    suppress_stage_music(0, 0.09);
}
if attack == AT_USTRONG && window == 2 && window_timer == 1 && !hitpause{
    sound_play(asset_get("sfx_bird_upspecial"))
    sound_play(asset_get("sfx_clairen_uspecial_rise"))

}
if(attack == AT_FSTRONG){
    can_fast_fall = false
    if(window == 1 && free){
        hsp = 0
    }

}

if(attack == AT_DSTRONG){
    can_fast_fall = false
    if(window == 1 && free){
        hsp = 0
    }
    if window == 2 && window_timer == 4 && !has_hit{
        shake_camera(3, 6);
    }
    if window == 3 && window_timer == 4 && !has_hit{
        shake_camera(3, 6);
    } 
    if window == 4 && window_timer == 4 && !has_hit{
        shake_camera(3, 6);
    } 
}

/* pain

if(attack == AT_DSTRONG){
    print_debug(slams)
    if window == 2 && window_timer == 1 {
        slams = 6
    }
    if window == 3 && window_timer == 1 && slams != 0 {
        slams--;
    } 
    if slams == 0 {
        window = 4;
        window_timer = 1;
    }
    if window == 5 {
        slams = 0;
    }
}
*/


if(attack == AT_USTRONG){
    can_fast_fall = false
}
if(attack == AT_DATTACK){
    can_fast_fall = false
    if was_parried{
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
}

if(attack == AT_EXTRA_2){
    if(window == 1){
        if(free && window_timer == 23){
            window_timer = 0
        }else if(!free && state_timer > 4){
            window = 2
            window_timer = 0
        }
    }
    can_move = false;
    can_attack = false;
    can_jump = false;
    
}

if attack == AT_EXTRA_3 {
    can_move = false;
    can_fast_fall = false;
    if !taunt_down  {
        set_state(PS_PRATFALL)
        sound_stop(sound_get("wolves"));
        pillardraw = 0;
    }
    if (y < -80 || y > room_height + 100) {
        set_state(PS_PRATFALL)
        pillardraw = 0;
        create_deathbox( x, y, 9999, 9999, player, 1, 2, 1, 2 )
    }

    /*
    if y > get_stage_data(SD_TOP_BLASTZONE) -  {
        create_deathbox( x, y, 10, 10, player, 0, 0, 1, 2 )
        sound_stop(sound_get("wolves"));
    }
    */
}