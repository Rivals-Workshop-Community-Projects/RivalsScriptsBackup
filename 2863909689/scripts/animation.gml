if (state == PS_ATTACK_AIR){
    if (attack == AT_FSPECIAL){
        if (window == 5 || window == 6 || window == 7 || window == 8){
            grabbed.x = lerp(grabbed.x + 2*spr_dir, x, .7);
            grabbed.y = lerp(grabbed.y - 40, y, .7);
        }
    }
}