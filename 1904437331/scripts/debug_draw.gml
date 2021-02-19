/* // Debug Draw
offset = 20;

// Draw Screen
vx = view_get_xview();
vy = view_get_yview() + 10; //view_get_yview() + view_get_hview() - 50;

draw_debug_text(vx + 5, vy, "X, Y: " + string(x) + ", " + string(y));
draw_debug_text(vx + 5, vy + offset,	 "Window: " + string(window));
draw_debug_text(vx + 5, vy + offset * 2, "Window Timer: " + string(window_timer));
draw_debug_text(vx + 5, vy + offset * 3, "Attack: " + string(attack));
draw_debug_text(vx + 5, vy + offset * 4, "State: " + get_state_name(state));
draw_debug_text(vx + 5, vy + offset * 5, "State Timer: " + string(state_timer));
draw_debug_text(vx + 5, vy + offset * 6, "Hard Press Down: " + string(down_hard_pressed));

// Draw Character
draw_debug_text(x + 5, y + offset,	 "Window: " + string(window));
draw_debug_text(x + 5, y + offset * 2, "Window Timer: " + string(window_timer)); */
