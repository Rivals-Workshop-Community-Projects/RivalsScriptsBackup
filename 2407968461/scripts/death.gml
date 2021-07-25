//sound_play(sound_get("crit"));

emotion = 0;
stats_changed = false;

happy_cooldown = 0;
sad_cooldown = 0;
angry_cooldown = 0;

if (has_rune("O")){
    cannot_succumb = true;
}