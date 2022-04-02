flutterjump = 0;
fspecial_charge = 0;
fspecial_stored = false;
fspecial_has_restored_djump = false;
flutterjump_time = 100;
if (-1 < hatdeathdrawvsp){
    hatdeathdrawvsp = -1;
}
if (hatdeathdrawheight > 0){
    hatdeathdrawheight = 0;
}
sound_play(sound_get("death_short"));
if (get_player_color(player) == alt_starwalker){
    sound_play(sound_get("starwalk"));
}