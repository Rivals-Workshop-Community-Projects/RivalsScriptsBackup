// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_JAB:
        if was_parried was_parried = false;
        break;
    // case AT_USTRONG:
    //     if window > 2 char_height = azelf_char_height + 80
    //     break;
    case AT_DSPECIAL:
        can_move = false;
        can_fast_fall = false;
        if window == 2{
            if window_timer == 1{
                if !azelf_futureplaced{
                    instance_create(x+(25*spr_dir),y-40,"obj_article1")
                    sound_play(sound_get("futuresight_1"))
                }
            }
            // else if window_timer == 5{
            //     sound_play(sound_get("futuresight_1"))
            // }
        }
        break;
    case AT_DSPECIAL_2:
        if window == 2 && window_timer == 1{
            // if !azelf_futureplaced instance_create(x,y-40,"obj_article1")
            // else{
                with obj_article1{
                    if player_id == other{
                        state = 2;
                        state_timer = 0;
                    }
                }
            // }
        }
        break;
    case AT_FSPECIAL:
        can_move = false;
        can_fast_fall = false;
        if window == 1 && window_timer == 1{
            azelf_psybeam_ready = false;
            if azelf_futureready{
                with(obj_article1){
                    if player_id == other{
                        if abs(other.x - x) > 20{
                            if (other.spr_dir == 1 && x > other.x) || (other.spr_dir == -1 && x < other.x){
                                other.azelf_psybeam_ready = true;
                            }
                        }
                    }
                }
            }
            // else sound_play(asset_get("sfx_clairen_swing_weak"));
        }
        if window == 1 && window_timer == 13 && azelf_psybeam_ready sound_play(sound_get("psybeam"));
        // if window == 2 && window_timer == 1 move_cooldown[AT_FSPECIAL] = 60
        break;
    case AT_USPECIAL:
        if window > 2 can_wall_jump = true;
        off_edge = true;
        switch (window){
            // case 3:
            //     if window_timer == 1 spr_dir *= -1
            //     break;
            // case 5:
            //     if window_timer == 1 spr_dir *= -1
            //     break;
            case 4:
                hsp = 6*spr_dir;
                vsp = 15;
                break;
            case 5:
                hsp = 6*spr_dir;
                vsp = 15;
                if !free{
                    window = 6;
                    window_timer = 0;
                    vsp = -5.5;
                    destroy_hitboxes();
                }
                break;
        }
        break;
    case AT_NSPECIAL:
        if window == 1{
            if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH){
                if azelf_futureplaced{
                    with obj_article1{
                        if player_id == other{
                            state = 3;
                            state_timer = 0;
                        }
                    }
                }
            }
        }
        if window > 3{
            can_move = false;
            can_fast_fall = false;
        }
        // print(string(window))
        // if window == 1{
        //     if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH){
        //         if azelf_futureplaced{
        //             window = 3;
        //             window_timer = 1;
        //         }
        //     }
        // }
        // else if window = 3{
        //     if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH){
        //         with obj_article1{
        //             if player_id == other{
        //                 other.x = x;
        //                 other.y = y;
        //                 other.vsp = -4;
        //                 other.window = 4;
        //                 other.window_timer = 1;
        //                 state = 1;
        //                 state_timer = 0;
        //             }
        //         }
        //     }
        // }
        // break;
}