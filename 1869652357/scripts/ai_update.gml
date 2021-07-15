//ai_update - called every frame for this character as a CPU

if (ai_recovering){
    if (move_cooldown[AT_USPECIAL] > 0){
        // use Fspecial when Uspecial is on cooldown
        if ((has_walljump || y < get_stage_data(SD_Y_POS) + 16) && y > get_stage_data(SD_Y_POS) - 32){
            up_down = false;
            special_pressed = true;
        }
    }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    /*if (attack == AT_USPECIAL){
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            if (!ai_recovering){
                if ((ai_target.x - x)*spr_dir > 250){
                    if (ai_target.y < y-64){
                        joy_pad_idle = true; // throw bamboo at natural arc
                    } else {
                        joy_pad_idle = false;
                        joy_dir = 90 - 90*spr_dir; // throw bamboo forward
                    }
                    special_down = true;
                } else if (ai_target.y < y-300){
                    joy_pad_idle = false;
                    joy_dir = 90 + 90*spr_dir; //throw bamboo upward
                    special_down = true;
                } else {
                    joy_pad_idle = false;
                    // aim in their general direction
                    joy_dir = point_direction(x,y,ai_target.x,ai_target.y);
                    // throw straight up if enemy is behind you
                    if (spr_dir == 1 && joy_dir > 80 && joy_dir < 280)
                        joy_dir = 180;
                    else if (spr_dir == -1 && (joy_dir < 100 || joy_dir > 260))
                        joy_dir = 0;
                    special_down = false;
                }
            } else { // ai_recovering is true
                special_down = true; //always throw full distance
            }
        }
    }*/
    
    /*if (attack == AT_DSPECIAL && window == 2){
        if ((ai_target.x - x)*spr_dir > 100){
            if (spr_dir == 1){
                right_down = true;
                left_down = false;
            } else {
                left_down = true;
                right_down = false;
            }
        } else if ((ai_target.x - x)*spr_dir > 40){
            left_down = false;
            right_down = false;
        } else {
            if (spr_dir == 1){
                right_down = false;
                left_down = true;
            } else {
                left_down = false;
                right_down = true;
            }
        }
    }*/
}
if attack == AT_FSPECIAL and has_hit and state == PS_ATTACK_AIR and window = 5{
    state = PS_DOUBLE_JUMP
}
if attack == AT_FSPECIAL and has_hit and state == PS_ATTACK_GROUND and window = 5{
     attack = AT_DTILT
}
if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR) and ai_target.y > y and window = 3{
    down_down = true
}
if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR) and ai_target.y < y and window = 3{
    up_down = true
}

if ((ai_target.x > x and spr_dir = -1)  or (ai_target.x < x and spr_dir = 1)) and window == 1 and window_timer == 0 {//(state != PS_WALK_TURN and state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)
    spr_dir = spr_dir*-1
}

if attack == AT_JAB and has_hit{
    if window == 3{
        attack_pressed = true
    }
    if window == 6{
        attack = AT_FTILT
    }
}
if attack == AT_FSTRONG and has_hit and window == 5{
    attack = AT_DSTRONG
}

if( get_player_damage( ai_target.player ) == 20 && state_cat != SC_HITSTUN && get_gameplay_time() > 120 && hitpause){
    taunt_pressed = true    
    }
if (get_training_cpu_action() == CPU_FIGHT){
    if can_attack == true and (ai_target.x - x < 32 and ai_target.x - x > -32) and attack != AT_NSPECIAL_2{
        can_jump = false
        attack_pressed = true
        if attack == AT_NSPECIAL_2{
            joy_pad_idle = true
            can_jump = false
        }
    }
}