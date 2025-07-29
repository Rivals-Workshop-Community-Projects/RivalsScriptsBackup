//a


if (get_match_setting(SET_PRACTICE) && get_training_cpu_action() != CPU_FIGHT) exit;

if (state_cat == SC_GROUND_NEUTRAL && dspec_cooldown_hits == 0 && chest_obj == noone) {
    if (temp_level > 5) {
        if (distance_to_point(ai_target.x, ai_target.y) > 120) do_dspecial();
    }
    else if (temp_level > 2) do_dspecial();
}

else if (chest_obj != noone && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL)) {
    if (chest_obj.ai_state == 0) {
        if (1-chest_obj.ai_should_call_small < chest_obj.state) {
            if (temp_level > 5) {
                if (distance_to_point(ai_target.x, ai_target.y) > 120) do_dspecial();
            }
            else if (temp_level > 1) do_dspecial();
        }
    }
    else if (chest_obj.ai_state == 1 && !ai_recovering) {
        if (temp_level > 5) {
            if (distance_to_point(ai_target.x, ai_target.y) > 140) seek_chest();
        }
        else seek_chest();
    }
    else if (chest_obj.ai_state == 2) {
        if (temp_level > 5) {
            if (distance_to_point(ai_target.x, ai_target.y) > 90) do_dspecial();
        }
        else do_dspecial();
    }
}

else if (attack == AT_DSPECIAL_2 && state == clamp(state, PS_ATTACK_AIR, PS_ATTACK_GROUND)) {
    up_down = get_gameplay_time() % 2;
    joy_pad_idle = !up_down;
    joy_dir = 90;
}

#define do_dspecial
    down_pressed = true;
    down_down = true;
    special_pressed = true;
    
#define seek_chest
    // Stop attacking
    ai_attack_timer = 0;
    ready_to_attack = false;
    ai_going_into_attack = false;
    
    // Seek chest
    ai_going_left = (chest_obj.x < x);
    ai_going_right = !ai_going_left;
    left_hard_pressed = ai_going_left;
    right_hard_pressed = ai_going_right;
    if (!free && chest_obj.y+6 < y && abs(x - chest_obj.x) < 80) jump_pressed = true;
    if (!free && freemd && chest_obj.y > y) down_hard_pressed = true;