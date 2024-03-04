// called when the character gets KO'd

if (get_player_color( player ) == 9) {
    sound_play(sound_get("cry_sheep"));
}
    else{
    sound_play(sound_get("charselect"));
}

stealth_rock = 0;
punch_charge = 0;