sound_play(sound_get("sfx_death"));
sound_play(sound_get("scream"), false, noone, 1, voicepitch);

tauntGotSpeedBack = true;
taunt_dash_interrupt = false;
pretaunthsp = 0;
pretauntvsp = 0;

dash_timer = 0;
has_supertaunt = false;
combo = 0;
combo_timer = 0;