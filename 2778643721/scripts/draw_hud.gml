// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);

var apple_charges;
var apple_color = c_gray;
if (instance_exists(apple)){
    apple_charges = apple.charges;
    apple_color = c_white;
} else {
    apple_charges = 0;
    apple_color = c_gray;
}
draw_sprite_ext(sprite_get("apple_hud"), apple_charges, temp_x + 10, temp_y - 14, 1, 1, 0, apple_color, 1);

var portal_color = c_white;
if (move_cooldown[AT_USPECIAL] > 0 && attack != AT_USPECIAL){
    portal_color = c_gray;
} else {
    portal_color = c_white;
}
draw_sprite_ext(sprite_get("portal_hud"), 0, temp_x + 40, temp_y - 14, 1, 1, 0, portal_color, 1);

//draw_debug_text(temp_x+20, temp_y-100, string(ustrong_proj_angle));

/*if (instance_exists(apple3)){draw_debug_text(temp_x+20, temp_y-100, string("level = ") + string(apple3.level) + string(", charges = ") + string(apple.charges));}*/
/*if (instance_exists(portal1) && instance_exists(portal1)){
draw_debug_text(temp_x+20, temp_y-80, string("portal 1 state_timer =") + string(portal1.state_timer));
draw_debug_text(temp_x+20, temp_y-100, string("portal 1 state =") + string(portal1.state));
draw_debug_text(temp_x+200, temp_y-80, string("portal_cooldown = ") + string(portal1.portal_cooldown));
}

if (instance_exists(portal2) && instance_exists(portal2)){
draw_debug_text(temp_x+20, temp_y-20, string("portal 2 state_timer =") + string(portal2.state_timer));
draw_debug_text(temp_x+20, temp_y-40, string("portal 2 state =") + string(portal2.state));
}*/



/*draw_debug_text(temp_x+160, temp_y-40, string("vsp = ") + string(vsp));
draw_debug_text(temp_x+160, temp_y-60, string("hsp = ") + string(hsp));*/
//draw_debug_text(temp_x+260, temp_y-20, string("portals active = ") + string(portals_active));

//draw_debug_text(temp_x+160, temp_y-60, string(state_timer));