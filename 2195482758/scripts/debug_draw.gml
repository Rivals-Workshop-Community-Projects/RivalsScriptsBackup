//debug-draw
debug = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
if(debug){
    //debug = false;
    draw_debug_text(x, y + 5, "JOYPAD DIRECTION: " + string(joy_dir));
    draw_debug_text(x, y + 20, "WINDOW: " + string(window));
    draw_debug_text(x + 100, y + 20, "WINDOW_TIMER: " + string(window_timer));
    draw_debug_text(x, y + 35, "STATE: " + get_state_name(state));
    draw_debug_text(x + 175, y + 35, "GRABBED: " + string(grabbedid));
    draw_debug_text(x, y + 50, "hsp: " + string(hsp));
    draw_debug_text(x + 100, y + 50, "vsp: " + string(vsp));
    draw_debug_text(x, y + 70, "Grabbedproj: " + string(grabbedProj));
    draw_debug_text(x + 150, y + 70, "Last: " + string(last_grabbedid));
}