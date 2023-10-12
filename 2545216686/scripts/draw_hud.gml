//draw_hud.gml

//go and declare debug variable in init

/*
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp) + "    Free: " + string(free))
//further y positions should go up in multiples of 16 from 64
*/

shader_start();
if (move_cooldown[AT_DSPECIAL] != 0){
	draw_sprite(sprite_get("robot_hudicon_cooldown"), 0, temp_x - 4, temp_y - 34);
} else {
	if (defaultcolor == true){
		draw_sprite(sprite_get("robot_hudicon_default"), 0, temp_x - 4, temp_y - 34);
	} else {
		draw_sprite(sprite_get("robot_hudicon"), 0, temp_x - 4, temp_y - 34);
	}
}
shader_end();