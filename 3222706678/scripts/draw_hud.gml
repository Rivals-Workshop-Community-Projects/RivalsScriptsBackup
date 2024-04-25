//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;

shader_start();

draw_sprite(sprite_get("hudbucket"), oilfill, temp_x + 156, temp_y-14);

if (has_rune("O")) {
    draw_sprite(sprite_get("hudbell"), bellcooldown, temp_x + 146, temp_y-14);
}

shader_end();

//draw_debug_text( temp_x+186, temp_y-62, string( window ) );
//draw_debug_text( temp_x+186, temp_y-46, string( window_timer ) );
//draw_debug_text( temp_x+186, temp_y-30, string( state ) );
//draw_debug_text( temp_x+186, temp_y-14, string( state_timer ) );

//draw_debug_text( temp_x+164, temp_y-30, string( thisjudge ) );
//draw_debug_text( temp_x+164, temp_y-14, string( nextjudge ) );

if (state != 25 || state == 25 && state_timer != 0) {
if (abyssmode == 1) {
    draw_sprite_ext(sprite_get("abyssbar"), 1, temp_x+28, temp_y+4, 1, 1, 0, c_white, 1);
}
}