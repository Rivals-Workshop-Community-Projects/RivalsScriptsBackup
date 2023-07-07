//go and declare debug variable in init
if("inputs_swapped_toggle" not in self) exit;
/*
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x + 150, temp_y-64,"    Free: " + string(free))
draw_debug_text(temp_x, temp_y-80,"Image Angle: " + string(spr_angle))
draw_debug_text(temp_x, temp_y-96,"Wings Out: " + string(wings_out))
draw_debug_text(temp_x, temp_y-112,"Attacking out of Uspecial: " + string(attacking_out_of_shuttle_loop))
//draw_debug_text(temp_x, temp_y-110,"    Right Stick Dir: " + string(right_stick))
//further y positions should go up in multiples of 16 from 64
*/
//Voiced Mode
if (state == PS_SPAWN && state_timer <= 100){
	if(get_player_color(player) == 15){
		draw_debug_text( temp_x + 2, temp_y - 20, string( "Hold Taunt to add back shading." ));
	}
	if (!inputs_swapped_toggle){
	draw_debug_text( temp_x + 8, temp_y - 60, string( "Input Strong to swap Jab
	     and Ftilt inputs." ));
	} else if (inputs_swapped_toggle){
	draw_debug_text( temp_x + 42, temp_y - 60, string( " Jab and Ftilt
	inputs swapped!" ));
	}
}