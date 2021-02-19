//debug-draw
if(debug){
    //debug = false;
    draw_debug_text(x, y + 5, "JOYPAD DIRECTION: " + string(joy_dir));
    draw_debug_text(x, y + 20, "WINDOW: " + string(window));
    draw_debug_text(x + 100, y + 20, "WINDOW_TIMER: " + string(window_timer));
    draw_debug_text(x, y + 35, "STATE: " + get_state_name(state));
    draw_debug_text(x + 175, y + 35, "FREE: " + string(free));
    draw_debug_text(x, y + 50, "hsp: " + string(hsp));
    draw_debug_text(x + 100, y + 50, "vsp: " + string(vsp));
    draw_debug_text(x, y + 65, "hitstop: " + string(hitstop));
    draw_debug_text(x + 100, y + 65, "hitstop full: " + string(hitstop_full));
}