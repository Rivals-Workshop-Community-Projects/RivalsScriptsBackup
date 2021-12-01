//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL){
    if window == 2 && window_timer == 1 {
        var bomb = instance_create(x + (32*spr_dir), y -32, "obj_article2");
        bomb.hsp = 3*spr_dir
        bomb.vsp = -2
        //print("aaah")
    }
}


if (attack == AT_USPECIAL){
    can_move = false
    hud_offset = 18
    if (window == 1 && window_timer == 1){
         times_through = 0;
    }
    if (window == 2) && !hitpause{
        can_wall_jump = true
        if left_down{
            hsp = -4
            vsp = -2
            if spr_angle < 30{
            spr_angle += 1
            }
        } else if right_down {
            hsp = 4
            vsp = -2
            if spr_angle > -30 {
            spr_angle -= 1
            }
        } else if joy_pad_idle || up_down{
            hsp = 0
            vsp = -3
            if spr_angle > 0 {
                spr_angle--
            } else if spr_angle < 0{
                spr_angle++
            }
        }
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 2) && special_down{
                times_through++;
                window_timer = 0;
            }
        }
    }
    if window == 3 {
        spr_angle = 0
    }
}

// if (attack == AT_DSPECIAL){
//     if (window == 2 && !was_parried){
//         can_jump = true;
//     }
//     can_fast_fall = false;
//     can_move = false
// }

if attack == AT_JAB{
    if window == 3 && window_timer = 3 && attack_down {
        if has_hit{
            window = 4
            window_timer = 0
        } else {
            attack_end()
            window = 1
            window_timer = 0
        }
    }
}

if attack == AT_DATTACK{
    if window == 1 && window_timer == 1 {
        sound_play(sound_get("pchsound_#309"))
    }
}

if attack == AT_UTILT{
    hud_offset = 48
    // if window == 1 && window_timer == 1 {
    //     sound_play(sound_get("pchsound_#312"))
    // }
}

if (attack == AT_DAIR){
    can_fast_fall = false
    if (window == 1 && window_timer == 1){
         times_through = 0;
    }
    
    if window == 2{
        if attack_down && has_hit{
            vsp = -0.5
        }
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 2){
                times_through++;
                window_timer = 0;
            }
        }
    }
}