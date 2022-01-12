if("armorpoints" in self){
    shader_start();
    draw_sprite_ext(sprite_get("armorHUD"), armorpoints > 0 ? 1 : 0, temp_x+195, temp_y-5, 1, 1, 0, c_white, 1);
    
    draw_sprite_ext(sprite_get("armorHUD"), armorpoints > 1 ? 1 : 0, temp_x+175, temp_y-5, 1, 1, 0, c_white, 1);
    
    draw_sprite_ext(sprite_get("armorHUD"), armorpoints > 2 ? 1 : 0, temp_x+155, temp_y-5, 1, 1, 0, c_white, 1);
    shader_end();
}

// with(obj_article_platform){
//     if(player_id == other){
//         draw_sprite_ext(asset_get("offscreen_cloud_bg_spr"), 6, view_get_xview(), view_get_hview()-95, spr_dir, 1, 0,
//         get_player_hud_color( player ), 1);
//     }
// }

// draw_debug_text( temp_x+60, temp_y-15, "state : " + get_state_name(state));
// draw_debug_text( temp_x+60, temp_y-30, "state timer : " + string(state_timer));
// draw_debug_text( temp_x+60, temp_y-45, "attack : " + string(attack));
// draw_debug_text( temp_x+60, temp_y-60, "window : " + string(window));
// draw_debug_text( temp_x+60, temp_y-75, "window timer : " + string(window_timer));
// draw_debug_text( temp_x- 15, temp_y-15, "hsp: " + string(hsp));
// draw_debug_text( temp_x- 15, temp_y-30, "vsp: " + string(vsp));