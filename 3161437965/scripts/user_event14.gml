//the real draw_hud.gml
//this makes it so it runs with childe and other stages that have a custom hud

draw_debug_text(temp_x, temp_y - 8, "SAVED: " + string(has_saved_state ? attack_names[saved_state.attack] : "NONE"))