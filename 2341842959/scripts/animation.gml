if (state == PS_SPAWN) {
    if (introTimer < 8 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    
    if (introTimer == 3 && introTimer2 == 0){
    	sound_play( sound_get("teleport"));
    }
    
}