if (state == PS_CROUCH){
    if (down_down && state_timer > 15){
        image_index = 4;
    }
}

if (sprite_index == (sprite_get("shocked")) && state_cat == PS_HITSTUN){
    image_index += 0.3;
}

if (state == PS_HITSTUN && orbd || state == PS_HITSTUN && plasma_pause){
    sprite_index = sprite_get("shocked");
}
if (state == PS_ATTACK_AIR || PS_ATTACK_GROUND){
    if (attack == AT_UTILT && window >= 3){
        hud_offset = lerp(hud_offset, 80, 0.5);
    }
    if (attack == AT_USTRONG && window >= 3){
        hud_offset = lerp(hud_offset, 140, 0.5);
    }
    if (attack == AT_TAUNT && window >= 2){
        hud_offset = lerp(hud_offset, 120, 0.5);
    }
}