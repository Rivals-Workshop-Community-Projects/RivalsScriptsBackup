// pre-draw

with pHitBox if player_id == other.id && attack == AT_USPECIAL && hbox_num == 1 {
    draw_set_alpha(0.7)
    var col_r = get_color_profile_slot_r( get_player_color(player), 2);
    var col_g = get_color_profile_slot_g( get_player_color(player), 2);
    var col_b = get_color_profile_slot_b( get_player_color(player), 2);
    var col = make_color_rgb(col_r, col_g, col_b);
    var init_angle = darctan2(init_vsp, init_hsp)
    var needle_offset = 64
    draw_line_width_color(x - needle_offset*dcos(init_angle), y - needle_offset*dsin(init_angle), other.x + 15*spr_dir, other.y - 20, 2, col, col)
    draw_set_alpha(1)
}