if enemy_hitboxID.player_id == self && enemy_hitboxID.player == 0 && "is_what" in enemy_hitboxID {
    state = can_fast_bump || has_rune("G") ? PS_IDLE_AIR : PS_PRATFALL;
    should_make_shockwave = false;
    has_walljump = true;
    can_wall_jump = true;
} else {
    if (enemy_hitboxID.damage > 10 || item_held == "squeaky_hammer") && item_held != "subspace_bomb" item_held = "none";
    can_fast_bump = true;
}