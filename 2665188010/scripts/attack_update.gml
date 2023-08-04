// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_JAB:
        move_cooldown[AT_JAB] = 30;
        if was_parried was_parried = false;
        if window == 1 && window_timer == 1 azelf_jab_parried = false;
        if window == 3 && window_timer >= 3 can_attack = true;
        break;
    case AT_FTILT:
    case AT_UTILT:
    case AT_DTILT:
        if azelf_jab_parried{
            was_parried = true;
            azelf_jab_parried = false;
        }
        break;
    case AT_DATTACK:
        if window == 1 && window_timer == 3     azelf_sound = sound_play(asset_get("sfx_swipe_weak1"),false,noone,0.9,0.95);
        if window == 1 && window_timer == 11    azelf_sound = sound_play(asset_get("sfx_ori_spirit_flame_2"),false,noone,0.8,1.4);
        break;
    case AT_DAIR:
        if window == 1 && window_timer == 3     azelf_sound = sound_play(asset_get("sfx_absa_whip2"),false,noone,0.75,1.1);
        break;
    case AT_NSPECIAL:
        if window == 1 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH){
            if azelf_futureready{
                with(obj_article1){
                    if player_id == other{
                        state = 3;
                        state_timer = 0;
                    }
                }
            }
        }
        if window == 4{
            can_move = false;
            can_fast_fall = false;
            hsp = lerp(hsp,0,0.25);
            vsp = lerp(vsp,0,0.25);
        }
        break;
    case AT_FSPECIAL:
        can_move = false;
        can_fast_fall = false;
        move_cooldown[AT_FSPECIAL] = 20;
        if window != 3{
            if vsp > 0 grav = 0.3;
            if vsp > 1 vsp = 1;
        }
        if window == 1 && window_timer == 13{
            azelf_psybeam_ready = false;
            if azelf_futureready{
                with(obj_article1){
                    if player_id == other{
                        with(other){
                            if abs(x - other.x) > 50{
                                if (spr_dir == 1 && other.x > x) || (spr_dir == -1 && other.x < x){
                                    azelf_psybeam_ready = true;
                                    azelf_sound = sound_play(sound_get("psybeam"));
                                }
                            }
                        }
                    }
                }
            }
        }
        if window == 2 azelf_sound = null;
        break;
    case AT_USPECIAL:
        if window > 2 can_wall_jump = true;
        off_edge = true;
        if hitpause && window != 7{
            window = 7;
            window_timer = 0;
        }
        if window == 4 || window == 5{
            hsp = 6*spr_dir;
            vsp = 15;
            if !free{
                window = 6;
                window_timer = 0;
                vsp = -5.5;
                hsp *= 0.5;
                destroy_hitboxes();
            }
        }
        if window == 7{
            if hitpause = false destroy_hitboxes();
            else old_vsp = -5;
        }
        break;
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
            if vsp > 0 grav = 0.5;
            if vsp > 2 vsp = 2;
        }
        break;
    case AT_DSPECIAL_2:
        if window == 2 && window_timer == 1{
            with obj_article1{
                if player_id == other{
                    state = 2;
                    state_timer = 0;
                    sound_play(sound_get("futuresight_2"))
                }
            }
        }
        if window == 2{
            if vsp > 0 grav = 0.5;
            if vsp > 2 vsp = 2;
        }
        break;
}