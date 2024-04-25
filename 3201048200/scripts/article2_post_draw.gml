
// Bashed/parried visual
if (state == 6) {
    draw_sprite_ext(sprite_get(is_ea ? "dspec_proj_ea" : "dspec_proj"), 0, x, y, 1, 1, reflect_dir-270, c_white, 1);
}

// Warn
if (vis_warn_phase >= 0) draw_sprite_ext(sprite_get(is_ea ? "dspec_warn_ea" : "dspec_warn"), vis_warn_phase, x, y-46-vis_warn_y_offset, spr_dir, 1, 0, c_white, 1);

// Arrow indicator
if (0 < state && state <= 3) draw_sprite_ext(asset_get("triangle_spr"), 0, x+1*spr_dir, y-hud_offset, 1, 1, 0, get_player_hud_color(player), 1);



if (get_match_setting(SET_HITBOX_VIS) && state == 2) {
    
    draw_set_alpha(0.5)
    draw_rectangle_color(x-(trigger_w/2), y, x+(trigger_w/2), y-(trigger_h_hitstun), c_aqua, c_aqua, c_aqua, c_aqua, false);
    draw_rectangle_color(x-(trigger_w/2), y, x+(trigger_w/2), y-(trigger_h), c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, false);
    draw_set_alpha(1);
    
}