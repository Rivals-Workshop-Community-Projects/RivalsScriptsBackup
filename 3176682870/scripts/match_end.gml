//Prevents a bug that keeps playing music after the "GAME" text is called.
music_stop()
sound_stop(sound_get("green_path_atmos_loop"));
sound_stop(sound_get("cave_noises"));
sound_stop(sound_get("acid_ambient_loop"));
sound_stop(sound_get("waterfall_loop"));