//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL_AIR){
    if (window == 2 && window_timer == 1){
        vsp = -5;
        hsp /= 2;
    }
}


if (attack == AT_FSPECIAL){
can_move = false;
can_fast_fall = false;
fspec_used = true;

    vsp = 0;

    if (window == 1){ 
        hsp = 5 * spr_dir;
    }

    if (window == 2){
        hsp = 5 * spr_dir;
        invincible = true;
        invince_time = 1;
    }

    if (window > 3 && free){
        hsp = 1 * spr_dir;
    }

    if (window > 3){
        can_wall_jump = true;
    }

}

if (attack == AT_USPECIAL){

if (window < 3){
can_move = false;
can_fast_fall = false;
}

can_wall_jump = true;
uspec_used = true;

// print_debug("window:" + string(window) + " window_timer:" + string(window_timer));

    if (window == 1 && free)
    {
        vsp = 1;
        hsp = -1 * spr_dir;

        if (special_pressed && window_timer > 5)
            uspec_dir = true;

        if (left_down && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
            spr_dir = -1;
        if (right_down && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
            spr_dir = 1;
    }

    if (window == 2){

        if (special_pressed){
            uspec_dir = true;
            if (window_timer == 1){
            vsp = -7.5;
            }
        }
        else{
            if (window_timer == 1){
            vsp = -12;
            uspec_dir = false;
            }
        }
    }

    if ((window == 2 || window == 3) && !hitpause){

        if (uspec_dir)
        hsp = 8 * spr_dir;
        else
        hsp = 6 * spr_dir;

    }


    if (window == 5 && !free){
        window_timer = get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
    }

    if (has_hit_player){

        if (hitpause)
        can_jump = true;

        uspec_used = false;
        if (window == 5 && window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH))
            set_state(PS_IDLE_AIR);
    }



}

if (attack == AT_DSPECIAL){
    
    if (!rewind_cancel)
        move_cooldown[attack] = 6*60;
    else
        move_cooldown[attack] = 10*60;
   
    
    if (window == 1 && window_timer == 1){
        if (!rewind_clone.primed){
            rewind_clone.primed = true;

            if (!rewind_cancel){
            rewind_delay = rewind_delay_def;
            rewind_travel_max = rewind_travel_default;
            }
            else{
            rc_draw = true;
            rewind_delay = 0;
            rewind_travel_max = rewind_travel_rc;
            }

        }
    }
    
    can_move = false;
    can_fast_fall = false;

    if (free){
        vsp /= 2;
        hsp /= 2; 
    }
}


if (has_hit_player){


    if (down_down && special_down && hitpause && move_cooldown[AT_DSPECIAL] == 0){
    can_special = true;
    rewind_cancel = true;

        if (!ball_check){
            if (!hit_player_obj.time_slowed){
            hit_player_obj.time_draw_timer = 0;

            hit_player_obj.slow_timer = rc_length;
            hit_player_obj.slow_timer_full = rc_length;
            hit_player_obj.time_slowed = true;
            hit_player_obj.slow_owner = player;
            }
        }
    }

}


if (attack == AT_FSTRONG){
if window == 3 && window_timer == 1 && !has_hit_player
sound_play(sound_get("bat_hit1"));

}









