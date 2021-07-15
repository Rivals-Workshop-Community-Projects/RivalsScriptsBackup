if ((ai_target.x > x and spr_dir = -1)  or (ai_target.x < x and spr_dir = 1)) and window == 1 and window_timer == 0 {//(state != PS_WALK_TURN and state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)
    spr_dir = spr_dir*-1
}

if( get_player_damage( ai_target.player ) == 20 && state_cat != SC_HITSTUN && get_gameplay_time() > 120 && hitpause){
    taunt_pressed = true    
}

if (get_training_cpu_action() == CPU_FIGHT){
    if can_attack == true and (ai_target.x - x < 32 and ai_target.x - x > -32) and attack != AT_NSPECIAL_2{
        attack_pressed = true
        if attack == AT_NSPECIAL_2{
            joy_pad_idle = true
            can_jump = false
        }
    }
}