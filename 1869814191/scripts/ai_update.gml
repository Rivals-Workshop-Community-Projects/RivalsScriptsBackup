//ai_update - called every frame for this character as a CPU

if (state == PS_ATTACK_GROUND) {
    if (attack == AT_FSPECIAL) {
        if (spr_dir) {
            left_down = true;
        }
        if (!spr_dir) {
            right_down = true;
        }
    }
}  

if (state == PS_ATTACK_AIR){
    if (attack == AT_FSPECIAL_AIR) {
        down_down = true;
    }
}