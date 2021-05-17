//death.gml

//clone_died = true;
//clone_alive = false;
clone_was = false;

if (get_player_stocks(player) == 1) {
    sound_play(sound_get("death"));
}

strong_max = false;
i_died = true;
move_cooldown[AT_NSPECIAL] = 0;
hit_player_obj.hitstop = 0;