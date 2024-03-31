switch (state){
    case PS_SPAWN:
        if (intro_timer < 23 && intro_timer >= 0) {
                sprite_index = sprite_get("intro");
                image_index = intro_timer;
                /*if(intro_timer < 8 && intro_timer + intro_speed > 8){
                    sound_play(sound_get("gasglass"));
                }
                else if(intro_timer < 14 && intro_timer + intro_speed > 14){
                    sound_play(asset_get("sfx_swipe_medium1"));
                }*/
                intro_timer += intro_speed;
            } 
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}