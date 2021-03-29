//anim26
if(xOff < -1380){
    xOff = 0;
}

if(activate){
    set_bg_data(1, BG_LAYER_AUTOSCROLL_X, -2.2);
    xOff -= 2.2;
    if(timer <= 0){
        image_alpha = 1;
        strike = random_func(0, 3, true)
        switch(strike){
            case 0:
                sprite_index = sprite_get("forked_lightning1");
            break;
            
            case 1:
                sprite_index = sprite_get("forked_lightning2");
            break;
            
            default:
                sprite_index = sprite_get("forked_lightning3");
            break;
        }
        timer = min_interval + random_func(1, 10, true);
        if(first_strike){
            strike_pos = 60;
            first_strike = false;
            sound_play(sound_get("lightning2"), false, 0, 2);
        }
        else{
            strike_pos = random_func(2, 200, true);
        }
        sprite_change_offset("forked_lightning1", -100 - strike_pos, -120);
        sprite_change_offset("forked_lightning2", -35 - strike_pos, -120);
        sprite_change_offset("forked_lightning3", -70 - strike_pos, -120);
        sprite_change_offset("lightning_mask", 200 - strike_pos, -30);

    }
    else{
        --timer;
        image_alpha -= 0.08;
    }
}
else{
    xOff -= 0.75;
}