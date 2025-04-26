//if (bboost_counter > 0) {
//    draw_debug_text( x, y, string(bboost_counter) )
//}
//draw_debug_text( x, y+32, string(state) )
//

//draw_debug_text( x, y, string(strong_charge) )

//draw_debug_text( x, y, string(fsp_air_track) )
//draw_debug_text( x, y+32, string(dsp_air_track) )
//draw_debug_text( x, y, string(window_timer) )
//draw_debug_text( x, y, string(state_timer) )
//draw_debug_text( x, y+32, string(dsp_dir) )
//draw_debug_text( x, y+32, string(parry_lag) )



//#region Training mode collision visual
if (get_match_setting(SET_HITBOX_VIS)) {
    
    with (obj_article1) {
        if (player == other.player) {
            draw_set_alpha(0.5);
            draw_line_color(x-144, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); //leftmost
            draw_line_color(x+104, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); 
            draw_line_color(x+64, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); 
            draw_line_color(x+36, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); 
            draw_line_color(x, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); //mid
            draw_line_color(x-36, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); 
            draw_line_color(x-64, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); 
            draw_line_color(x-104, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); 
            draw_line_color(x+144, y+2, x, y-288, /*#*/$ff00ff, /*#*/$ff00ff); //rightmost
            draw_set_alpha(1);
        }
    }
    
}
//#endregion