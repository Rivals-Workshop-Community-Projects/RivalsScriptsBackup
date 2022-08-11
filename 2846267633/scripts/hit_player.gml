if (attack == AT_FSPECIAL && window == 2 && my_hitboxID.attack == AT_FSPECIAL) {
    window = 4;
    window_timer = get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH) *
    (1 - window_timer / get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH));
    grabbed_player_id = hit_player_obj.id;
}
if (attack == AT_FSPECIAL && (window == 1 || window == 2) && my_hitboxID.attack == AT_DSPECIAL) {
    window = 5;
    window_timer = 0;
    sound_play(asset_get("sfx_absa_harderhit"));
    sound_play(asset_get("sfx_phase_locket"));
    grabbed_player_id = hit_player_obj.id;
}

if (my_hitboxID.attack == AT_FAIR && window <= 3) {
    hit_player_obj.old_hsp = hsp;
    hit_player_obj.old_vsp = vsp;
}

if (attack == AT_EXTRA_1 && window == 2) {
    grabbed_player_id = hit_player_obj.id;
    window = 3;
    window_timer = 0;
}

if (attack == AT_USTRONG && free && (window == 3 || window == 4)) {
    airpin = true;
    grabbed_player_id = hit_player_obj.id;
    hit_player_obj.orig_knock = 8;
}