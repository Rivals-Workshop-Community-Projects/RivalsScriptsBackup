//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_UTILT){
    if window == 1{
        if uptilt_buffed{
            set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 10);
            set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 11);
            set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
            set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
            set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5);
            set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
            set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 12);
            set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .6);
            set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("HitHard"));
        }
        else{
            set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
            set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 0);
            set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
            set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .6);
            set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
            set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 0);
            set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
            set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("HitMed"));
        }
        attack_end();
    }
}

if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    if (window == 1){
        if (window_timer == 1){
            if (!free) was_grounded = true;
            else was_grounded = false;
        }
        if (window_timer == 14){
            y -= 1;
        }
        if (up_down && !right_down && !left_down && !down_down){
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
            nspecial_direction = 1;
        }
        if (up_down && (right_down || left_down) && !down_down){
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 3);
            if (right_down){
                spr_dir = 1;
                nspecial_direction = 2;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction = 3;
            }
        }
        if ((!up_down && (right_down || left_down) && !down_down) || joy_pad_idle){
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 4);
            if (right_down){
                spr_dir = 1;
                nspecial_direction = 4;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction = 5;
            }
            if (spr_dir == 1) nspecial_direction = 4;
            if (spr_dir == -1) nspecial_direction = 5;
        }
        if (!up_down && (right_down || left_down) && down_down){
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 5);
            if (right_down){
                spr_dir = 1;
                nspecial_direction = 6;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction = 7;
            }
        }
        if (!up_down && !right_down && !left_down && down_down){
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 6);
            nspecial_direction = 8;
        }
    }

    if (window == 8 && has_hit){
        if (up_down && !right_down && !left_down && !down_down){
            set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 9);
            nspecial_direction2 = 1;
        }
        if (up_down && (right_down || left_down) && !down_down){
            set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 10);
            if (right_down){
                spr_dir = 1;
                nspecial_direction2 = 2;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction2 = 3;
            }
        }
        if (!up_down && (right_down || left_down) && !down_down){
            set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 11);
            if (right_down){
                spr_dir = 1;
                nspecial_direction2 = 4;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction2 = 5;
            }
        }
        if (!up_down && (right_down || left_down) && down_down){
            set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 12);
            if (right_down){
                spr_dir = 1;
                nspecial_direction2 = 6;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction2 = 7;
            }
        }
        if (!up_down && !right_down && !left_down && down_down){
            set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 13);
            nspecial_direction2 = 8;
        }
        set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
    }
    else if window == 8 && !has_hit{
        set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 0);
        set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 0);
        hsp *= 0.75;
        vsp *= 0.75;
    }
    
    if (has_hit){
        can_jump = true;
        can_shield = true;
    }
    
    if (window == 8 && window_timer = 5 && !has_hit && !was_grounded){
        state = PS_PRATFALL;
        hurtboxID.sprite_index = sprite_get("idle_hurtbox");
    }
    
    if (window == 8 && window_timer = 5 && was_grounded && !has_hit){
        window = 20;
    }
    
    if (window == 8 && window_timer = 5 && has_hit &&
    (joy_pad_idle || nspecial_direction == nspecial_direction2)){
        window = 20;
    }
    
    if (window == 14){
        if (has_hit){
            set_window_value(AT_FSPECIAL, 14, AG_WINDOW_TYPE, 1);
        }
        else {
            set_window_value(AT_FSPECIAL, 14, AG_WINDOW_TYPE, 7);
        }
        hsp *= 0.75;
        vsp *= 0.75;
    }

    
    if (window > 1 && !free){
        window = 20;
        //hsp /= 2;
    }
}

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 30;
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    if (window == 1){
        set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 5);
    }
    if (window == 4 && free){
        set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 7);
    }
}

if (attack == AT_DSPECIAL_AIR){
    can_fast_fall = false;
    if (!free && window != 5){
        window = 5;
        window_timer = 0;
    }
}

if (attack == AT_TAUNT){
    if (window == 2 && state_timer > 42 && !taunt_down){
        window = 3;
        window_timer = 1;
    }
    if (window == 2 && state_timer%10 == 0){
        sound_play(asset_get("sfx_birdflap"));
    }
}
else {
    i_died = false;
}