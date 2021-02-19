//draw_hud.gml
var temp_color = c_white;

// Draws the NEXT PILL INDICATOR

if state != PS_SPAWN {
	if (move_cooldown[AT_NSPECIAL] ==0) {
	draw_sprite(sprite_get("next"), order[pill], temp_x +108 , temp_y - 14);
	} else{
		draw_sprite(sprite_get("next"), 0,  temp_x +108 , temp_y - 14);
	}
}

user_event(11); 