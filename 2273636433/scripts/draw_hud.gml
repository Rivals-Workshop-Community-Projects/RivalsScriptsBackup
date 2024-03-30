//draw_hud.gml
var temp_color = c_white;

// Draws the NEXT PILL INDICATOR

if state != PS_SPAWN {
	draw_sprite(sprite_get("next"), 1, temp_x +106 , temp_y - 14);
	if (move_cooldown[AT_NSPECIAL] >0) || koffing_gas_active {
		draw_sprite(sprite_get("nspecial_proj"+ string(pill_skin)), 0, temp_x +197 , temp_y - 7);
	} else{
		draw_sprite(sprite_get("nspecial_proj"+ string(pill_skin)), order[pill], temp_x +197 , temp_y - 7);
	}


}

//user_event(11); 