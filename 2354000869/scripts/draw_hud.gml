if debug == 1 {
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp) + "    Free: " + string(free))
draw_debug_text(temp_x,temp_y-80,"is gravity cancel: " + string(is_gravity_cancel))
draw_debug_text(temp_x,temp_y-96,"nextmove: " + string(nextmove) + "  Gatling " + string(gatling) )
}

iconspeed += 0.05
if myscarecrow and has_airdodge draw_sprite(sprite_get("incredible_dodge_icon"),iconspeed,temp_x+194,temp_y+28)