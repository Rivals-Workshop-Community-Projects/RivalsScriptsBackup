//go and declare debug variable in init
if debug == 1 {
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x + 150, temp_y-64,"    Free: " + string(free))
draw_debug_text(temp_x, temp_y-80,"    Image Angle: " + string(spr_angle))
draw_debug_text(temp_x, temp_y-96,"    Wings Out: " + string(wings_out))
//draw_debug_text(temp_x, temp_y-110,"    Right Stick Dir: " + string(right_stick))
//further y positions should go up in multiples of 16 from 64
}

//Munophone
user_event(11);