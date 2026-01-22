// draw_hud.gml

//debug stats for... well, debuging. 

/*
if (get_match_setting(SET_PRACTICE)){

//draw_debug_text(temp_x,temp_y+16,"(this is for the beta, training mode only)")
//draw_debug_text(temp_x,temp_y,"these numbers are for debugging.")
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"Free: " + string(free) + "    spr_dir: " + string(spr_dir))
draw_debug_text(temp_x, temp_y-96,"Carrying Shell: " + string(carryingShell))
if (instance_exists(currKoopaShell)){
	draw_debug_text(temp_x, temp_y-96-16,"Shell Instance: " + string(currKoopaShell))
}
//further y positions should go up in multiples of 16 from 64

}
*/

if (instance_exists(currKoopaShell)){
	var shellHudFrame = 0;
} else if (!instance_exists(currKoopaShell) && (
	move_cooldown[AT_NSPECIAL] == 3
	|| move_cooldown[AT_NSPECIAL] == 4
	|| move_cooldown[AT_NSPECIAL] == 7
	|| move_cooldown[AT_NSPECIAL] == 8
	|| move_cooldown[AT_NSPECIAL] == 11
	|| move_cooldown[AT_NSPECIAL] == 12
	|| move_cooldown[AT_NSPECIAL] == 15
	|| move_cooldown[AT_NSPECIAL] == 16
	|| move_cooldown[AT_NSPECIAL] == 19
	|| move_cooldown[AT_NSPECIAL] == 20
	|| move_cooldown[AT_NSPECIAL] >= 24)){
	var shellHudFrame = 1;
}
shader_start();

if (ea_alt){
	var shellHudSpr = sprite_get("shell_hud_ea");
} else if (gold_alt){
	var shellHudSpr = sprite_get("shell_hud_gold");
} else {
	var shellHudSpr = sprite_get("shell_hud");
}

draw_sprite(shellHudSpr, shellHudFrame, temp_x + 10, temp_y);
shader_end();