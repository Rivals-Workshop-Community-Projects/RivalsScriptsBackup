if get_player_stocks(player) == 1{
    sound_stop(music);
    sound_stop(active_loop);
    if alt_cur != 4 && play_medley sound_play(sound_get((alt_cur == 1? "tested": "guardian") + "_medley_outro"));
}

if alt_cur != 4 sound_play(sound_get("death"));