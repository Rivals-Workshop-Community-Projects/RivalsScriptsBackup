// pre-draw

if(state == PS_RESPAWN){
    draw_sprite_ext(sprite_get("plat2"), 0, x, y, 1, 1, 0, c_white, 1);
}

/*
draw_debug_text( x-50, y-240, "window timer: " + string( window_timer ));
draw_debug_text( x-50, y-220, "window: " + string( window ));
draw_debug_text( x-50, y-200, "ball speed: " + string( ballspeed ));
draw_debug_text( x-50, y-180, "joy_dir: " + string( joy_dir ));
*/

if (move_cooldown[AT_NSPECIAL] > 1 && move_cooldown[AT_NSPECIAL] < 300 && white_flash_timer == 0){
draw_debug_text( x-8, y+15, string( move_cooldown[AT_NSPECIAL] ));
}
//draw_debug_text( x-50, y-160, "state timer: " + string( state_timer ));
//draw_debug_text( x-50, y-140, "state: " + get_state_name( state ));