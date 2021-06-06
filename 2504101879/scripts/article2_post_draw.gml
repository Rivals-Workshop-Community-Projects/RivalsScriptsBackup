//baby postdraw
if (player_id.debugtime) {
    //draw_debug_text(x, y-112, "state: " + string(state));
    //draw_debug_text(x, y-96, "follow: " + string(babyfollowing));
    draw_debug_text(x, floor(y-80), "sbc: " + string(storedbabycount));
    draw_debug_text(x, floor(y-64), string(babyid));
    draw_debug_text(x, floor(y-48), string(latchedid));
    draw_debug_text(x, floor(y-32), string(babyhealth));
}