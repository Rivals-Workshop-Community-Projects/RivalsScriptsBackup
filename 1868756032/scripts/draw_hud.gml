// draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
// draw_debug_text(temp_x+144,temp_y-32,"State timer: " + string(state_timer))
// draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer))
// draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
// draw_debug_text(temp_x+192,temp_y-48,"Free: " + string(free))
// draw_debug_text(temp_x+80,temp_y-64,"VSP: " + string(vsp))
// draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp))


if current_ability != 0 {
	if 16 > current_ability {
		draw_sprite_ext(sprite_get("ability_huds"),current_ability-1,temp_x+188,temp_y-16,1,1,0,c_white,1)
	}
	else {
		if current_ability == 16 and newicon != 0 {
		draw_sprite_ext(newicon,0,temp_x+188,temp_y-16,1,1,0,c_white,1)
		}
		else {
		draw_sprite_ext(sprite_get("ability_huds"),15,temp_x+188,temp_y-16,1,1,0,c_white,1)
		}
	}
}