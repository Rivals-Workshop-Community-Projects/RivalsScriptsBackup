// death
if easter_egg_set = true {
 if !(oPlayer.url == 2407716024 || (get_char_info(player,INFO_STR_NAME == "Big Band"))){
    
    snd_rng = random_func(0, 5, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_death1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_death2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_death3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_death4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_death5"));
    }
}
if (oPlayer.url == 2407716024){
        snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_death1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_death2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_death3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_death4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_death5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("voice_death_peacock"));
}
}
if ((get_char_info(player,INFO_STR_NAME == "Big Band"))){
        snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_death1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_death2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_death3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_death4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_death5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("voice_death_bb"));
}  
}
}

taunted = false;









      