// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
if (enable_munophone) {
	muno_event_type = 5;
	user_event(14);
}


// Start of Retroblast-specific code

shader_start();
// Meter
draw_sprite_ext(meter_sprite, 0,
				temp_x + 7, temp_y + 3, 1, 1,
				0, c_white, 1);
fill_fraction = rocket_fuel / max_rocket_fuel;
draw_sprite_ext(meter_fill_sprite, 0,
				temp_x + 9, temp_y + 1, fill_fraction, 1,
				0, c_white, 1);

// Draw the marker on the meter
draw_sprite_ext(charge_indicator_sprite, 0,
				temp_x + indicator_offset, temp_y + 1, 1, 1,
				0, c_white, 1);

// Draw the indicator light
draw_sprite_ext(charge_button_sprite, rocket_fuel >= booster_rush_cost ? 1 : 0,
				temp_x + indicator_offset, temp_y - 9, 1, 1,
				0, c_white, 1);

/*
// Center pip
draw_sprite_ext(charge_button_sprite, rocket_fuel >= booster_rush_cost ? 1 : 0,
				temp_x + 104, temp_y - 9, 1, 1,
				0, c_white, 1);
			
// Rightmost pip
draw_sprite_ext(charge_button_sprite, rocket_fuel == max_rocket_fuel ? 1 : 0,
				temp_x + 198, temp_y - 9, 1, 1,
				0, c_white, 1);
*/
shader_end();