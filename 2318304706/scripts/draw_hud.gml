for (i = 0; i < gbeamStoredCharge; i++) {
	draw_sprite(sprite_get("nspecial_charge_star"), 2, temp_x + 194 - (22*i), temp_y - 4); 		
}

if (state == PS_SPAWN) {
	if (usingAltGBeamControl == 0) {
		draw_debug_text(temp_x+4, temp_y-32, "Press TAUNT for alternate");
		draw_debug_text(temp_x+4, temp_y-14, "Geno Beam controls");
	} else {
		draw_debug_text(temp_x+4, temp_y-14, "Using alt controls!");		
	}
}

muno_event_type = 5;
user_event(14);