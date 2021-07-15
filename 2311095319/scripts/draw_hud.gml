//draw_hud.gml

//go and declare debug variable in init
if ("debug" in self) {
	//draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
	//draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
	//draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
	//draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp) + "    Free: " + string(free))
	//further y positions should go up in multiples of 16 from 64
}

if (hasfirebrand == true){
	draw_sprite(sprite_get("firehud"), floor(1), temp_x + 26, temp_y);
} else if (hasfirebrand == false){
	draw_sprite(sprite_get("fireball"), floor(1), temp_x + 26, temp_y + 999999999999999999999999999999);
}


if (state == PS_SPAWN && state_timer <= 100 && voiced == 0){
	if (get_training_cpu_action() != CPU_FIGHT){//true
		//draw_debug_text( temp_x + 20, temp_y - 40, string( "Voiced Mode can be enabled in the Cheat Codes Menu" ));
		voiced_in_vs = false
    } else if (get_training_cpu_action() == CPU_FIGHT){//false
		draw_debug_text( temp_x + 50, temp_y - 20, string( "Taunt: Voiced" ));
		voiced_in_vs = true
	}
}


user_event(11);