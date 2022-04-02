//#region exclusive to mario
if ("am_mario_health" in hit_player_obj) {
    hit_player_obj.mask_index = hit_player_obj.am_mario_mask_prev;
    hit_player_obj.am_mario_state = 0;
    hit_player_obj.am_mario_state_timer = 0;
    hit_player_obj.am_mario_health = 1;
}
//#endregion
hit_player_obj.actually_dead = true;