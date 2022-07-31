//go and declare debug variable in init
/*
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"    Free: " + string(free))
//further y positions should go up in multiples of 16 from 64
*/

if (move_cooldown[AT_DSPECIAL] == 0
	|| move_cooldown[AT_DSPECIAL] == 4
	|| move_cooldown[AT_DSPECIAL] == 8
	|| move_cooldown[AT_DSPECIAL] == 12
	|| move_cooldown[AT_DSPECIAL] == 16
	|| move_cooldown[AT_DSPECIAL] == 20){
	var superVacHudFrame = 0;
} else {
	var superVacHudFrame = 1;
}

draw_sprite(sprite_get("super_vac_hud_icon"), superVacHudFrame, temp_x + 10, temp_y);