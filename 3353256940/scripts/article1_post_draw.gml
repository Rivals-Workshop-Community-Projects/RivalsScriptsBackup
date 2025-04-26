
if (player_id.debug) {
    //draw_debug_text( x, y, string(pipe_id) )
    draw_debug_text( x, y-16, string(warpcoord_x) + ", " + string(warpcoord_y) )
    draw_debug_text( x, y, string(warp_usages) )
}

if (get_match_setting(SET_HITBOX_VIS) && state == 1) {
    draw_sprite_ext(collision_mask_index, 0, x, y, spr_dir, 1, 0, c_white, 0.5);
    draw_sprite_ext(warp_mask_index, 0, x, y, spr_dir, 1, 0, c_white, 0.5);
}