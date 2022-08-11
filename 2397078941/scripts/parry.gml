//parry.gml

sound_play(sound_get("shock1"));
shake_camera(5, 12)

if hit_player_obj == self  {
    set_state(PS_PRAT_FALL)
    state_timer = -99
}

