//Make sure to charge fspecial
if (get_training_cpu_action() == CPU_FIGHT) {
    if (attack == AT_FSPECIAL) {
        var d = ai_target.y - y;
        
        if (d < 0) joy_dir = 90;
        if (d > 0) joy_dir = 270;
    }
    
    if (attack == AT_FAIR) {
        if (window == 6 && window_timer == 1) {
            can_jump = true;
            window = 7;
            window_timer = 0;
            djumps = 0;
            fair_wall_timer = 0;
        }
    }
    
    if (ai_target.x < x + 224 || ai_target.x > x - 224) {
        fs_ai_attempt_use = true;
    }
}

//Make sure to charge uspecial
if (ai_recovering) {
    if (attack == AT_USPECIAL && window == 1) {
        special_down = true
    }
}