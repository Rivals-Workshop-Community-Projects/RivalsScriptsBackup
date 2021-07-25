if (state == PS_CROUCH && down_down){
    if (state_timer > 20){
        sprite_index = sprite_get("crouch");
        image_index = 4;
    }
}

if (state == PS_PRATFALL){
    if (state_timer > 15){
        image_index = 3;
    }
}

if (state == PS_SPAWN) {
    if (introTimer < 10 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    if (introTimer == 0 && introTimer2 == 0) { 
    //put your intro sound here
    }
}