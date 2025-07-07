yoshi_voice_rando = random_func(0, 3, true);

if yoshi_voice_rando == 0{
    sound_play(sound_get("VFX_Death"));
}
if yoshi_voice_rando == 1{
    sound_play(sound_get("VFX_Death_1"));
}
if yoshi_voice_rando == 2{
    sound_play(sound_get("VFX_Death_2"));
}