
if(get_gameplay_time() <= 120){
    if (voice_on) {
        draw_debug_text(temp_x, temp_y - 40, "Press Taunt to disable voice");
        draw_debug_text(temp_x, temp_y - 20, "(but why would you)");
    }
    else {
        draw_debug_text(temp_x, temp_y - 20, "Lame");
    }
}