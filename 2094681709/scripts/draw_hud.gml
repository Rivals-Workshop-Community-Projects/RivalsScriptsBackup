if debug_toggle = 1 {
draw_debug_text(temp_x, temp_y - 58, get_state_name(state));
draw_debug_text(temp_x, temp_y - 38, "TD: " + string(their_dmg));
draw_debug_text(temp_x, temp_y - 19, "LN: " + string(debug_last_knock));

draw_debug_text(temp_x + 170, temp_y - 19, "T: " + string(window_timer));
draw_debug_text(temp_x + 170, temp_y - 38, "W: " + string(window));
}


