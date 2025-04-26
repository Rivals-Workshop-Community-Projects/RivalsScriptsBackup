//death.gml
uspecial_charge = 0;
uspecial_length = 20;
reset_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
reset_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED);
reset_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME);
reset_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME);
reset_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME);
reset_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME);

// Death Scream
if (synced_vars[0]){
    var random_voice;
    random_voice = random_func( 1, 6, true);
    sound_play(voice_death[random_voice+1]);
}

sound_stop(sound_get("fspecial_loop"));
