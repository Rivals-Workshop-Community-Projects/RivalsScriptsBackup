

if (get_match_setting(SET_HITBOX_VIS) && state == 1 && is_primed) {
    
    draw_set_alpha(0.5)
    draw_rectangle_color(x-(trigger_w/2), y, x+(trigger_w/2), y-(trigger_h), c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, false);
    draw_set_alpha(1);
    
}

// Warn (primed)
if (vis_warn_phase >= 0) draw_sprite_ext(sprite_get(is_ea ? "dspec_warn_ea" : "dspec_warn"), vis_warn_phase, x-1*spr_dir, y-46-vis_warn_y_offset, spr_dir, 1, 0, c_white, 1);



// Arrow indicator
if (state == 1 || state >= 6) draw_sprite_ext(asset_get("triangle_spr"), 0, x, y-hud_offset, 1, 1, 0, get_player_hud_color(player), 1);


// Rune N: blur
if (state == 7) {
    if (90 < rune_recall_angle && rune_recall_angle < 270) draw_sprite_ext(sprite_get(is_ea ? "drone_blur_ea" : "drone_blur"), 0, x, y, -1, 1, rune_recall_angle-180, c_white, 1);
    else draw_sprite_ext(sprite_get(is_ea ? "drone_blur_ea" : "drone_blur"), 0, x, y, 1, 1, rune_recall_angle, c_white, 1);
}


if (player_id.object_index == oTestPlayer) exit;

// Off-screen handling

var drawing_offscreen = true;

var h_offscreen = (x > view_get_xview()+view_get_wview()) - (x < view_get_xview()); // -1 left, 1 right
var v_offscreen = (y > view_get_yview()+view_get_hview()) - (y < view_get_yview()); // -1 up, 1 down

// corners
if (h_offscreen != 0 && v_offscreen != 0) {
    
    var temp_x = view_get_xview() + (h_offscreen == -1 ? 34 : view_get_wview()-34);
    var temp_y = view_get_yview() + (v_offscreen == -1 ? 34 : view_get_hview()-34);
    
    // Starting from top-left, clockwise: 1 3 5 7
    var temp_index = (v_offscreen == -1 ? 2 : 6) - (h_offscreen * v_offscreen);
    
}

// sides
else if (h_offscreen != 0) {
    
    var temp_x = view_get_xview() + (h_offscreen == -1 ? 34 : view_get_wview()-34);
    var temp_y = y;
    
    var temp_index = (h_offscreen == -1 ? 0 : 4);
    
}

// top/bottom
else if (v_offscreen != 0) {
    
    var temp_x = x;
    var temp_y = view_get_yview() + (v_offscreen == -1 ? 34 : view_get_hview()-34);
    
    var temp_index = (v_offscreen == -1 ? 2 : 6);
    
}

else drawing_offscreen = false;



if (drawing_offscreen) {
    draw_sprite_ext(asset_get("offscreen_bg_spr"), temp_index, temp_x, temp_y, 1, 1, 0, get_player_hud_color(player), 1);
    draw_sprite(sprite_get("hud_drone"), 0, temp_x-16, temp_y-10);
}


