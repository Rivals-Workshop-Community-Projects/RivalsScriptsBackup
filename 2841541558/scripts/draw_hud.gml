//draw_hud.gml

/*
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"    Free: " + string(free))
//further y positions should go up in multiples of 16 from 64
*/

draw_sprite_ext(sprite_get("hud_charge"),nspec_charge,temp_x+160,temp_y-30,1,1,0,-1,1);
