//article2_hit

if (!enemy_hitboxID.enemies) {
    enemy_hitboxID.destroyed = true;
}

if (enemy_hitboxID.kb_value > 0) {
    player_id.move_cooldown[AT_NSPECIAL] = 240;
    spawn_hit_fx(x, y, 304);
    sound_play(sound_get("sfx_soul_break"));
    instance_destroy();
}


/*
if state < 2 && get_player_team(get_instance_player(hit_player_obj)) != get_player_team(get_instance_player(self)) {
    spawn_hit_fx(x, y, 304);
    sound_play(sound_get("sfx_soul_break"));
    instance_destroy();
    exit;
}