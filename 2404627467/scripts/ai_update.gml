//Make sure to charge fspecial
if (get_training_cpu_action() == CPU_FIGHT) {
    if (attack == AT_FSPECIAL) {
        var d = ai_target.y - y;
        
        if (d < 0) joy_dir = 90;
        if (d > 0) joy_dir = 270;
    }
}

//Make sure to charge uspecial
if (ai_recovering) {
    if (attack == AT_USPECIAL && window == 1) {
        special_down = true
    }
}