switch(state) { // use this one for changing sprites and animating
    case 00: // Request arrow (awaiting shipment)
        draw_sprite_ext(sprite_get("dspecial_arrows"), (state_timer < 4) ? state_timer / 2 : 2, x, view_get_yview()+10+(2*sin(state_timer/5/pi)), 1, 1, 0, get_player_hud_color(player), 1);
        break;
    case 01: // Request arrow (small)
        draw_sprite_ext(sprite_get("dspecial_arrows"), (state_timer < 3) ? 3 + state_timer : 6, x, view_get_yview()+10+(4*sin(state_timer/5/pi)), 1, 1, 0, get_player_hud_color(player), 1);
        break;
    case 02: // Request arrow (large)
        draw_sprite_ext(sprite_get("dspecial_arrows"), (state_timer < 2) ? 7 : 8, x, view_get_yview()+10+(6*sin(state_timer/5/pi)), 1, 1, 0, get_player_hud_color(player), 1);
        break;
    
    // Small chest
    case 10: // Init
        
        break;
    case 11: // Fall
        
        break;
    case 12: // Idle
    case 13: // Opening
        if (show_hud) draw_sprite_ext(sprite_get("hud_arrow"), 0, x, y-48, 1, 1, 0, get_player_hud_color(player), 1);
        draw_sprite_ext(sprite_get("dspec_smallchest_outline"), 0, x, y, 1, 1, 0, c_white, outline_alpha);
        break;
    case 14: // Despawning
        break;
      
    // Large chest
    case 20: // Init
        break;
    case 21: // Fall
        break;
    case 22: // Idle
    case 23: // Opening
        if (show_hud) draw_sprite_ext(sprite_get("hud_arrow"), 0, x, y-64, 1, 1, 0, get_player_hud_color(player), 1);
        draw_sprite_ext(sprite_get("dspec_largechest_outline"), 0, x, y, 1, 1, 0, c_white, outline_alpha);
        break;
    case 24: // Despawning
        
        break;
    
    // Trishop
    case 30: // Init
    case 31: // Fall
    break;
    case 32: // Idle
        // Selector moved into pre_draw for draw-order reasons
    case 33: // Opening
        if (show_hud) draw_sprite_ext(sprite_get("hud_arrow"), 0, x, y-90, 1, 1, 0, get_player_hud_color(player), 1);
        draw_sprite_ext(sprite_get("dspec_trishop_outline"), 0, x, y, spr_dir, 1, 0, c_white, outline_alpha);
        break;
    case 34: // Despawning
        break;
}

// Off-screen handling
var drawing_offscreen = true;
var h_offscreen = (x > view_get_xview()+view_get_wview()-10) - (x < view_get_xview()+10); // -1 left, 1 right
var v_offscreen = (y > view_get_yview()+view_get_hview()) - (y < view_get_yview()); // -1 up, 1 down
// temp_index, from top-left, clockwise: 1 3 5 7

if (h_offscreen != 0 && (v_offscreen != 0 || state < 10)) { // corners
    if (state < 10) v_offscreen = -1; // y-position is inaccurate while awaiting drop
    var temp_x = view_get_xview() + (h_offscreen == -1 ? 34 : view_get_wview()-34);
    var temp_y = view_get_yview() + (v_offscreen == -1 ? 34 : view_get_hview()-34);
    var temp_index = (v_offscreen == -1 ? 2 : 6) - (h_offscreen * v_offscreen);
}
else if (h_offscreen != 0) { // sides
    var temp_x = view_get_xview() + (h_offscreen == -1 ? 34 : view_get_wview()-34);
    var temp_y = y;
    var temp_index = (h_offscreen == -1 ? 0 : 4);
}
else if (v_offscreen != 0) { // top/bottom
    var temp_x = x;
    var temp_y = view_get_yview() + (v_offscreen == -1 ? 34 : view_get_hview()-34);
    var temp_index = (v_offscreen == -1 ? 2 : 6);
}
else drawing_offscreen = false;

if (drawing_offscreen) {
    draw_sprite_ext(asset_get("offscreen_bg_spr"), temp_index, temp_x, temp_y, 1, 1, 0, get_player_hud_color(player), 1);
    draw_sprite(sprite_get("hud_chest"), 0, temp_x-16, temp_y-18);
}