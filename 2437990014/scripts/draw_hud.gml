if(debug){
    draw_debug_text(345, 180 - 15, "transition: " + string(transition));
    draw_debug_text(345, 180, "stocks: " + string(stocks));
    draw_debug_text(345, 180 + 15, "time remaining: " + string(get_game_timer()));
    draw_debug_text(345, 180 + 30, "time passed: " + string(get_gameplay_time()));
    draw_debug_text(345, 180 + 45, "transition time: " + string(trans_time));
    draw_debug_text(345, 180 + 60, "camera x: " + string(view_get_xview()));
    draw_debug_text(345, 180 + 75, "camera y: " + string(view_get_yview()));
}
