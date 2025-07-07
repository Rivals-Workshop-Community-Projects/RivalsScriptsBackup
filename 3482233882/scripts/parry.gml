blocktimer = 100;

if (fshield_damage != 0) {
    var _y = y-10;
    spawn_hit_fx(x, _y, HFX_ZET_SHINE_BIG_FG);
    with oPlayer {
        var can_hit = get_match_setting(SET_TEAMATTACK) ? self != other : get_player_team(player) != get_player_team(other.player);
        if (can_hit && collision_circle(other.x, _y, 100, hurtboxID, true, false)) {
            burned = true;
            burnt_id = other;
            burn_timer = 150 - 30*other.fshield_damage;
            burned_color = 0;
            init_shader();
            sound_play(asset_get("sfx_burnapplied"));
        }
    }
}