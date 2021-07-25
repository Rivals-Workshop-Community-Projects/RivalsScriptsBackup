//Blank
if move_cooldown[AT_DSPECIAL] {
draw_sprite( sprite_get("grillcd"), 1, temp_x+192, temp_y+8)
}
else {
draw_sprite( sprite_get("grillcd"), 0, temp_x+192, temp_y+8)
}

if debug {
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp) + "    Free: " + string(free))
draw_debug_text(temp_x,temp_y-80,"Nspecial Charge: " + string(nspec_charge) + "    Boarded: " + string(boarded))
}
