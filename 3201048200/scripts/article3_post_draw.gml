
switch state {
 
    // Parachute
    case 00:
        if (!"vis_angle" in self) exit;
        if (is_default) draw_sprite_ext(sprite_get("parachute"), vis_frame, x, y, 1, 1, vis_angle, c_white, vis_alpha);
        else if (is_ea) draw_sprite_ext(sprite_get("parachute_ea"), vis_frame, x, y, 1, 1, vis_angle, c_white, vis_alpha);
        else {
            with (player_id) shader_start();
            draw_sprite_ext(sprite_get("parachute_col"), vis_frame, x, y, 1, 1, vis_angle, c_white, vis_alpha);
            shader_end();
        }
        
        break;
    
    case 01:
        if (is_ea) draw_sprite_ext(sprite_get("plat_fly_ea"), 0, x, y, spr_dir, 1, 0, c_white, vis_alpha);
        else {
            with (player_id) shader_start();
            draw_sprite_ext(sprite_get("plat_fly"), 0, x, y, spr_dir, 1, 0, c_white, vis_alpha);
            shader_end();
        }
        break;
    
    case 02:
        if (is_ea) draw_sprite_ext(sprite_get(is_primed ? "drone_primed_ea" : "drone_ea"), vis_frame, x, y, spr_dir, 1, 0, c_white, vis_alpha);
        else {
            with (player_id) shader_start();
            draw_sprite_ext(sprite_get(is_primed ? "drone_primed" : "drone"), vis_frame, x, y, 1, 1, 0, c_white, vis_alpha);
            shader_end();
        }
        break;
    
    
    // Rune A manager
    case 10:
        if (player_id.rune_a_alpha < 1) {
            with (player_id) shader_start();
            draw_sprite_ext(player_id.sprite_index, player_id.image_index, player_id.x, player_id.y, player_id.spr_dir, 1, 0, c_white, player_id.rune_a_alpha);
            shader_end();
        }
        break;
    
    
    // DSpec parry cooldown
    case 20:
    case 21:
    case 22:
        draw_sprite_ext(asset_get("triangle_spr"), 0, x+1*spr_dir, y-90, 1, 1, 0, get_player_hud_color(player), 1);
        draw_sprite_ext(sprite_get(is_ea ? "dspec_warn_ea" : "dspec_warn"), vis_frame, x, y-46-vis_y_offset, 1, 1, 0, c_white, 1);
        break;
    
    //#endregion
    
}