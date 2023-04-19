if(state == PS_SPAWN){
    sprite_index = sprite_get("intro");
    if(state_timer == 10){
        sound_play(sound_get("sfx_appear"));
    }
    if(state_timer < 10){
        image_index = 0;
    } else if(state_timer < 70){
        image_index = (state_timer - 10)/5;
    } else {
        sprite_index = sprite_get("idle");
        image_index = state_timer/(1/idle_anim_speed);
    }
}