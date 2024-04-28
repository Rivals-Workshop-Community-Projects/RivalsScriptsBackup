if get_player_color(player) == 19 || get_player_name(player) == "TANIA"{
    sound_play(sound_get("UIP" + string(ui_parry + 1)), false, false, 1.75);
    ui_parry = (ui_parry + 1) % 8;
    parry_success = true;
}

if jestermode == true{
    sound_play(sound_get("JMMonkgrowl"));
    parry_success = true;
}