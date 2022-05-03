//draw_hud.gml
if (is_master_player) {
// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

if (c_naruto_dspecial_cooldown_time > 0) {
    switch (get_player_color(player)) {
        
        case 0:
        case 11:
        case 21:
            draw_sprite_ext(sprite_get("clonehudfix"), 0, temp_x + 174, temp_y - 26, 2, 2, 0, 
            (move_cooldown[AT_DSPECIAL] > 0 || naruto_currently_has_dspecial_clone_active) ? c_dkgray : c_white, 1);
        break;
        
        default:
            shader_start();
            draw_sprite_ext(sprite_get("clonehud"), 0, temp_x + 174, temp_y - 26, 2, 2, 0, 
            (move_cooldown[AT_DSPECIAL] > 0 || naruto_currently_has_dspecial_clone_active) ? c_dkgray : c_white, 1);
            shader_end();
        break;
    }
    
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);
}