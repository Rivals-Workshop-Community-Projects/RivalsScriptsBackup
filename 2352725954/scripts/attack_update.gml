//B - Reversals
if (attack == AT_USPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

switch (attack)
{
    case AT_JAB:
        if(window == 4 && window_timer == 1){
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
        break;

    case AT_UAIR:
        switch(window){
            case 1:
                char_height += 4;
                break;
            case 4:
                if(char_height > 62){
                    char_height -= 4;
                }
        }
        break;

    case AT_DAIR:
        if(window == 1 && window_timer == 1){
            reset_attack_value(AT_DAIR, AG_NUM_WINDOWS);
        }
        if(window <= 3 && !free){
            if(window == 2 || (window == 3 && window_timer <= 8)){
                destroy_hitboxes();
                set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
                window = 4;
                window_timer = 0;
                sound_play(asset_get("sfx_blow_heavy2"));
            }else{
                destroy_hitboxes();
                window = 6;
                window_timer = 0;
            }
        }
        //Ledge cancel
        if(window >= 4 && free){
            window = 10;
        }
        break;

    //Gale Strike (Tornado)
    case AT_NSPECIAL:
        can_fast_fall = false;
        if(window == 1){
            if(window_timer == 1){
                can_b_reverse = true;
            }
            if(window_timer <= 5 && can_b_reverse){
                if(dir_held == (spr_dir * -1)){
                    can_b_reverse = false;
                    spr_dir *= -1;
                    hsp *= -1;
                }
            }
        }
        break;
    
    //Chakram
    case AT_FSPECIAL:
        can_move = false;
        can_fast_fall = false;
        if(window == 1){
            if(window_timer == 1){
                can_b_reverse = true;
                if(dir_counter[0] > 0 || dir_counter[1] > 0){
                    chak_speed = 1;
                }else{
                    chak_speed = 0;
                }
                reset_attack_value(AT_FSPECIAL_3, AG_NUM_WINDOWS);
                reset_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_GOTO);
                reset_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW);
                reset_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_HSPEED);
                reset_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_VSPEED);
                reset_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW);
                reset_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_HSPEED);
                reset_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_VSPEED);
            }
            if(window_timer <= 5 && can_b_reverse){
                if(dir_held == (spr_dir * -1)){
                    can_b_reverse = false;
                    spr_dir *= -1;
                    hsp *= -1;
                }
            }
            if(window_timer == 16){
                //Yes I did in fact pull out my notebook and do some quick trig calculations
                //for these numbers so it'll be almost exactly 20 degrees
                if(up_down){
                    set_attack_value(AT_FSPECIAL_3, AG_NUM_WINDOWS, 3);
                    set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_GOTO, 3);
                    if(chak_speed == 0){
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 0);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 3);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_VSPEED, -1.48);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_HSPEED, 4);
                    }else{
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 0);
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 3);
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_VSPEED, -4.45);
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_HSPEED, 12.22);
                    }
                }else if(down_down){
                    set_attack_value(AT_FSPECIAL_3, AG_NUM_WINDOWS, 4);
                    set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_GOTO, 4);
                    if(chak_speed == 0){
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 0);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 4);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_VSPEED, 1.48);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_HSPEED, 4);
                    }else{
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 4);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 0);
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_VSPEED, 4.45);
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_HSPEED, 12.22);
                    }
                }else{
                    if(chak_speed == 0){
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 0);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 2);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_HSPEED, 4.33);
                    }else{
                        set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 2);
                        set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 0);
                    }
                }
            }
        }
        break;

    //Hero's Spin
    case AT_USPECIAL:
        if(window == 1){
            if(window_timer == 1){
                spin_charge = 0;
                reset_hitbox_value(AT_USPECIAL_3, 1, HG_DAMAGE);
                reset_hitbox_value(AT_USPECIAL_3, 1, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_USPECIAL_3, 1, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_USPECIAL_3, 2, HG_DAMAGE);
                reset_hitbox_value(AT_USPECIAL_3, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_USPECIAL_3, 2, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_USPECIAL_3, 3, HG_DAMAGE);
                reset_hitbox_value(AT_USPECIAL_3, 3, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_USPECIAL_3, 3, HG_KNOCKBACK_SCALING);
                reset_attack_value(AT_USPECIAL_3, AG_NUM_WINDOWS);
                if(free){
                    set_attack_value(AT_USPECIAL_3, AG_NUM_WINDOWS, 12);
                    window = 7;
                    window_timer = 0;
                    spincount = 0;
                }
            }
            if(window_timer == 6 && special_down){
                window = 2;
                window_timer = 0;
                sound_play(sound_get("sfx_uspec3charge"))
            }else if(window_timer == 6 && !special_down){
                window = 3;
                window_timer = 0;
            }
        }else if(window == 2){
            if(!special_down || spin_charge >= 50){
                //Charged
                window++;
                window_timer = 0;
                sound_stop(sound_get("sfx_uspec3charge"))
                set_hitbox_value(AT_USPECIAL_3, 1, HG_DAMAGE, 9 + (4 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 1, HG_BASE_KNOCKBACK, 8 + (1 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 1, HG_KNOCKBACK_SCALING, .75 + (0.20 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 2, HG_DAMAGE, 6 + (2 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 2, HG_BASE_KNOCKBACK, 5 + (1.5 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 2, HG_KNOCKBACK_SCALING, .6 + (0.15 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 3, HG_DAMAGE, 6 + (2 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 3, HG_BASE_KNOCKBACK, 5 + (1.5 * (0.02 * spin_charge)));
                set_hitbox_value(AT_USPECIAL_3, 3, HG_KNOCKBACK_SCALING, .6 + (0.15 * (0.02 * spin_charge)));
            }
            spin_charge++;
        }else if(window >= 7){
            can_fast_fall = false;
            can_wall_jump = true;
            if(window == 9 && window_timer == 2){
                if(spincount == 2){
                    window = 10;
                    window_timer = 0;
                }else{
                    spincount++;
                }
            }
        }
        break;
    
    //Power Thrust
    case AT_DSPECIAL:
        can_move = false;
        can_fast_fall = false;
        can_wall_jump = true;
        if(window == 1 && window_timer == 1){
            reset_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS);
            if(free){
                set_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS, 6);
                window = 4;
                window_timer = 0;
            }
        }else if(window >= 4 && window <= 6 && !free){
            if(window == 5){
                destroy_hitboxes();
                set_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS, 8);
                window = 7;
                window_timer = 0;
                sound_play(asset_get("sfx_blow_heavy2"));
            }else{
                set_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS, 9);
                destroy_hitboxes();
                window = 9;
                window_timer = 0;
                sound_play(asset_get("sfx_med2"));
            }
        }
        break;
}