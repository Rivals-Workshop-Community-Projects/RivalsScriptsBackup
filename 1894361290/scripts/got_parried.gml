//got_parried
if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 && !has_rune("K"){
    with my_hitboxID {
        var parry_tracking = point_direction(wt.x, wt.y, player_id.x, player_id.y - player_id.char_height/2);
        var parry_dist = point_distance(wt.x, wt.y, player_id.x, player_id.y)
        wt.vsp = lengthdir_y(parry_dist/12, parry_tracking)
        wt.hsp = lengthdir_x(parry_dist/10, parry_tracking)
        wt.hsp = clamp(wt.hsp, -20, 20);
            if (wt.disabled_timer == 0) {
                wt.disabled_timer = 120;
                sound_play(sound_get("pshh"));
            }
    }
}