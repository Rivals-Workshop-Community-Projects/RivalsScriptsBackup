
sound_stop(sfx_hold)
tongue_charge = 0;
fspecial_type = 0;


if sb_voiced == true && get_player_stocks(player) > 1{
    if death_voice = 0{sound_play(sound_get("vfx_sb_death1"));}
    if death_voice = 1{sound_play(sound_get("vfx_sb_death2"));}
}