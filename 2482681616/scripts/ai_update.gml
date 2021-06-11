if (ai_recovering) {
    if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
        if (attack == AT_USPECIAL) {
            if (window == 5 || window == 6) {
                window = 7;
                window_timer = 0;
            }
        }
    }   
}