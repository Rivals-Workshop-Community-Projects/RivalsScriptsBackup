//got_hit - called when you're hit by a hitbox

//refresh uspecial
if (state_cat == SC_HITSTUN) move_cooldown[AT_USPECIAL] = 0;

if(state_cat == SC_HITSTUN){
if easter_egg_set = true {
    snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("hurt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("hurt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("hurt3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("hurt4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("hurt5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("hurt6"));
    }
}
}