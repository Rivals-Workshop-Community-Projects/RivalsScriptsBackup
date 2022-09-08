//article2_hit


if state < 2 && get_player_team(get_instance_player(hit_player_obj)) != get_player_team(get_instance_player(self)) {
    spawn_hit_fx(x, y, 304);
    sound_play(sound_get("sfx_soul_break"));
    instance_destroy();
    exit;
}