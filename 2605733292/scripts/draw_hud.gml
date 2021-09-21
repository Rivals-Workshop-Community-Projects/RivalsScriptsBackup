//draw_hud.gml

//go and declare debug variable in init
if debug == 1 {
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x + 150, temp_y-64,"    Free: " + string(free))
//further y positions should go up in multiples of 16 from 64
}

//draw_debug_text( temp_x, temp_y + 20, string(x))

if (burst_bubble_is_charged == true){
	draw_sprite(sprite_get("nspecial_bubble_hud"), burst_bubble_hud_thing_timer_actual_tick, temp_x + 62, temp_y + 30);
}

shader_end();

if (move_cooldown[AT_DSPECIAL] != 0){
	draw_sprite(sprite_get("essence_hud_icon_cooldown"), 0, temp_x - 4, temp_y - 34);
} else {
	draw_sprite(sprite_get("essence_hud_icon"), 0, temp_x - 4, temp_y - 34);
}

//MunoPhone Touch
muno_event_type = 5;
user_event(14);