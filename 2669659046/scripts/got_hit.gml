if (counter_active) {
    counter_active = false;
    orig_knock = 0;
    take_damage(player, hit_player, enemy_hitboxID.damage * -1);
    should_make_shockwave = false;
    counter_stored = true;
    stored_knockback_x = old_hsp;
    stored_knockback_y = old_vsp;
    hitstop_full = 0;
    old_hsp = 0;
    old_vsp = 0;
    window = 3;
    window_timer = 0;
}
