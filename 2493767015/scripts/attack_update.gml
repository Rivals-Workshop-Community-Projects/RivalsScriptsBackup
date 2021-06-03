//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2){
    trigger_b_reverse();
}

if (attack == AT_JAB){
    if (window == 3){
        if (window_timer <= 1 && attack_down && has_hit != true){
        window = 1;
        window_timer = 0;
        }
        if (window_timer >= 1 && !hitpause){
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
    }
}

if (attack == AT_FTILT){
    if (window == 3 && window_timer == 3){
        sound_play(asset_get("sfx_swipe_medium2"));
    }
}

if (attack == AT_DATTACK){
    if (window == 2 && window_timer == 3){
        shake_camera( 2, 5 );
        sound_play(asset_get("sfx_obstacle_hit"));
        if (has_hit = true){
            sound_stop(asset_get("sfx_obstacle_hit"));
        }
    }
}

if (attack == AT_FSTRONG){
    if (window == 1){
        reset_attack_value(AT_FSTRONG, AG_NUM_WINDOWS);
    }
    if (window == 2 && window_timer == 4){
        if (up_down){
            set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
            window = 6;
            window_timer = 0;
        } else if (down_down){
            set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 11);
            window = 9;
            window_timer = 0;
        }   
    }
}

if (attack == AT_NSPECIAL){
    can_move = false;
    can_fast_fall = false;
    nspecial_kb = (nspecial_charge / 4);
    nspecial_speed = nspecial_charge * 4;
    if (window == 2){
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0 + nspecial_speed);
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9 + nspecial_charge);
        set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5 + nspecial_kb);
        set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6 + nspecial_charge);
        set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .25 + nspecial_kb);
        set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 6 + nspecial_charge);
        set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .25 + nspecial_kb);
        set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6 + nspecial_charge);
        set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .25 + nspecial_kb);
        if (window_timer == 16 && nspecial_charge != 3){
            window = 2;
            window_timer = 0;
            nspecial_charge++;
        }
        if (nspecial_charge >= 1){
            can_shield = true;
            can_jump = true;
            if (shield_pressed || jump_pressed){
                nspecial_charge = 0;
                sound_stop(sound_get("nspecial_charge"));
            }
            if (special_pressed){
                window = 3;
                window_timer = 0;
            }
            if (special_pressed && up_down){
                window = 6;
                window_timer = 0;
            }
        }
        if (window_timer == 16 && nspecial_charge == 3){
            nspecial_charge++;
            if (up_down){
                window = 6;
                window_timer = 0;
            }
        }
    }
    
    if (window == 3){
        if (left_down){
            spr_dir = -1
        }
        if (right_down){
            spr_dir = 1
        }
        if (window_timer == 1){
            if (nspecial_charge == 4){
                sound_stop(sound_get("nspecial_charge"));
                sound_play(sound_get("nspecial_lunge_large"));
            }
            else {
                sound_stop(sound_get("nspecial_charge"));
                sound_play(sound_get("nspecial_lunge_small"));
            }
        }
    }
    
    if (window == 6){
        if (left_down){
            spr_dir = -1
        }
        if (right_down){
            spr_dir = 1
        }
        if (window_timer == 1){
            sound_stop(sound_get("nspecial_charge"));
            sound_play(asset_get("sfx_swipe_heavy1"));
        }
    }
    
    if (window == 5 || window == 8){
        nspecial_charge = 0;
        reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
    }
}

if (attack == AT_NSPECIAL_2){
    if (window == 1){
        invincible = true;
        invince_time = 5;
        reset_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS);
        set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 12 * (0.5 + (star_meter/2)));
        set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .9 * star_meter);
        set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .9 * star_meter);
        set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 10 * (0.5 + (star_meter/2)));
        set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8 * star_meter);
        set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .8 * star_meter);
        set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 12 * (0.5 + (star_meter/2)));
        set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .9 * star_meter);
        set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITPAUSE_SCALING, .9 * star_meter);
        set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 12 * (0.5 + (star_meter/2)));
        set_hitbox_value(AT_NSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .9 * star_meter);
        set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITPAUSE_SCALING, .9 * star_meter);
        if (window_timer == 6){  
            if (up_down){
                window = 5;
                window_timer = 0;
                set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 7);
            }
        }
    }
    
    if (window == 2 && window_timer == 1){
        sound_play(sound_get("nspecial_lunge_star"));
    }
    
    if (window == 5 && window_timer == 1){
        sound_play(asset_get("sfx_swipe_heavy1"));
    }
    
    if (window == 4 || window == 7){
        star_meter = 0;
    }
}

if (attack == AT_FSPECIAL){
    can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
    move_cooldown[AT_FSPECIAL] = 600;
    if (window == 1 && !free){
        invincible = true;
    }
    if (window == 2){
        if (window_timer >= 8){
            if (special_pressed){
                window = 3;
                window_timer = 0;
                sound_play(sound_get("fspecial_swing"));
                clear_button_buffer(PC_SPECIAL_PRESSED);
            }
        }
        
        if (window_timer <= 8){
            vsp = -3;
        }
    }
    
    if (phone_cheats[cheat_fspecial_cancel] && window > 1) iasa_script();
}

if (!free || state == PS_WALL_JUMP){
        move_cooldown[AT_FSPECIAL] = 0;
    }

if (attack == AT_FSPECIAL_2){
    can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
    if (window == 1){
        invincible = true;
        invince_time = 10;
        set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 10 * (0.75 + (star_meter/4)));
        set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8 * (star_meter/2));
        set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .8 * (star_meter/2));
        set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 10 * (0.75 + (star_meter/4)));
        set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8 * (star_meter/2));
        set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .8 * (star_meter/2));
    }
    if (window == 3){
        if (window_timer <= 6){
            vsp = -6;
        }
    }
    if (window == 4){
        star_meter = 0;
    }
    if (window == 1 || window == 2){
        if (special_down){
            set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
            set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 280);
            set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 280);
            set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 12);
        }
        else {
            set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
            set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 50);
            set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 50);
            set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 4);
        }
    }
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
    if (window != 4){
        can_move = false;
    }
    if (window == 1){
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -2);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -76);
        set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 25);
        set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 45);
        
        set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, -8);
        set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -80);
        set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 40);
        set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 45);
        
        if (!free){
            invincible = true;
        }
    }
}

if (attack == AT_USPECIAL_2){
    can_fast_fall = false;
    if (window != 4){
        can_move = false
    }
    if (window == 1){
        invincible = true;
        invince_time = 6;
        set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -5 * (0.5 + (star_meter/2)));
    }
    if (window == 4){
        star_meter = 0;
    }
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
    if (window == 1){
        clear_button_buffer(PC_SPECIAL_PRESSED);
        reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
        if (phone_cheats[cheat_dspecial_actions] = 1){
            dodge_actions = true;
        }
        else {
            dodge_actions = false;
        }
        if (window_timer == 2){
            invincible = true;
            invince_time = 15;
        }
    }
    if (window == 2){
        if (place_meeting(x, y, asset_get("pHitBox"))){
            var hbox = place_meeting(x, y, asset_get("pHitBox"));
            if (hbox.player != player){
                dodge_actions = true;
                times_dodged++;
                if (times_dodged > 1 && already_dodged == false || times_dodged > 2 && already_dodged == false){
                    times_dodged--;
                }
                else{
                    already_dodged = false;
                    sound_play(sound_get("dodge_true"));
                }
            }
        }
            if (special_pressed && dodge_actions == true){
                set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
                window = 4;
                window_timer = 0;
                invincible = false;
                already_dodged = true;
            }
            if (down_down && special_pressed && dodge_actions == true){
                window = 1;
                window_timer = 0;
                clear_button_buffer(PC_SPECIAL_PRESSED);
                dodge_actions = false;
                already_dodged = true;
            }
    }
    if (window == 3){
        already_dodged = true;
    }
    if (window == 4 && has_hit == true){
        set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 8);
        window = 6;
        window_timer = 0;
    }
}

if (attack != AT_NSPECIAL || attack != AT_FSPECIAL || attack != AT_USPECIAL || attack != AT_DSPECIAL){
    if (star_meter >= 1 && has_hit == true){
        can_special = true;
    }
}

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL|| attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2){
    can_special = false;
}

if (attack == AT_TAUNT){
    if (window == 1){
        if (window_timer == 8 || window_timer == 16){
            sound_play(asset_get("sfx_swipe_weak1"));
        }
        if (window_timer == 24){
            sound_play(asset_get("sfx_swipe_weak2"));
        }
        if (window_timer == 32){
            sound_play(asset_get("sfx_swipe_medium1"));
        }
    }
}