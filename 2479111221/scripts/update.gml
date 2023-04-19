// Seagulls
play_sound++;

if ambience_on < 0{
    ambience_on = 1;
}
if ambience_on > 1{
    ambience_on = 0;
}


if ambience_on > 0{
    if play_sound == 1{
        sound_play(sound_get("sfx_whitenoise"), true, 0, ambience_vol);
    }
    if play_sound >= 2{
        play_sound = 2;
    }
    if seagull_timer == 0{
        // play sound
        sound_play(sound_get("sfx_seagulls"), false, -1, ambience_vol);
        var rand_ambi = random_func(0, 3, true);
        switch(rand_ambi){
            case 0:
                seagull_timer = 840;
                break;
            case 1:
                seagull_timer = 900;
                break;
            case 2:
                seagull_timer = 1680;
                break;
            case 3:
                seagull_timer = 1840;
                break;
        }
    } else {
        seagull_timer--;
    }
} else {
    sound_stop(sound_get("sfx_whitenoise"));
    sound_stop(sound_get("sfx_seagulls"));
    play_sound = 0;
    seagull_timer = 0;
}

with(obj_stage_article){
   if num == 10{
       obj_stage_main.bud_train_plat_x = x;
       obj_stage_main.bud_train_plat_y = y;
   }
}