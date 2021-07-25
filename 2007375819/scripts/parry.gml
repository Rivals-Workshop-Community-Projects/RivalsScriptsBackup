//parry
randomFunny = random_func(0, 12, true);

if randomFunny > 3 {
sound_play(sound_get("dripgoku"));
} else {
sound_play(sound_get("blocked"));
}