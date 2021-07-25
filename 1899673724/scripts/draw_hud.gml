if move_cooldown[AT_NSPECIAL] > 0 {
	draw_sprite(sprite_get("reticle_cooldown"), floor(1), temp_x + 26, temp_y - 2);
} else {
	draw_sprite(sprite_get("reticle"), floor(1), temp_x + 26, temp_y - 2);
}

if (state == PS_SPAWN && state_timer <= 100){
    draw_debug_text( temp_x + 50, temp_y - 20, string( "Taunt: Voiced" ));
}

//go and declare debug variable in init
if debug == 1 {
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x + 150, temp_y-64,"    Free: " + string(free))
//further y positions should go up in multiples of 16 from 64
}