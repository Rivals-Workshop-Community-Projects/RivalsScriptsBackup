if (state == PS_SPAWN) {
    
    if (introTimer < 12 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("airdodge");
        image_index = 2;
    } else {
        sprite_index = sprite_get("idle");
    }
    
}

//Slide animation
if (abs(hsp) > 1.5 && (state == PS_IDLE) || state == PS_DASH_STOP) && 
    (prev_state == PS_DASH || prev_state == PS_DASH_STOP || prev_state == PS_DASH_START)  {
    sprite_index = sprite_get("dashstop");
    if abs(hsp) > 6 image_index = 0;
    else image_index = 1;
    
}


//Post-hit/dj air idle
if (state == PS_IDLE_AIR && ((prev_state == PS_ATTACK_AIR && attack != AT_DAIR) || prev_state == PS_DOUBLE_JUMP)) {
    if image_index < 7 image_index = 7;
    //if attack == AT_DSPECIAL_AIR image_index = 8;
}

