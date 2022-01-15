snd_rng = random_func(0, 4, true);
suppress_stage_music();
if (snd_rng == 0) {
sound_play(sound_get("hot-milk"));
}if (snd_rng == 1) {
sound_play(sound_get("hot-milk2"));
}if (snd_rng == 2) {
sound_play(sound_get("hot-milk3"));
}if (snd_rng == 3) {
sound_play(sound_get("hot-milk4"));
}