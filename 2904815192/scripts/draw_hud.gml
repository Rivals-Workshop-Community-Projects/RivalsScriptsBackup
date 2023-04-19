//draw_hud.gml

var hudMoneyX = -8;
var hudMoneyY = -56;
draw_sprite_ext( sprite_get("hud_money_icon"), image_index, temp_x+hudMoneyX, temp_y+hudMoneyY, 1, 1, 0, c_white, 1 );
draw_sprite_ext( sprite_get("hud_money_icon_redraw"), image_index, temp_x+hudMoneyX, temp_y+hudMoneyY, 1, 1, 0, hud_color, 1 );
draw_debug_text(temp_x-8, temp_y-4,"Cash: " + string(currCash))

if (get_match_setting(SET_PRACTICE)){
	draw_debug_text(temp_x+80,temp_y-32," Hold Up + Taunt to")
	draw_debug_text(temp_x+80,temp_y-16,"   get free cash.")
}
/*
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"Free: " + string(free))
draw_debug_text(temp_x, temp_y-96,"Properties Exist: " + string(property1Exists) + " " + string(property2Exists) + " " + string(property3Exists))
draw_debug_text(temp_x, temp_y-112,"Properties Touching: " + string(touchingProperty1) + " " + string(touchingProperty2) + " " + string(touchingProperty3));
draw_debug_text(temp_x, temp_y-128,"Doubles Count: " + string(doublesCount) + ", Doubles Timer: " + string(doublesBoostTimer));
//further y positions should go up in multiples of 16 from 64
*/