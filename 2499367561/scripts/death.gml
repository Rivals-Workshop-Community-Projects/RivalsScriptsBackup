    sound_stop( asset_get("sfx_ell_missile_loop"));
    sound_stop( asset_get("sfx_ell_hover"));

    arcadeswitch++;

if (get_player_color(player) == 21) {
        sound_play( sound_get("YODADEATH"));
}