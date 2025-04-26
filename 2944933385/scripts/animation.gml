if (state == PS_ATTACK_AIR || PS_ATTACK_GROUND){
    if (attack == AT_UTILT && window >= 2){
        hud_offset = round(lerp(hud_offset, 80, 0.5));
    }
    if (attack == AT_USTRONG && window >= 3){
        hud_offset = round(lerp(hud_offset, 90, 0.5));
    }
    if (attack == AT_UAIR && window >= 2){
        hud_offset = round(lerp(hud_offset, 90, 0.5));
    }
}