if (state == PS_DASH_START) {
    if (state_timer == 1) {
        sound_play(sound_get("dashstart"));
    }
}

if (state == PS_DASH_TURN) {
    if (state_timer == 1) {
        sound_play(sound_get("dashturn"));
    }
}

//intro anim
if (state == PS_SPAWN) {
    if (introTimer < 22 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}