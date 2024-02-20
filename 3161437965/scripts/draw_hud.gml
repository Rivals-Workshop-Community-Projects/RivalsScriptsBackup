//draw_hud.gml

if ("char_height" not in self) exit;

draw_debug_text(temp_x, temp_y - 8, "SAVED: " + string(has_saved_state ? attack_names[saved_state.attack] : "NONE"))