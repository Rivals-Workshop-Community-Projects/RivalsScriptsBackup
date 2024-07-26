//draw_hud.gml
if(TCG_Kirby_Copy != -1){
draw_sprite_ext(sprite_get("hud_abilities"), TCG_Kirby_Copy, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
} else {
draw_sprite_ext(sprite_get("hud_abilities"), 16, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
}
draw_sprite_ext(sprite_get("hud_abilities_overlay"), 0, temp_x - 4, temp_y - 40, 2, 2, 0,get_player_hud_color(player), 1);

if (TCG_Kirby_Copy == 11){
	if (mike_level == 1){
		draw_debug_text(temp_x+4,temp_y-32,"3")
	} else if (mike_level == 2){
		draw_debug_text(temp_x+4,temp_y-32,"2")
	} else if (mike_level == 3){
		draw_debug_text(temp_x+4,temp_y-32,"1")
	}
}

if (get_match_setting(SET_PRACTICE)){
	draw_debug_text(temp_x+70,temp_y-32," Hold Up + Taunt to")
	draw_debug_text(temp_x+70,temp_y-16,"select a Copy Ability!")
}

/*
draw_debug_text(temp_x,temp_y,"these numbers are for debugging.")
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"Free: " + string(free) + "    spr_dir: " + string(spr_dir))
*/