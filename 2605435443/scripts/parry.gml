//parry - called when you parry any hitbox

if easter_egg_set = true {
    snd_rng = random_func(0, 2, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_parry1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_parry2"));
    }
}