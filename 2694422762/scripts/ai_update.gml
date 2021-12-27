if (get_training_cpu_action() == CPU_FIGHT) {
    if (state_cat != SC_HITSTUN && state_cat != SC_GROUND_COMMITTED && state_cat != SC_AIR_COMMITTED && !ai_recovering && ai_attack_timer % ai_attack_time == 0) {
        var blackjack_random = random_func(0, 100, true) < ease_linear(30, 70, temp_level- 1, 8);
        
        if (blackjack_meter >= blackjack_meter_max && blackjack_random) {
            if (instance_exists(ai_target) && ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && distance_to_point(ai_target.x, ai_target.y) > 160 && distance_to_point(ai_target.x, ai_target.y) > 320)
                set_attack(AT_DSPECIAL);
        }
        
        var fspecial_random = random_func(1, 100, true) < ease_linear(30, 70, temp_level- 1, 8);
        var ustrong_random = random_func(2, 100, true) < ease_linear(30, 70, temp_level- 1, 8);
        var dstrong_random = random_func(3, 100, true) < ease_linear(30, 70, temp_level- 1, 8);
        
        if (instance_exists(lucy_card_id)) {
            if (distance_to_point(lucy_card_id.x, lucy_card_id.y) < 128 && point_distance(ai_target.x, ai_target.y, lucy_card_id.x, lucy_card_id.y) < 128) {
                if (fspecial_random && abs(ai_target.x  - x) > 128) set_attack(AT_NSPECIAL);
                if (ustrong_random && !free && y < ai_target.y - 128) set_attack(AT_USTRONG);
                if (dstrong_random && !free) set_attack(AT_DSTRONG);
                    
            }
        }
        
        if (attack == AT_FSPECIAL|| attack == AT_FSPECIAL_AIR) {
            if (state_timer == 1) {
                fspecial_random = random_func(4, 100, true) < ease_linear(30, 70, temp_level- 1, 8);
                ai_lucy_fspecial = fspecial_random && sign(get_stage_data(SD_X_POS) - x) == spr_dir;
            }
            
            if (ai_lucy_fspecial) special_down = true;
        }
        else {
            ai_lucy_fspecial = false
        }
        
        if (attack == AT_JAB) {
            attack_pressed = window == 3 || window == 6;
        }
    }
}

if (ai_recovering) {
    if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
        if (y < get_stage_data(SD_Y_POS) - 128)
            set_attack(AT_FSPECIAL)
    }
    if (attack == AT_FSPECIAL_AIR) {
        special_down = true;
    }
}