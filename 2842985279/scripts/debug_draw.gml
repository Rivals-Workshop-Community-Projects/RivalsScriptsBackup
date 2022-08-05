
exit;
draw_debug_text(x+12, y+12, string(hsp));

draw_debug_text(x+12, y+22, get_state_name( state ));


//lev debug
draw_debug_text(x+12, y+12, string(lev_state) + " t:" + string(lev_state_timer) + " vsp:" + string(vsp));
draw_line_color(x-5, y+uno_lev_offset+uno_lev_height_min, x+5, y+uno_lev_offset+uno_lev_height_min, c_white, c_white);
draw_line_color(x-5, y+uno_lev_offset+uno_lev_height_mid, x+5, y+uno_lev_offset+uno_lev_height_mid, c_white, c_white);
draw_line_color(x-5, y+uno_lev_offset+uno_lev_height_max, x+5, y+uno_lev_offset+uno_lev_height_max, c_white, c_white);
