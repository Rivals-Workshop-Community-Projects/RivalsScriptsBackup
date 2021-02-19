if (get_training_cpu_action() == CPU_FIGHT) {
    var target_dist_x = abs(ai_target.x - x);
    var target_dist_y = abs(ai_target.y - y);
    
    var ai_grab_prob = get_gameplay_time() % (11 - temp_level);
    
    //Smoked handler
    if (ready_to_attack && state_cat != SC_HITSTUN) {
        if (ai_target.smoked && ai_target.smoked_id == id) {
            if (ai_grab_prob == 0) {
                if (target_dist_x < 64) {
                    if (target_dist_y < 32)
                        set_attack(AT_NSPECIAL);
                    else if (target_dist_y < 64)
                        set_attack(AT_UAIR);
                    else if (target_dist_y < 128)
                        set_attack(AT_USPECIAL);
                }
                if (target_dist_x >= 64 && target_dist_x < 128) {
                    if (target_dist_y < 64)
                        set_attack(AT_FSPECIAL);
                }
            }
        }
    }
    
    if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
        //NSPECIAL handler
        if (attack == AT_NSPECIAL) {
            if (window > 4) {
                var ai_throw_prob = get_gameplay_time() % 6;
                if (ai_throw_prob < 3) {
                    special_pressed = true
                }
                else {
                    special_pressed = true
                    up_pressed = true;
                }
            }
        }
    }
}