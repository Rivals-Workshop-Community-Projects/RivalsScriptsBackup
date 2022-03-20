
if (floating && state != PS_ATTACK_AIR){
    
    
    if (floor(floatAnimTimer/10) > 11 ) {
        floatAnimTimer = 0;
    }
    sprite_index = sprite_get("float");
    image_index = floor(floatAnimTimer/10);
    floatAnimTimer++

}

if (state == PS_SPAWN) {
    if (introTimer < 16 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    if (introTimer == 0 && introTimer2 == 0) { 
    sound_play(sound_get("teleport"));
    }
}