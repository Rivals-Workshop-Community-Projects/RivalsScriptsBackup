//
if(avocado){
    snd_rng = random_func(0, 3, true);
    if(snd_rng = 0){
        sound_play(sound_get("sfx_death1"));
    }if(snd_rng = 1){
        sound_play(sound_get("sfx_death2"));
    }if(snd_rng = 2){
        sound_play(sound_get("sfx_death3"));
    }
}

